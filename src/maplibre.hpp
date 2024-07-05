#pragma once

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#if _WIN32
#include <windows.h>
#else
#include <pthread.h>
#include <unistd.h>
#endif

#if _WIN32
#define FFI_PLUGIN_EXPORT __declspec(dllexport)
#else
#define FFI_PLUGIN_EXPORT
#endif

#include "asset_manager.h"

#ifdef __cplusplus
extern "C" {
#endif

#define MAPLIBRE_NAME "org/maplibre/android/MapLibre"

typedef struct MapLibre {
    // Define fields if there are any, otherwise leave it empty.
} MapLibre;

jboolean MapLibre_hasInstance(JNIEnv* env);
jni_Object* MapLibre_getAssetManager(JNIEnv* env);
void MapLibre_registerNative(JNIEnv* env);

#ifdef __cplusplus
}
#endif

#endif // MAPLIBRE_H
