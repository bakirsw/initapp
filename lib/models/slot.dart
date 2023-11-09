import 'package:freezed_annotation/freezed_annotation.dart';

part 'slot.freezed.dart';
part 'slot.g.dart';

@freezed
class Slots with _$Slots {
  factory Slots({
    String? name,
    int? age,
  }) = _Slots;

  factory Slots.fromJson(Map<String, dynamic> json) => _$SlotsFromJson(json);
}
