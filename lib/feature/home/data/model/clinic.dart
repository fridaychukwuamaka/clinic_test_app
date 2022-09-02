// ignore_for_file: invalid_annotation_target
import 'package:clinic_test_app/shared/enum/app_tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'clinic.g.dart';
part 'clinic.freezed.dart';

@freezed
class Clinic with _$Clinic {
  const factory Clinic({
    required String image,
    required String name,
    required String address,
    required AppTag tag,
  }) = _Clinic;

  factory Clinic.fromJson(Map<String, dynamic> json) => _$ClinicFromJson(json);
}
