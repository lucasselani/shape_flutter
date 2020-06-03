extension JsonMap on Map<String, dynamic> {
  Map<String, dynamic> getOrCreateValue(String key) => this.containsKey(key)
      ? this[key] as Map<String, dynamic>
      : Map<String, dynamic>();
}
