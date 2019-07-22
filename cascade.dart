// Cascase
import 'dart:html';

var button = ButtonElement()
  ..text = "Click me!"
  ..classes.add("primary")
  ..onClick.listen((e) => print('Noice'));

main() {
  print(button.toString());
}

// Because it's using dart:html package it cannot be run on VM
// it needs a browser...
// dart2js cascade.dart -o cascade.js