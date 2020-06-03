extension MapExtension<T> on Map<String, T> {
  T valueAt(int index) => index < this.keys.length && index >= 0
      ? this[this.keys.toList()[index]]
      : null;

  String keyAt(int index) =>
      index < this.keys.length && index >= 0 ? this.keys.toList()[index] : null;
}
