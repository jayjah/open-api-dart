import 'util.dart';

enum APIType {
  string, number, integer, boolean, array, file
}

class APITypeCodec {
  static APIType decode(String type) {
    switch (type) {
      case "string": return APIType.string;
      case "number": return APIType.number;
      case "integer": return APIType.integer;
      case "boolean": return APIType.boolean;
      case "array": return APIType.array;
      case "file": return APIType.file;
    }
    return null;
  }

  static String encode(APIType type) {
    switch (type) {
      case APIType.string: return "string";
      case APIType.number: return "number";
      case APIType.integer: return "integer";
      case APIType.boolean: return "boolean";
      case APIType.array: return "array";
      case APIType.file: return "file";
    }

    return null;
  }
}