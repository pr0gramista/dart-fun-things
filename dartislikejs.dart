import 'dart:io';
import 'dart:convert';

var someFuckingFunction = (num someFuckingNumber) => someFuckingNumber * 2;

var someFutureBitch = () async => {
  print('Fuck You From The Future!')
};

Future<Map<String, dynamic>> getSomeMemes() async {
  var content = await HttpClient()
    .getUrl(Uri.parse("https://api.12345.pl/9gag"))
    .then((r) => r.close())
    .then((b) => b.transform(Utf8Decoder()))
    .then((c) => c.join());

  return jsonDecode(content);
}

class SomeFuckingClass {
  dynamic fuckingDynamic() {
    return "" == []; // no triple = for you motherfuckers
  }
}

const iAmFuckingConst = 5;

main() {
  someFutureBitch();
  getSomeMemes().then((c) => print(c['memes'][0]['title']));
  print(someFuckingFunction(2));
  print(SomeFuckingClass().fuckingDynamic());
  print(DateTime.now());
  print(DateTime.now().add(Duration(hours: 1, minutes: 30))); // fuck you momentjs
}