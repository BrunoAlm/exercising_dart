// ignore_for_file: file_names

import 'dart:io';

void main() {
  var a = [1, 1, 2, 3, 4, 5, 8, 13, 21, 34, 55, 1, 89];

  for (var element in a) {
    if (element < 5) {
      stdout.write('$element ');
    }
  }
}
