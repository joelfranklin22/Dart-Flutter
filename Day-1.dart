import 'dart:io';

void main() {
  var a1;
  String? a2;
  // Output Printing
  stdout.writeln("Enter the Number");
  a1 = stdin.readLineSync();
  //Error: A value of type 'String?' can't be assigned to a variable of type 'String'.
  // Because String cant handle null if the value is not given in runtime
  //because stdin.readLineSync() might be null,and String cannot store null.
  // For that we can use ? while declaring varibale a2
  a2 = stdin.readLineSync();
  print("Value of a1 $a1");
  print("Value of a2  $a2");

  print("\n");
  print("DATATYPES");
  print("\n");
  // DATA TYPES

  var a3;
  print("var Datatype $a3");
  String a4 = "Hello World";
  print("String type" + a4);
  int a5 = 2203;
  //   In Dart, the + operator works only for:
  //   Adding numbers,Concatenating strings
  // Here:
  //   "Int type" → is a String
  //   a5 → is an int
  //   So Dart doesn’t know how to “add” a String and an int.
  // print("int datatype"+a5);

  print("Int type $a5");
  double a6 = 2203.20;
  print("Double Datatype  $a6");
  bool a7 = true;
  print("Boolean datatype $a7");
  num a8 = 30;
  print("Num Datatype $a8");

  // dynamic is a special data type that tells Dart:
  // “I don’t know what type this variable will be — decide it at runtime.”
  // So you can change the type of a dynamic variable anytime.

  dynamic a9 = "Welcome to Dart";
  print("Dynamic Datatype $a9");
  a9 = 2203;
  print("Dynamic Dataype $a9");

  print("\n");
  print("RAW STRING");
  print("\n");
  // RAW STRING
  //Certain text (like file paths, regular expressions, JSON, or Windows directory paths)
  // naturally contain backslashes \ — and Dart interprets \ as an escape symbol by default.
  //So if you don’t use a raw string, Dart will misread your text.
  String s1 = "Welcome to dart programming";
  print("value of s1 $s1");
  String s2 = "c:\newfolder\name\tab";
  print("Escape sequences string $s2");
  String s3 = r"c:\newfolder\name\tab";
  print("Using raw String $s3");

  print("\n");
  print("TYPE CONVERSION");
  print("\n");

  int n1 = 10;
  double d = 11.01;
  //String s10 = "W";
  String s11 = "11";
  int n2 = int.parse(s11);
  // Dart Doesn't use ASCII for converting string into int
  // int.parse() is designed for numerical parsing only (not character encoding).
  // It expects digits (0–9) or decimal points, not letters.
  print(n2 + n1);
  print(n2.runtimeType);
  String s12 = d.toString();
  print(s12);
  print(s12.runtimeType);

  print("\n");
  print("CONSTANT");

  const c = "Hello WOrld";
  const c1 = 34.5;
  const c2 = true;
  print(c.runtimeType);
  print(c1.runtimeType);
  print(c2.runtimeType);

  print("\n");
  print("Null Topic");

  var v1 = null;
  var v;
  print("value of $v ,$v1");

  print("\n");
  print("Quatation");

  String e1 = "Welco\tme to Prog\nramming ";

  String q = "Hello world,Computer ";
  // When you need text that spans multiple lines,
  // use triple quotes — either ''' or """.
  String q1 = """ Hello World 
  ,COmputer Science""";
  String q2 = ''' Hello World
  ,Computer
  Science ''';
  // To prevent escape sequences (\n, \t, \$, etc.) from being processed,
  // use raw string (r'') — even with multi-line text.
  String rawText = r'''
    Line 1: Hello\nWorld
    Line 2: \$100
    ''';
  print(q2 + q1 + rawText + q);

  print("\n");
  print("Operators");

  int i = 5;
  int i1 = 10;
  // Addition,Subtract,multiply,Divison,Modules
  // Note! There is no Exponent Operator in Dart [**]
  print(i + i1 + i - i1 + i * i1 + i % i1 + i / i1);

  print("\n");
  print("Aware Null Operators");
  // {?} Used to safely access a property or method only if the object is not null.Otherwise
  // Error: Non-nullable variable 'p1' must be assigned before it can be used
  String? p1;
  //p1 = "hello";
  // Without ?., this would crash:
  //print(p1.length);
  // ?. → Null-aware access operator
  // So ?. prevents your program from crashing by stopping the access if the value is null.
  print(p1?.length);
  // ?? → Null-coalescing operator
  // Returns the right-hand value if the left-hand side is null.
  String? p2;
  print(p2 ?? "Guest");

  String? p3;
  p3 ??= "user 1";
  print(p3);

  print("\n");
  print("Type Test");

  var n5 = 10.5;
  if (n5 is int)
    print("INtegers");
  else
    print(n5.runtimeType);

  print("\n");
  print("Looping");

  //Normal Looping
  int u = 10;
  for (int i = 0; i < u; i++) print(i);
  //For in Loop
  var numbers = [10, 20, 30];
  for (var n in numbers) print(n);
  // For Each
  numbers.forEach((n) => print(n));
  // While Loop
  while (u != 5) print(u);
  // Break
  var f;
  for (f in numbers) if (f == 20) break;
  print(f);
  // Continue
  numbers.forEach((n) => n == 10 ? null : print(n));
}
