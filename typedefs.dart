typedef Compare = int Function(Object a, Object b);

class SortedCollection {
  Compare compare;
 
  SortedCollection(this.compare);
}

class Functionish {
  call() {
    print("Haha! I am a function!");
  }
}

main() {
  print("Start");

  var f = Functionish(); // This call constructor

  print("===");
  
  f(); // This call "call" method
}