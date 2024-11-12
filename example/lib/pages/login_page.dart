import 'package:flutter/material.dart';
import 'package:maplibre_example/singletons/auth.dart';
import 'package:maplibre_example/utils/backend.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const location = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();
  final _pswController = TextEditingController();
  final _serverController = TextEditingController();

  bool _isPswVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MapLibre NIO Demo')),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  prefixIcon: const Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid username';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                controller: _pswController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPswVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() => _isPswVisible = !_isPswVisible);
                    },
                  ),
                ),
                obscureText: !_isPswVisible,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid password';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
            ),
            // const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState?.validate() ?? false) {
                  // Check if the server url is empty. If it is, show an error message.
                  if (_serverController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('Please enter a valid server URL'),
                        action: SnackBarAction(
                          label: 'Change',
                          onPressed: () async {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();

                            // ignore: inference_failure_on_function_invocation
                            await showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return ChangeServerDialog(
                                  serverUrlController: _serverController,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    );
                    return;
                  }

                  final username = _usernameController.text;
                  final password = _pswController.text;

                  // Try to authenticate the user.
                  try {
                    final authenticated = await Auth.instance.login(
                      username: username,
                      password: password,
                    );

                    if (authenticated) {
                      // Save the user credentials.
                      Auth.instance.setCredentials(username, password);

                      // Save the server URL.
                      Auth.instance.setServerRoot(_serverController.text);

                      // Navigate to the menu page.
                      await Navigator.of(context).pushNamed('/menu');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.red.shade400,
                          content: const Text(
                            'Invalid credentials',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    }
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red.shade400,
                        content: Text(
                          e.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  }
                }
              },
              child: const Text('Save credentials'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // ignore: inference_failure_on_function_invocation
          await showDialog(
            context: context,
            builder: (BuildContext context) {
              return ChangeServerDialog(
                serverUrlController: _serverController,
              );
            },
          );
        },
        child: const Icon(Icons.storage_rounded),
      ),
    );
  }
}

class ChangeServerDialog extends StatefulWidget {
  ChangeServerDialog({required this.serverUrlController, super.key});

  final TextEditingController serverUrlController;

  @override
  State<ChangeServerDialog> createState() => _ChangeServerDialogState();
}

class _ChangeServerDialogState extends State<ChangeServerDialog> {
  final _formKey = GlobalKey<FormState>();
  final urlController = TextEditingController();

  String? _errorFetchingServer;

  @override
  void initState() {
    urlController.text = widget.serverUrlController.text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Change server'),
      content: Form(
        key: _formKey,
        child: SizedBox(
          width: double.maxFinite,
          child: TextFormField(
            controller: urlController,
            decoration: InputDecoration(
              labelText: 'Server URL',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              errorText: _errorFetchingServer,
              errorMaxLines: 6,
            ),
            onChanged: (value) {
              if (_errorFetchingServer != null) setState(() => _errorFetchingServer = null);
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid URL';
              }
              const urlPattern = r'^(http|https):\/\/[^\s$.?#].[^\s]*$';
              final result = RegExp(urlPattern, caseSensitive: false).hasMatch(value);
              if (!result) {
                return 'Please enter a valid URL';
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () async {
            // Prefetch handlers before async gaps.
            final navigator = Navigator.of(context);

            if (widget.serverUrlController.text == urlController.text) {
              navigator.pop();
              return;
            }

            if (_formKey.currentState?.validate() ?? false) {
              final welcomeServer = await Backend.initServer(
                server: urlController.text,
                onError: (errorMessage) {
                  setState(() => _errorFetchingServer = errorMessage);
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(
                  //     backgroundColor: Colors.red.shade400,
                  //     content: Text(
                  //       errorMessage,
                  //       style: const TextStyle(color: Colors.white),
                  //     ),
                  //   ),
                  // );
                },
              );

              if (!welcomeServer) {
                FocusScope.of(context).unfocus();
                return;
              }

              // Change the server URL and show a success message.
              widget.serverUrlController.text = urlController.text;

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(
                    'Server URL changed successfully',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );

              navigator.pop();
            }
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
