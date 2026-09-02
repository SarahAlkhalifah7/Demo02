// void main() {
//   int age = 22;
//   double height = 1.65;
//   bool isStudent = true;
//   String name = 'Sarah';
//   List<int> scores = [77, 77, 70];


//   print('$name is $age years old and $height meters tall.');
//   print('Student: $isStudent');
//   print('Scores: $scores');

//   var city = 'Alhasa';
// print('City: $city');
// }

// void main() {
//   final String courseName = 'Mobile App Development';
//   const double pi = 3.14159;

//   dynamic anything = 'I can be any type!';
// courseName = 'Web Development';
// pi = 3.14;
//   print(courseName);
//   print(pi);
//   print(anything);

//   anything = 42;
//   print(anything);

// // 1. Const is fixed at compile-time; final at runtime.

// // 2. Dynamic skips compile-time type checking.
// }



// void greet(String name, String greeting) {
//   print('$greeting, $name!');
// }

// void greetWelcome(String name, [String greeting = 'Welcome']) {
//   print('$greeting, $name!');
// }

// void greetAgain({required String name, String? greeting}) {
//   print('${greeting ?? 'Hi'}, $name!');
// }

// void main() {
//   greet('Sarah', 'Hello');
//   greetWelcome('sarah');
//   greetWelcome('sarah', 'Good morning');
//   greetAgain(name: 'sarah', greeting: 'Hello');
//   greetAgain(name: '');

// greet('Sarah', 'Hey');
// greetWelcome('Sarah');
// greetAgain(name: 'Sarah', greeting: 'Salaam');
// }

// void performOperation(
//   int a,
//   int b,
//   int Function(int, int) operation,
// ) {
//   print(operation(a, b));
// }

// int add(int a, int b) => a + b;
// int subtract(int a, int b) => a - b;
// int multiply(int a, int b) => a*b;

// void main() {
//   performOperation(10, 5, add);
//   performOperation(10, 5, subtract);
//   performOperation(10, 5, multiply);
// }


// void main() {
//   var fruitsList = ['apples', 'oranges', 'bananas', 'blueberry'];
//   var grades = {'quiz1': 85, 'quiz2': 92, 'quiz3':100};
//   var tags = {'dart', 'flutter', 'mobile', 'flutter', 'dart'};

//   print(fruitsList[1]);
//   print(grades['quiz2']);
//   print(tags);
// //A Set only stores unique values — it automatically
// // checks if an item already exists before adding it
// }

// void main() {
//   List<String> fruitsList = [];
//   List<String> moreFruits = ['grape', 'kiwi'];
//   moreFruits.add('mango');
//   List<String> allFruits = [
//     'watermelon',
//     if (fruitsList.isNotEmpty) ...fruitsList,
//     for (var fruit in moreFruits) fruit,
//   ];

//   print(allFruits);

//   //It unpacks all the elements of one list directly into another list,
//   // inline instead of nesting the list inside itself.
// }

// class User {
//   final String username;
//   final String email;

//   User(this.username, this.email);
// }

// void main() {
//   var user = User('ali_ux', 'ali@email.com');
//   var user2 = User('sarah', 'sar@gmail.com');
//   print(user.username);
//   print(user.email);

//   print(user2.username);
//   print(user2.email);
// }


// abstract class Post {
//   final String author;

//   Post(this.author);

//   void render();
// }

// class TextPost extends Post {
//   final String text;

//   TextPost(String author, this.text) : super(author);

//   @override
//   void render() {
//     print('Text post by $author: "$text"');
//   }
// }

// class ImagePost extends Post {
//   final String imageUrl;

//   ImagePost(String author, this.imageUrl) : super(author);

//   @override
//   void render() {
//     print('Image post by $author at $imageUrl');
//   }
// }

// class VideoPost extends Post {
//   final String videoUrl;

//   VideoPost(String author, this.videoUrl) : super(author);

//   @override
//   void render() {
//     print('Video post by $author at $videoUrl');
//   }
// }

// void main() {
//   List<Post> feed = [
//     TextPost('khalid', 'Flutter is amazing!'),
//     ImagePost('omar', 'https://example.com/sunset.png'),
//       VideoPost('sarah', 'https://example.com/clip.mp4'),

//   ];

//   for (final post in feed) {
//     post.render();
//   }
// }


// class Animal {
//   void makeSound() {
//     print('Some generic sound');
//   }
// }

