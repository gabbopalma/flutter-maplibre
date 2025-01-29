import 'dart:convert';
import 'dart:developer' as dev;
import 'dart:io';
import 'dart:math';

void main() {
  const numLines = 30000;
  final random = Random();

  // Genera il GeoJSON
  final geojson = <String, dynamic>{
    'type': 'FeatureCollection',
    'features': List.generate(numLines, (i) {
      return {
        'type': 'Feature',
        'geometry': {
          'type': 'LineString',
          'coordinates': [
            [
              random.nextDouble() * 70 - 20, // Longitudine tra -20.0 e 50.0
              random.nextDouble() * 72 - 35, // Latitudine tra -35.0 e 37.0
            ],
            [random.nextDouble() * 70 - 20, random.nextDouble() * 72 - 35],
          ],
        },
        'properties': {'id': i},
      };
    }),
  };

  // Salva il file negli assets
  const filePath = 'africa_lines.json';
  final file = File(filePath);

  file.writeAsStringSync(jsonEncode(geojson));

  dev.log('File salvato in: $filePath');
}
