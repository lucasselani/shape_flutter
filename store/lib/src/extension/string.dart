extension ContainsIgnoreCase on String {
  bool has(String text) => this.toLowerCase().contains(text.toLowerCase());
}