// mixin Swimmer {
//   void swim() {
//     print('I can swim!');
//   }
// }

// class Dolphin extends Animal with Swimmer {}
// class Duck extends Animal with Swimmer {}
// void main() {
//   final dolphin = Dolphin();
//   dolphin.swim();
//   dolphin.makeSound();

//   final duck = Duck();
//   duck.makeSound();
//   duck.swim();

// }


// import 'person.dart';

// void main() {
//   final person = Person('Osama', 'Ali');
//   print(person.greet());

//   // The following line causes a compile-time error because
//   // _firstName is private to person.dart's library.
//   //print(person._firstName);

//   //The reason for the error: in Dart, any identifier 
//   //starting with _ (underscore) is private to the library
//   // (file) it's declared in 
//   // not just to the class.
// }

// import 'person.dart';

// void main() {
//   final person = GreetingPerson('Ali', 'Hussian');
//   person.sayHi();
// }
// //Because part of merges both files into one library 
// // privacy (_) applies per-library, not per-file,
// // so GreetingPerson counts as "inside" the same file.

// class UserProfile {
//   final String name;
//   String? bio;

//   UserProfile(this.name, {this.bio});

//   String getDisplayBio() {
//     return bio ?? 'No bio provided.';
//   }
// }

// void main() {
//   final user1 = UserProfile('Ahmed');
//   final user2 = UserProfile('Layla', bio: 'Flutter Developer');
//   final user3 = UserProfile('Sarah');

//   print(user1.getDisplayBio());
//   print(user2.getDisplayBio());
//     print(user3.getDisplayBio());

// }

// class User {
//   final String username;
//   final String email;

//   User(this.username, this.email);
// }

// abstract class Post {
//   final String author;

//   Post(this.author);

//   void render();
// }

// class TextPost extends Post {
//   final String text;

//   TextPost(String author, this.text) : super(author);

//   @override
//   void render() {
//     print('Text post by $author: "$text"');
//   }
// }

// class ApiResponse<T> {
//   final bool success;
//   final T? data;
//   final String? errorMessage;

//   ApiResponse(this.success, {this.data, this.errorMessage});
// }

// void main() {
//   final userResponse = ApiResponse<User>(
//     true,
//     data: User('khalid', 'khalid@example.com'),
//   );

//   print(userResponse.data?.username);

//   final postResponse = ApiResponse<Post>(
//     true,
//     data: TextPost('Turki', 'Flutter is awesome'),
//   );

//   if (postResponse.success) {
//     postResponse.data?.render();
//   } else {
//     print('Response failed: ${postResponse.errorMessage}');
//   }

//   final errorResponse = ApiResponse<User>(
//     false,
//     errorMessage: 'Unable to load user',
//   );
  
//   print(errorResponse.errorMessage);


//   final intResponse = ApiResponse<int>(true, data: 200);
//   print(intResponse.data);
// }

// Future<String> fetchData() async {
//   await Future.delayed(const Duration(seconds: 2));
//   return 'Fetched Data';
// }

// Future<void> main() async {
//   print('[1] Using async/await');
//   print('[2] Fetching data...');

//   final data = await fetchData();
//   print('[3] Result: $data');

//   print('[4] Using .then()');

//   fetchData().then((value) {
//     print('[6] .then() result: $value');
//   }).catchError((error) {
//     print('[7] Error: $error');
//   });

//   print('[5] Program continues after .then() call');
// }
// //[1] → [2] → (2 sec delay) → [3]
// // → [4] → [5] → (2 sec delay) → [6]

// Stream<int> countStream(int to) async* {
//   for (int i = 1; i <= to; i++) {
//     await Future.delayed(const Duration(seconds: 1));
//     yield i;
//   }
// }

// Future<void> main() async {
//   print('Start counting...');

//   await for (final count in countStream(3)) {
//     print(count);
//   }

//   print('Done');
// }

// Dart feature =>	Line number(s)
// Variables and types =>	26, 27
// Null safety =>	27, 47
// Function definitions	=> 3, 9, 22, 29, 37
// Collections =>	45
// Class definitions =>	5, 16, 25
// Generics =>	22, 25
// Positional parameter definitions =>	9, 37
// Named parameter definitions =>	6, 17, 51–53
// Private members =>	25–34 (_MyHomePageState, _counter, _incrementCounter)
// Importing packages =>	1
// Inheritance =>	5, 16, 25 (extends StatelessWidget / StatefulWidget / State<MyHomePage>)