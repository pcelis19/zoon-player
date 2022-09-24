extension StringX on String {
  String capitalize() {
    if (isEmpty) {
      return this;
    }
    if (length == 1) {
      this[0].toUpperCase();
    }
    return this[0].toUpperCase() + substring(1);
  }
}
