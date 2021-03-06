import 'package:clean_core/clean_core.dart';

///Simplest of all entity's objects
///Entity that extends [DomainObject] with [IntIdentifier]
///
/// See [BasicEntityObject] for ParentEntity's example code.
/// EXAMPLE:
///   class ParentDomain extends BasicDomainObject {
///     int id;
///     String name;
///     DateTime bornDay;
///
///     ParentDomain({required this.name, required this.bornDay, this.id = 0});
///
///     String get bornDayFormat => DateFormat.yMMMd().format(bornDay);
///
///     @override
///     String toString() {
///       return 'ParentDomain{name: $name}';
///     }
///   }
///
abstract class BasicDomainObject<T extends IntIdentifier> extends DomainObject
    with IntIdentifier, Comparable<T>, Cloneable<T> {
  ///By default compare the two domain by it's id
  @override
  int compareTo(T other) {
    return this.id.compareTo(other.id);
  }

  T clone() {
    throw UnimplementedError("$this don't override super.clone()");
  }

  /// Default implementation of == operator
  /// Compare the two object by it's type and id's
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BasicDomainObject && this.id == other.id);
  }

  @override
  int get hashCode => this.id;
}
