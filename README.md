# Meno

---
Flutter Developer Bootcamp

# 一、配置Flutter与Dart开发环境

- Windows中 Flutter 安装
- Windows中 Android Studio 安装
- 使用VS Code开发Flutter，并安装如下扩展：
    - Flutter
    - dart
    - Awesome Flutter Snippets
    - Flutter Widget Snippets
    - flutter code select
    - Pubspec Assist
    - version lens

# 二、快速掌握Dart

## 2.1 Dart模块介绍

- 在vscode中，按快捷键 `ctrl` + `shift` + `p`，输入`dart`，选择`Dart: New Project`。
- 选择项目类型 `Console Application`，指定文件夹路径。
- 输入项目名称 `dart_get_up_to_speed`。

## 2.2 变量与基本类型(variables and primitive types)

(1). 定义一个字符串变量
```dart
String myString = 'Hello world!';
print(myString);
 ```

> 使用 `print()` 函数打印变量内容。

调用`contains()`函数，返回字符串中是否包含另一个字符串的内容。
```dart
print(myString.contains('Hello'));
```

(2). 定义一个整型变量
```dart
int myInteger = 5;
```

调用`toString()`函数，将整型转换为字符串类型的。
```dart
print(myInteger.toString());
```

调用`isEven`属性，返回数值是否为偶数。
```dart
print(myInteger.isEven);
```

(3). 定义浮点型变量
```dart
double myDouble = 5.5;
```

(4). 数值类型变量，内容可以是整型也可以是浮点型数值。
```dart
num myNumber = 5;
num myNumer2 = 5.5;
```

(5). 布尔类型变量，值只有`true`和`false`表示真或假，常用于条件判断。
```dart
bool myBool = true;
```

(6). 动态类型变量，可以是任何类型的值。
```dart
dynamic myDynamic = 'Dynamic Variable';
myDynamic = 5.5;
myDynamic = false;
```

(7). 内置类型推断，可以通过`var`关键字来实现，我们不需要提供它的类型。
```dart
var myString = 'Hello world';
print(myString);
myString = 'Update!';
print(myString);
```

(8). 定义常量，可以通过`final`关键字，一旦定义为常量其内容将不可被修改。
```dart
final myString = 'Hello world';
```

> 定义为常量，需同时指定初始值。

## 2.3 可空类型(non-nullability)

使用`?`，将变量变为可空类型。
```dart
String? impossible = null;
print(impossible?.length);
```

使用`!`，非空断言，当确定内容不为null时可使用此操作符，以达到忽略警告信息的作用。
```dart
String? impossible = 'abc';
print(impossible!.length);
```

## 2.4 操作符(Operators)

(1). 加、减、乘、除和取余运算符。
```dart
int result;
result = 5 + 5;
result = 5 - 5;
result = 5 * 5;
double resultDouble = 5 / 5;
result = 5 ~/ 5;
```

(2). 一元运算符(unary operators)。
```dart
int x = 5;
x++;    // 6
x--;    // 5
x += 5; // 10
x -= 5;
x *= 5;
x ~/= 5;

double y = 5.5;
y /= 5.5;

bool isEqual = 5 == 10;
bool isNotEqual = 5 != 10;
bool isGreater = 5 > 10;
bool isGreaterEqual = 5 >= 10;
bool isLess = 5 < 10;
bool isLessEqual = 5 <= 10;
```

(3). 字符串插值
```dart
bool isEqual = 5 == 10;
String myString = 'Hello $isEqual';
print(myString);    // 'Hello false'

String myString2 = 'Hello ${5 + 5 / 2 + 123}';
print(myString2);   // 'Hello 130.5'
```

## 2.5 控制流(if和switch)

使用`if`进行条件判断。
```dart
final myInteger = 5;

if (myInteger == 10) {
    print("It's ten!");
} else if(myInteger == 9) {
    print("It's nine!")
} else if (myInteger > 20){
    print("Greater than twenty!")
} else {
    print("Oh, it is something else.");
}
```

