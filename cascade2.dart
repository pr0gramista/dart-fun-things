// Cascase
import 'dart:html';

var button = ButtonElement()
  ..text = "Click me!"
  ..classes.add("primary")
  ..onClick.listen((e) => print('Noice'));

main() {
  querySelector("body").append(button);
}

// dart2js -m cascade2.dart -o cascade.js
// Take a look on the minifed size