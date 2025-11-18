void main() {
  // List
  // Using var datatype
  var l1 = ["hello", "world"];
  for (var a in l1) print(a);

  //using List Keyword
  // Values can be mixed unitl specifying..
  List l2 = ["hi", 2, 3, 4, "23.9", 23.0];
  l2.forEach((n) => print(n));

  // The list is Defined as Int Datatype so the values must be in integer
  List<int> l3 = [1, 2, 3];
  l3.forEach((b) => print(b));

  // Here we cannot modify the list because the values are const we can print each element separately..
  List<String> l4 = const ["hello", "welcome"];
  //l4[1] = "World";
  for (var i in l4) print(i);

  // This means we are not copying the list l1 to l5 .image just giving permission to access the l1 list..
  var l5 = l1;
  print(l5[0]); //prints Hello from l1

  // For copying the list 1 to list 2..
  //We use Spread Operator (...)
  // By using this operator the list B will be treated as separate list it is linked to another list
  // 1.Copying
  List<int> a = [1, 2, 3];
  List<int> b = [...a];
  print(b);
  // 2. Add extra items while copying
  List<int> a1 = [1, 2, 3];
  List<int> b1 = [...a1, 4, 5];
  print(b1); // [1, 2, 3, 4, 5]
  // 3. Merge multiple lists
  List<int> a2 = [1, 2, 3];
  List<int> b2 = [4, 5];
  print([...a2, ...b2]);
  // 4. Null-aware Spread Operator (…?)
  // If a list may be null, use ...?:
  List<int>? a3;
  List<int> b3 = [...?a3, 4, 5];
  print(b3);

  print("\n");
  print("Set");
  // TO create a Set
  Set<String> s1 = {"Hi", "Welcome"};
  // Here Dart will treat this as Map
  var s2 = {};
  print("set of s2 $s2 $s1");
  // For that we need to mention string,int to indicate as Set
  var s = <String>{"Hi", "Welcome"};
  //Add Elemets in Set
  s.add("time");
  s.addAll({"a", "b"});
  //Spread Operator
  var s4 = <int>{1, 2, 3};
  var s5 = <String>{"String", "Hello"};
  // See s4 is defined as int and s5 as String if we use spread operator to merge it wont cause any error
  // But if we use any datatype for s6 it will get error because s4 and s5 are different datatype
  var s6 = {...s4, ...s5};
  // if u need to remove the curly braces while printing u can use .join()
  print(s6); //prints {1, 2, 3, String, Hello}
  print("the answer is ${s6.join(" ")}"); //prints 1 2 3 String Hello

  print("\n");
  print("MAP");

  Map<String, String> user = {"name": "joel", "age": "21", "Gender": "Male"};
  var user1 = <String, String>{"name": "joel", "age": "21", "Gender": "Male"};
  user.forEach((key, value) {
    print("$key :$value");
  });
  user1.forEach((key, value) {
    print("$key and $value");
  });
}