使用`switch`进行条件判断。
```dart
final myInteger = 5;

switch (myInteger) {
    case 10:
        print("It's ten")!
        break;
    case 9:
        print("It's nine!")
        break;
    default:
        print("Oh, it is something else.");
        break;
}
```

## 2.6 循环

使用`for`进行循环。
```dart
for (var i = 0; i < 10; i++) {
    print(i);
}
```

使用`while`进行循环。
```dart
int i = 0;
while (i < 10) {
    print(i);
    i++;
}
```

使用`do-while`进行循环。
```dart
int i = 0;
do {
    print(i);
    i++;
}while(i < 10);
```

## 2.7 函数基础

(1). `main`函数，就是一个带参无返回函数。
```dart
void main(List<String> arguments) {

}
```

可以在函数中嵌套其他函数。
```dart
void main(List<String> arguments) {
    String getString() {
        return 'Hello';
    }
}
```

(2). 可选参数，通过中括号`[]`将参数包起来。
```dart
void positionalParams(int x, double y, [String? greeting]) {
    print(x);
    print(y);
    print("Hello ${greeting}");
}

positionalParams(5, 23.3);
positionalParams(5, 23.3, "Parameters");
```

(3). 命名可选参数，使用大括号`{}`将多个参数包起来。
```dart
void namedOptionalParams({
    int x,
    double? y,
    String? greeting,
}) {

}

namedOptionalParams(x: 5, greeting: 'hi');
```

(4). 命名必填参数
```dart
void namedRequiredParams(int positional, {
    required int x,
    required double y,
    required String greeting,
}) {

}

namedRequiredParams(19, x: 5, y: 34.5, greeting: 'world');
```

(5). 高阶函数(higher order)
```dart
int Function(int) twice(int Function(int) f) {
    return (int x) {
        return f(f(x));
    }
}

int plusFive(int x) {
    return x + 5;
}

final twicePlusFive = twice(plusFive);
print(twicePlusFive(3))

final twicePlusFive2 = twice((x) {
    return x + 5;
});

final twicePlusFive3 = twice((x) => x + 5);
```

(6). 类型定义
```dart
typedef IntTransformer = int Function(int);

IntTransformer twice(IntTransformer f) {
    return (int x) {
        return f(f(x));
    }
}
```

## 2.8 集合

### 2.8.1 集合基础

(1). 定义`List`集合。
```dart
List myList = [1, 2, 3];
```

通过索引下标获取集合中的指定元素。
```dart
final firstElement = myList[0];
```

(2). 定义泛型集合，指定泛型类型后，集合存储的值的类型就必须为该类型。
```dart
List<int> myList = [1, 2, 3];
final firstElement = myList[0];
```

(3). 不指定集合类型，将被自动推断出来。
```dart
final myList = [1, 2, 3];
```

(4). 调用`map()`函数，用于处理每个元素并返回处理后迭代器。
```dart
final names = ['Jone', 'Jane', 'Matthew'];
final nameLengths = names.map((name) => name.length).toList();
nameLengths[0];
```

(5). 调用`where()`函数，用于过滤集合中的数据。
```dart
final names = ['Jone', 'Jane', 'Matthew'];
final namesFiltered = names.where((name) => name.length == 4).toList();
print(banesFiltered);
```

(6). 以下是遍历集合的使用方式。
```dart
final names = ['Jone', 'Jane', 'Matthew'];
final namesFiltered = names.where((name) => name.length == 4).toList();
for (int i = 0; i < namesFiltered.length; i++) {
    print(namesFiltered[i]);
}

for (final name in namesFiltered) {
    print(name);
}

namesFiltered.forEach((element) => print(element));

namesFiltered.forEach(print);
```

(7). 定义`Map`集合。
```dart
Map<String, dynamic> myMap = {
    'name': 'Johe Doe',
    'age': 42,
    'registered': true,
};

final name = myMap['name'];
```

