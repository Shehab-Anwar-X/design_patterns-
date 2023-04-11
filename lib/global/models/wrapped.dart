/// Used to wrap data type.
/// That used in copyWith method with a nullable object.
///
/// Example :-
///
/// class Product {
///   const Product({
///     this.title,
///   });
///
///   final String? title;
///
///   Product copyWith({
///     Wrapped<String>? title,
///   }) {
///     return Product(
///       title: title != null ? title.value : this.title,
///     );
///   }
/// }
///
class Wrapped<T> {
  final T value;

  const Wrapped.value(this.value);
}
