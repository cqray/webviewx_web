/// Declares some Javascript content (usually a function) which will be
/// embedded ("burned") into the HTML source at runtime.
///
/// Note: One should try to use functions as much as possible, and avoid
/// "raw" javascript.
///
/// The "js" param should be used when the JS function you are trying to
/// embed doesn't call any [DartCallback]s or interact in any way with the
/// Dart side, or when it does interact but it's nothing platform-specific.
///
/// Simply put, "js" is only for pure Javascript stuff or crossplatform calls.
///
/// Example what to declare in "js":
///
/// ```dart
/// EmbeddedJsContent(
///   js: 'function sayHi() {
///     console.log('hi');
///   }'
/// ),
/// ```
///
/// For `WEB`:
/// ```dart
///   Some_Callback_Name(param1, param2...);
/// ```
class EmbeddedJsContent {
  /// This param should be used when the JS you wish to define
  /// doesn't interact in any way with the Dart side
  final String js;

  /// Constructor
  const EmbeddedJsContent({
    required this.js,
  });
}