(8). 定义`Set`集合。
```dart
Set<int> mySet = {1, 2, 3};
```

(9). 内部集合(inside collection)
```dart
bool isSignedIn = false;
<String>[
    'This is a fake content.',
    if (isSignedIn)'Sign Out' else 'Sign In',
];

final x = <String>[
    for (int i = 0; i < 5; i++) i.toString(),
    for (final number in [1, 2, 3]) number.toString(),
];

final list1 = ['hello', 'there'];
final list2 = ['what', 'up'];
<String>[
    ...list1,
    ...list2,
];
```

## 2.9 枚举

使用`enum`定义枚举。
```dart
enum AccountType {
    free,
    premium,
    vip
}
```

通过`index`属性获取枚举索引。
```dart
final userAccountType = AccountType.premium;
print(userAccountType.index);
```

通过指定的索引查找枚举中对应的值。
```dart
AccountType.values[1];
```

## 2.10 Pub包系统

通过`pubspec.yaml`文件管理依赖项。
```yaml
dependencies:
  riverpod: ^0.13.1
```

可以手动安装依赖项。
```bash
flutter pub get
```

官方包仓储库地址：https://pub.dev

## 2.11 Linting

安装`Lint`包，检查代码的质量以及编写方式。
```yaml
dev_dependencies:
  Lint: ^1.5.3
```

更改`analysis_options.yaml`文件中的`include`节点内容。
```yaml
include: package:lint/analysis_options.yaml
```

## 2.12 类

### 2.12.1 类基础

(1). 使用`class`定义类
```dart
class User {
    String name = 'John Doe';
    String photoUrl = 'http://example.com/abcd';
}
```

实例化类
```dart
User myUser = User();
final myUser2 = User();
myUser2.name = 'Jane Doe';
```

(2). 可以定义类的带参构造函数。
```dart
class User {
    String name;
    String photoUrl;

    User({
        required this.name,
        required this.photoUrl,
    };
}

User myUser = User(
    name: 'John Doe',
    photoUrl: 'http://example.com/abcd'
);
```

可以在构造函数中定义其他参数
```dart
class User {
    late String name;
    String photoUrl;

    User({
        required String firstName;
        required String lastName;
        required this.photoUrl,
    }) {
        this.name = '$firstName $lastName';
    }
}
```

这种形式可以进行简化。
```dart
User({
    required String firstName;
    required String lastName;
}) : name = '$firstName $lastName';
```

(4). 如果希望在实例化之后不允许变更其属性，需要使用`final`来定义。
```dart
class User {
    final String name;
    final String photoUrl;

    User({
        required this.name,
        required this.photoUrl,
    })
}
```

可以对构造函数使用`const`来提升性能。
```dart
class User {
    final String name;
    final String photoUrl;

    const User({
        required this.name,
        required this.photoUrl,
    })
}

User myUser = const User({
    name: 'John Doe',
    photoUrl: 'http://example.com/abcd',
});

User myUser2 = const User({
    name: 'John Doe',
    photoUrl: 'http://example.com/abcd',
});

print(myUser == myUser2);
```

(5). 同样可以在类中定义方法。
```dart
class User {
    final String name;
    final String photoUrl;

    const User({
        required this.name,
        required this.photoUrl,
    })

    bool hasLongName() { 
        return name.length > 10;
    }
}

User myUser = User({
    name: 'John Doe',
    photoUrl: 'http://example.com/abcd',
});

print(myUser.hasLongName());
```

### 2.12.2 类的静态成员

```dart
class User {
    final String name;
    final String photoUrl;

    const User ({
        required this.name,
        required this.photoUrl,
    });

    static void myMethod() {

    }

    static const minNameLength = 3; 
}

User(name: 'a', photoUrl: 'b').name;
User.myMethod();
User.minNameLength;
```

