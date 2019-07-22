// Import only foo.
import 'package:lib1/lib1.dart' show foo;
 
// Import all names EXCEPT foo.
import 'package:lib2/lib2.dart' hide foo;

import 'package:greetings/hello.dart' deferred as hello; // Only dart2js

Future greet() async {
  await hello.loadLibrary();
  hello.printGreeting();
}
