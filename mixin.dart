abstract class Coder {
  work();
}

// I like chess
class Me extends Coder with Chess {
  Me() {
    this.chessSite = "lichess.org";
  }

  @override
  work() {
    this.playChess();
  }
}

// Shark is Shark
class Shark extends Coder with iPhone {
  @override
  work() {
    this.callSomeone();
  }
}

mixin Chess {
  String chessSite;

  void playChess() {
    print('Opening $chessSite');
  }
}
 
mixin iPhone on Coder { // Others doesn't have such problems :D
  void callSomeone() {
    print("Calling...");
  }
}

main() {
  final shark = Shark();
  shark.work();

  final me = Me();
  me.work();
}