### 2.12.3 类的私有成员

```dart
class Example{
    int public;
    int _private;

    Example(this.public,this._private);
    Example.namedConstructor({
        required this.name,
        required int privateParameter,
    }) : _private = privateParameter;   
}
```

### 2.12.4 类的属性

```dart 
class User {
    final String firstName;
    final String lastName;
    String? _email;

    User({
        required this.firstName;
        required this.lastName;
        required String email;
    }) {
        this.email = email;
    };

    String get fullName => '$firstName $lastName';

    String? get email => _email ?? 'Email not present';

    set email(String value) {
        if(value.contains('@')) {
            _email = value;
        } else {
            _email = null;
        }
    }
}

final user = User(
    firstName: 'John', 
    lastName: 'Doe', 
    email: 'abc@123.com'
);
print(user.fullName);
print(user.email)
```

### 2.12.5 类相等

```dart
class User {
    final User firstName;
    final User lastName;

    const User({
        required this.firstName;
        required this.lastName;
    });
}
```

如果不使用`const`实例化对象，得到的结果将不相等，因为判断只会判断值是否相等。
```dart
final user1 = User({
    firstName: 'John',
    lastName: 'Doe'
});

final user2 = User({
    firstName: 'John',
    lastName: 'Doe'
});

print(user1 == user2);
```

如果使用`const`实例化对象，得到的结果将相等，因为会判断两个对象的引用是否相等。
```dart
final user1 = const User({
    firstName: 'John',
    lastName: 'Doe'
});

final user2 = const User({
    firstName: 'John',
    lastName: 'Doe'
});

print(user1 == user2);
```

我们可以生成`equality`，用于自定义判断两个类是否相等。
```dart
class User {
    final User firstName;
    final User lastName;

    const User({
        required this.firstName;
        required this.lastName;
    });

    @override
    bool operator == (Object other) {
        if(identical(this, other)) return true;

        return other is User 
            && other.firstName == firstName 
            && other.lastName == lastName;
    }

    @override
    int get hashCode => firstName.hashCode ^ lastName.hashCode;
}

final user1 = User({
    firstName: 'John',
    lastName: 'Doe'
});

final user2 = User({
    firstName: 'John',
    lastName: 'Doe'
});

print(user1 == user2);
```

### 2.12.6 类的继承

使用`extends`关键字来进行类的继承。
```dart
class User {
    final String _firstName;
    final String _lastName;

    User(this._firstName, this._lastName);

    String get fullName => '$_firstName _lastName';

    void signOut() {
        print('Signing out.');
    }
}

class Admin extends User {
    final double specialAdminField;

    Admin({
       required String firstName, 
       required String lastName
    }) : super(firstName, lastName);

    @override
    String get fullName => 'Admin: ${super.fullName}';

    @override
    void signOut() {
        print('Performing admin-specific sign out steps');
        super.signOut();
    }
}

void main(List<String> arguments) {
    final admin = Admin(
        firstName: 'John',
        lastName: 'Done',
        specialAdminField: 123,
    );
    print(admin.fullName);
}
```

### 2.12.7 工厂构造函数

```dart
class User {
    final String _firstName;
    final String _lastName;

    User(this._firstName, this._lastName);

    factory User.admin(bool admin) {
        if (admin) {
            return Admin(
                firstName: 'a',
                lastName: 'b',
                specialAdminField: 123,
            );
        } else {
            return User('c', 'd');
        }
    }

    String get fullName => '$_firstName _lastName';

    void signOut() {
        print('Signing out.');
    }
}

void main(List<String> arguments) {
    final user = User.admin(true);
}
```

### 2.12.8 继承抽象类

定义抽象类
```dart
abstract class User {
    final String _firstName;
    final String _lastName;

    User(this._firstName, this._lastName);

    String get fullName => '$_firstName _lastName';

    @mustCallSuper
    void signOut() {
        print('Signing out.');
    }

    void myMethod();

    int get myProperty;
}
```

