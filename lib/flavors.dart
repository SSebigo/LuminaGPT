/// @nodoc
enum Flavor {
  /// @nodoc
  development,

  /// @nodoc
  production,
}

/// @nodoc
class F {
  /// @nodoc
  static Flavor? appFlavor;

  /// @nodoc
  static String get name => appFlavor?.name ?? '';

  /// @nodoc
  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return 'LuminaGPT Dev';
      case Flavor.production:
      case null:
        return 'LuminaGPT';
    }
  }
}
