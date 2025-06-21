class OtherInfoList {
  final String id;
  final String label;

  OtherInfoList({required this.id, required this.label});

  @override
  String toString() => label;  // Ensure it returns the label for displaying in the dropdown
}