实现抽象类
```dart
class Admin extends User {
    final double specialAdminField;

    Admin({
       required String firstName, 
       required String lastName
    }) : super(firstName, lastName);

    @override
    String get fullName => 'Admin: ${super.fullName}';

    @override
    void signOut() {
        print('Performing admin-specific sign out steps');
        super.signOut();
    }

    @override
    void myMethod() {

    }

    @override
    int get myProperty => throw UnimplementedError();    
}
```

### 2.12.9 继承接口

```dart
class RegularClass {
    final int myField;

    RegularClass(this.myField);

    int get publicProperty => 123;

    String getSomething() {
        return 'Hello';
    }
}
```

```dart
class OtherClass implements RegularClass {
    @override
    String getSomething() {

    }

    @override
    int get myField => throw UnimplementedError();

    @override
    int get publicProperty => throw UnimplementedError();
}

abstract class DataReader {
    dynamic readData();
}

class IntegerDataReader implements DataReader {
    @override
    dynamic readData() {
        print('performing logic');
        return 12345;
    }
}
```

### 2.12.10 泛型

定义泛型抽象类与泛型方法
```dart
abstract class DataReader<T> {
    T readData();
}

void myMethod<T(T arg) {

}

class IntegerDataReader implements DataReader<int> {
    @override
    int readData() {
        print('performing logic');
        return 12345;
    }
}

class StringDataReader implements DataReader<String> {
    @override
    String readData() {
        print('performing logic');
        return 'hello world';
    }
}
```

### 2.12.11 混合(Mixins)

使用`with`将其他类中的属性、方法等混合到当前类中。
```dart
class User {
    final String firstName;
    final String lastName;

    User(this.firstName, this.lastName);
}

class ElevatedClient {
    void sendElevatedMessage(String text) {
        print('Sending a message with an elevated importance: $text');
    }
}

class Admin extends User with ElevatedClient {
    final double specialAdminField;

    Admin ({
        required this.specialAdminField,
        required String firstName,
        required String lastName,
    }) : super(firstName, lastName);
}

class ChatBot with ElevatedClient {
    final String id;

    ChatBot(this.id);

    void sendElevatedMessage(String text) {
        print('Sending a message with an elevated importance: $text');
    }
}
```

### 2.12.12 扩展(Extensions)

```dart
extension StringDuplication on String {
    String duplicate() {
        return this + this;
    }

    String get duplicateProperty() {
        return this + this;
    }
}

void main(List<String> arguments) {
    final x = 'hello'.duplicate();
    print(x);

    final y = 'world'.duplicateProperty;
    print(y);
}
```

## 2.13 更多文件和包的内容

dart_get_up_to_speed.dart
```dart
part 'other_file.dart';

void main(List<String> arguments) {

}
class _PackagePrivateClass {
    final String _packagePrivateField;
    _PackagePrivateClass(this._packagePrivateField);
}
```

other_file.dart
```dart
part of 'dart_get_up_to_speed.dart';

void example() {
    _PackagePrivateClass._('hello');
}
```

## 2.14 不可变数据的类(Immutable Data Classes)

```dart
void main(List<String> arguments) {
    final person1 = Person(age: 15, name: 'John Doe');
    final person1Updated = person1.copyWith(age: person1.age + 1);
}

@immutable
class Person {
    final String name;
    final int age;

    const Person({
        required this.name,
        required this.age
    });

    Person copyWith({
        String? name,
        int? age,
    }) {
        return Person(
            name: name ?? this.name, 
            age: age ?? this.age,
        );
    }
}
```

## 2.15 Freezed

在`pubspec.yaml`中添加依赖包
```yaml
dependencies:
  freezed_annotation: ^0.14.1

dev_dependencies:
  freezed: ^0.14.1+1
  build_runner: ^1.12.2
```

