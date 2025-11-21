// Function
void main() {
  // Basic Function
  void basic() {
    print("This is basic function type");
  }

  // Function with Parameters
  void parameter(int a, int b) {
    a += b;
    print(a);
  }

  basic();
  parameter(5, 6);
  // Function with return Type
  int return_type(int a, int b) {
    return a * b;
  }

  return_type(10, 20);
  print("\n");
  print("Positional Function");
  // For this Type while calling we should never change the datetype while calling the function
  // what is in this formal parameter should be in acutal parameter while calling the function
  void position(String a, String b) {
    print("$a + $b");
  }

  position("hello", "3");

  print("\n");
  print("Optional Positional Parameter");
  // Parameters inside [] become optional.
  // you cannot skip a and directly give b for optional positional parameters.
  void optional([int? a, int? b]) {
    print("value of $a");
    print("value of b $b");
  }

  optional(1);
  optional(4, 4);
  optional(4);

  print("\n");
  print("Named Parameter");
  // For Named Parameter we use {}
  // We can call the Parameter using its name
  // In this type we can skip the value of a and give the value b
  // To avoid Null Issues we need to use ??
  // 1.give atleast default value for a nd b
  // 2. we can give a??0 if value is not given we can use 0
  void Named(int? a, {int b = 0}) => print(a ?? 4 + b);
  Named(4, b: 10);
  Named(1, b: 3);

  print("\n");
  print("Required Named Parameter");
  void required_named(int a, {required int b}) => print(a + b);
  required_named(4, b: 6);

  print("\n");
  print("positional +Named +Optional Parameter");
  void positional_named_optional(int a, {String? b}) =>
      print("value=$a + value=${b ??= "a"}");
  positional_named_optional(5, b: "joel");

  print("\n");
  print("positional Optional Parameter");
  void positional_optional([int a=0, int?b]) => print("$a"+"${b??5}");
  positional_optional(2, );
}
