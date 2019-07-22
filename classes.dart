// Generics are here
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

// Using implicit interface
class MemoryCache<T> implements Cache<T> {
  Map<String, T> map;

  @override
  getByKey(String key) {
    return map[key];
  }

  @override
  void setByKey(String key, T value) {
    map[key] = value;
  }

  // Yes...
  @override
  int get hashCode => map.hashCode;

  // This is from docs:

  // Override hashCode using strategy from Effective Java,
  // Chapter 11.

  // @override
  // int get hashCode {
  //   int result = 17;
  //   result = 37 * result + firstName.hashCode;
  //   result = 37 * result + lastName.hashCode;
  //   return result;
  // }

  // You should generally implement operator == if you
  // override hashCode.
  @override
  bool operator ==(dynamic other) {
    if (other is! MemoryCache) return false;
    MemoryCache cache = other;
    return this.map == cache.map;
  }
}