```dart
import 'package:freezed_annotation';

part 'dart_get_up_to_speed.freezed.dart';

@freezed
class Person with _$Person {
    const Person._();
    const factory Person({
        required String name,
        required int age,
    }) = _Person;
}
```

执行命令
```dart
dart run build_runner build --delete-conflicting-outputs 
```

## 2.16 错误处理(Error Handling)

捕获异常并打印
```dart
void main(List<String> arguments) {
    try {
        final myInt = int.parse('abcd');
    } catch(e) {
        print(e);
    } 
}
```

或许想要捕获指定类型的异常
```dart
void main(List<String> arguments) {
    try {
        final myInt = int.parse('abcd');
    } on FormatException {
        print('parse error');
    } finally {
        print('this always runs')
    }
}
```

也可以抛出自定义异常类型
```dart
void main(List<String> arguments) {
    try {
        throw MyCustomException();
    } catch(e) {
        print(e);
    } finally {
        print('this always runs')
    }
}

class MyCustomException implements Exception {
    final String message;
}
```

## 2.17 异步

### 2.17.1 异步特性(Asynchrony Futures)

添加`http`包依赖
```yaml
dependencies:
  http: ^0.13.1
```

异步等待的方式调用接口。
```dart
import 'package:http/http.dart';

void main(List<String> arguments) async {
    final result = await Client().get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts')
    );
    print(result.body);
}
```

同步等待的方式调用接口
```dart 
import 'package:http/http.dart';

void main(List<String> arguments) {
    Client()
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'))
        .then((response) => print(response.body))
        .catchError((e) => print('error! $e'));
}
```

### 2.17.2 异步流(Asynchrony Stream)

```dart 
Future<void> main(List<String> arguments) async {
    final myPeriodicStream = Stream.periodic(const Duration(seconds: 1));
    final subscription = myPeriodicStream.listen((event) {
        print('A second has passed');
    });
    
    await Future.delayed(const Duration(seconds: 3));

    subscription.cancel();
}
```

### 2.17.3 异步流生成与操作

```dart
Future<void> main(List<String> arguments) async {
    createMessageStream().listen((event) {
        print(event);
    });

    createMessageStream()
        .map((message) => message.toUpperCase())
        .where((message) => message.length > 7)
        .listen((event) {
        print(event);
    });
}

Stream<String> createMessageStream() async* {
    yield 'Hello!';

    await Future.delayed(const Duration(seconds: 1));

    yield 'Have you heard of...';

    await Future.delayed(const Duration(seconds: 1));

    yield 'FLUTTER';
}
```

# 三、Flutter基础

## 3.1 模块介绍

我们将构建Flutter小部件，这是基本的构建块，明白如何管理状态，通过第三方包了解可变和不可变的状态管理。

## 3.2 Flutter 101

在VSCode中按快捷键`F1`，然后输入`Flutter: New Application Project`，指定项目路径，然后为项目指定名称。

### 3.2.1 配置国内镜像地址

修改 `android` -> `gradle` -> `wrapper` -> `gradle-wrapper.properties` 文件
```properties
distributionUrl=https\://mirrors.cloud.tencent.com/gradle/gradle-7.5-all.zip
```

## 3.3 RangeSelectPage 大纲

## 3.4 创建输入表单

```dart
body: Form(
child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
        TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Minimum',
        ),
        keyboardType: TextInputType.numberWithOptions(
            decimal: false,
            signed: true,
        ),
        ),
        SizedBox(height: 12),
        TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Maximum',
        ),
        keyboardType: TextInputType.numberWithOptions(
            decimal: false,
            signed: true,
        ),
        ),
    ],
    ),
),
),
```

## 3.5 创建组件移除重复代码

```dart
class RangeSelectorTextFormField extends StatelessWidget {
  const RangeSelectorTextFormField({
    super.key,
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
      keyboardType: TextInputType.numberWithOptions(
        decimal: false,
        signed: true,
      ),
    );
  }
}
```