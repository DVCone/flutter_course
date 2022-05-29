## 01. What are Darts?

Have you ever heard of or even developed a Flutter app? If so, then you already know that Flutter is written in Dart. If not, then welcome to meet Dart.

Dart is an open source and general purpose programming language. Dart was developed by Google and is intended to create multi platform applications such as mobile, desktop, and web.

Dart was initially introduced at the GOTO conference in 2012. This project was founded by Lars Bak and Kasper Lund from Google, until finally the Dart 1.0 version was released on November 14, 2013. In August 2018, Dart 2.0 was released with language changes such as changes to the type system.

Long before there was Flutter, Dart was originally used to create a web that was on Google. The initial purpose of making Dart was to replace JavaScript which was considered to have many weaknesses. Since then, the release of the Flutter SDK for iOS, Android, and web development has been a new highlight of the Dart language.

### Why do you need to learn Darts?

In the book "The Pragmatic Programmer" it is stated that to become a professional software developer we need to learn at least one new language every year. So is there a good reason to start learning programming with Dart?

1. **Dart is a flexible programming language.** Dart can run anywhere be it Android, iOS, or the web. As a developer, of course, it's an advantage to be able to write code and run anywhere.
2. **Dart is an open-source project.** Dart is created by Google, then together with the Dart developer community develop technologies and interesting features that can be added to Dart. If you find a bug or problem with Dart, you can report it or even fix it yourself. Plus you don't have to worry about licensing issues when using Dart. You can contribute to the Dart language in the following repositories:
`https://github.com/dart-lang`.
3. **Darts are used by Flutter.** Since Flutter's appearance, Dart is back in the limelight. Currently there are many companies that use Flutter in their applications. Flutter is arguably a revolutionary project from Google to develop multi platform applications with an attractive UI. For that, if you are interested in developing applications with Flutter, then mastering Dart is fundamental.
4. **Dart has complete tools support.** Almost every text editor or IDE has great support for Dart. You can use IDEs like IntelliJ IDEA, Webstorm, Android Studio or simple editors like VS Code, Sublime text, Atom, or others as per your convenience. 
5. **Darts are easy to learn and great as a first language.** You will be able to understand Dart quickly especially if you are familiar with other popular programming languages like Java, Python, JavaScript, etc. Even if you're just getting started with programming, Dart is a great language. You don't need to install anything, just take advantage of the online compiler from Dart, you can write and run Dart applications. In addition, the Darts documentation and tutorials provided by Google are quite easy to follow, coupled with a simple syntax, and a friendly community to help us learn Dart.

&emsp;
## 02. Characteristics of Dart
Dart is a modern and full-featured language. Dart also has many similarities to other well-known languages such as Java, C#, Javascript, Swift, and Kotlin. One of the main designs of Dart is to make the language familiar to Javascript and Java/C# developers. This means that those who are familiar with both languages can start learning Dart more easily. However, if you are an aspiring developer who is just starting to learn programming and decided Dart as a first language, don't worry. Dart is a convenient and easy-to-learn language to get started with programming.

Let's take the following Dart code snippet as an example:

```dart
main() {
  var name = 'Dicoding';
  String language = 'Dart';
  print('Hello $name. Welcome to $language!');
}
```

If you are familiar with other programming languages such as Java, Kotlin, or Swift, then you should already understand how the code above works. So, the above code will display “Hello Dicoding. Welcome to Darts!” on the console.

Dart as a language has the following characteristics:

1. statically typed,
2. type inference,
3. Interpolated Strings,
4. Multi-paradigm: OOP & Functional.

Dart is a statically typed language, meaning we need to define variables before we can use them. The following code snippet is an example of variable declaration in Dart.

```dart
var name = 'Dicoding';
String language = 'Dart';
```

It can be seen that in Dart we don't need to define the variable data type explicitly. This is because Dart also supports type inference, where data types are automatically detected when a variable is initialized. For example the `name` variable above will be detected as a `String`. In addition, Dart also has dynamic variables. What's that? We will explore this discussion in the variable module.

```dart
print('Hello $name. Welcome to $language!');
```

The code above also shows that Dart has a String interpolation feature. This is a feature where we can insert variables into a String object without concatenation (merging String objects using +). With this feature, of course, we become easier to create dynamic String objects.