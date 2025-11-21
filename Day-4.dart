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
  int? a;
  void name() {
    int a = 10;
    print("sony $a");
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

// Getter and Setter
class getter {
  int _a = 100;
  void get a => _a;
}

class setter extends getter {
  set a(int value) {
    if (value >= 19)
      _a = value;
    else
      print("less than 18");
  }
// ✔ Setter can only set, not get
// ✔ Getter returns the value
// ✔ Overriding both keeps child behavior consistent
// ✔ Without getter, parent getter will run → unexpected results
  @override
  int get a => _a;
}

void main() {
  // Class
  check c = check();
  c.name = "welcome";
  c.age = 25;
  c.test();
  // Constructor Class
  Constructor c1 = Constructor("joel", 21);
  print(c1.age);
  // Inheritance
  cat m = cat();
  m.name();
  // Method Overiding
  electrical e = electrical();
  e.job();
  // Getters and Setters
  getter g = getter();
  print(g._a);
  setter s = setter();
  print(s._a);
  s.a = 14;
  s.a = 20;
  print(s.a);
}
