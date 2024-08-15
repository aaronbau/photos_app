import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_info.freezed.dart';

@freezed
class PageInfo with _$PageInfo {
  const factory PageInfo({
    @Default(1) int nextPageToken,
    @Default(5) int size,
  }) = _PageInfo;
}
