// Factory
class Logger {
  final String name;
  bool mute = false;
 
  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache =
      <String, Logger>{};
 
  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }
 
  Logger._internal(this.name);
 
  void log(String msg) {
    if (!mute) print(msg);
  }
}

main() {
  Logger logger = Logger("super");

  logger.log("Am I working?");

  Logger logger2 = Logger("super");
  Logger logger3 = Logger("super2");

  print(logger == logger2);
  print(logger == logger3);
}