// Class
class check {
  // Normal Class
  String? name;
  int? age;
  void test() {
    print(name);
  }
}

class Constructor {
  String? name;
  int? age;
  Constructor(this.name, this.age);
  void use() {
    this.name = "welcome";
    this.age = 17;
  }
}

// Inheritance
class dog {
  void name() {
    int a = 10;
    print("sony");
  }
}

class cat extends dog {
  void name() {
    print("value of A:$name(a)");
    print("meow");
  }
}

// Method Overriding
class medical {
  void job() => print("medical");
}

class engineer extends medical {
  @override
  void job() {
    print("engineer");
    super.job();
  }
}

class electrical extends engineer {
  @override
  void job() {
    super.job();
    print("electrical");
  }
}

void main() {
  check c = check();
  c.name = "welcome";
  c.age = 25;
  c.test();
  Constructor c1 = Constructor("joel", 21);
  print(c1.age);
  cat m = cat();
  m.name();
  electrical e = electrical();
  e.job();
}
