import 'package:json_annotation/json_annotation.dart';

enum AppTag {
  @JsonValue('featured')
  featured,
  @JsonValue('recent')
  recent,
  @JsonValue('nearby')
  nearby,
}
