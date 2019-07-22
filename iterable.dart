// Iterable
Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

// Stream is Iterable async
Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

main() async {
  // For loop on streams?
  await for (var n in asynchronousNaturalsTo(10)) {
    print(n);
  }
}
 