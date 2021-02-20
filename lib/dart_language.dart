void main() {
  int a;
  print("${a}"); //null
  print("${a ?? 0}"); //0
  print("${a??=1}");//1
  print("${a??=2}");//1
}

class DartTest {}

/// Dart Language

// 1. 修饰符 final(运行时常量) 和 const(编译时常量)
// final在被使用到的时候才会进行初始化, 如果只是被定义, 而没有被使用到, 那么这个变量一直没有被初始化 (可以理解为'懒加载');
// 而const修饰的变量, 一经定义就会在编译期间对其进行初始化

// extends implements Mixin

//异步 async Future Stream
//使用 async 和 await 关键字可以让你避免回调地狱（Callback Hell）并使你的代码更具可读性。

//异常捕捉

//特性
//1.字符串插值 将表达式的值放在字符串中，请使用 ${expression}。若表达式为单个标识符，则可以省略 {}。

//2.避空运算符  Dart 提供了一系列方便的运算符用于处理可能会为空值的变量。其中一个是 ??= 赋值运算符，仅当该变量为空值时才为其赋值
//另外一个避空运算符是 ??，如果该运算符左边的表达式返回的是空值，则会计算并返回右边的表达式。 print(null ?? 12); // <-- Prints 12.

//3.条件属性访问 myObject?.someProperty <==> (myObject != null) ? myObject.someProperty : null
// 可以在一个表达式中连续使用多个 ?.   myObject?.someProperty?.someMethod()

//4.集合字面量 Dart 内置了对 list、map 以及 set 的支持。你可以通过字面量直接创建它们
// final aListOfStrings = ['one', 'two', 'three'];
// final aSetOfStrings = {'one', 'two', 'three'};
// final aMapOfStringsToInts = {
//   'one': 1,
//   'two': 2,
//   'three': 3,
// };
//在使用子类型的内容初始化列表，但仍希望列表为 List <BaseType> 时，指定其类型很方便,使用final aListOfBaseType = <BaseType>[SubType(), SubType()];

//5.级连操作符
