class PageInfo {
  final bool hasNextPage;
  final String? startCursor;
  final String? endCursor;

  const PageInfo({
    required this.hasNextPage,
    required this.endCursor,
    required this.startCursor,
  });
}
