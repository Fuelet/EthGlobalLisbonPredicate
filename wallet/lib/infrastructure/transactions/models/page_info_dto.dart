import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet/domain/transactions/entities/page_info.dart';

part 'page_info_dto.g.dart';

@JsonSerializable(createToJson: false)
class PageInfoDto {
  final bool hasNextPage;
  final String? startCursor;
  final String? endCursor;

  const PageInfoDto({
    required this.hasNextPage,
    required this.startCursor,
    required this.endCursor,
  });

  PageInfo toEntity() => PageInfo(
        hasNextPage: hasNextPage,
        endCursor: endCursor,
        startCursor: startCursor,
      );

  factory PageInfoDto.fromJson(Map<String, dynamic> json) =>
      _$PageInfoDtoFromJson(json);
}
