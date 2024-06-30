<img src="https://github.com/Qcarvalhooliveira/holbertonschool-web_dart/blob/main/0x03-asynchronous/image/dart.png">

# **Dart - Asynchronous** :computer:

## **Description:** :speech_balloon:

* Dart - Asynchronous programming is a key feature in Dart that allows you to write non-blocking code for performing tasks that take time to complete, such as I/O operations, network requests, and timers. By using asynchronous constructs like Future, async, and await, Dart enables developers to run potentially long-running tasks in the background while keeping the main thread responsive. This approach enhances the performance and user experience of applications by preventing tasks like file reading or API calls from blocking the execution flow. Asynchronous programming in Dart is designed to be easy to understand and use, making it a powerful tool for building efficient and responsive applications.

## **Tasks** :books:

#### **0. Users Count**

Create a function usersCount() that prints the number of users.

Function prototype : Future<void> usersCount() Gets the user count by calling the provided function fetchUsersCount(). which will simulate fetching data from an api.

* Do not push 0-util.dart

```
achref@achref:~$ cat 0-main.dart
import '0-users_count.dart';

main() async {
  await usersCount();
}
achref@achref:~$ cat 0-util.dart

Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

achref@achref:~$ dart 0-main.dart
19
achref@achref:~$
```

#### **1. Get User ID**

Create a function getUserID() that returns a future string representing the user’s ID.

Function prototype : Future<String> getUserId()

Gets the user data by calling the provided function fetchUserData() which will simulate fetching data from an api.

```
achref@achref:~$ cat 1-main.dart
import '1-get_user_id.dart';


main() async {
  print(await getUserId());
}
achref@achref:~$ cat 1-util.dart
Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

achref@achref:~$ dart 1-main.dart
7ee9a243-01ca-47c9-aa14-0149789764c3
achref@achref:~$
```

#### **2. Get User**

Sometimes fetching data from an api could produce unwanted results and may cause errors therefore it’s wise to handle these errors before they become a problem.

Create a function getUser() that prints the user’s string representation.

Function prototype : Future<void> getUser()

Gets the user data by calling the provided function fetchUser()

Must use : try-catch If an error occurs the function should print “error caught: <error> ”

```
achref@achref:~$ cat 2-main.dart
import '2-get_user.dart';

main() async {
  getUser();
}
achref@achref:~$ cat 2-util.dart
Future<String> fetchUser() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );

achref@achref:~$ dart 2-main.dart
error caught: Cannot locate user
achref@achref:~$
```

#### **3. Greet User**

Create a function greetUser() that returns a string as follows Hello <username> .

Function prototype : Future<String> greetUser()

Gets the user data by calling the provided function fetchUserData()

Must use try-catch If an error occurs the function should return : error caught: <error>

Create a function loginUser()

Function prototype : Future<String> loginUser()

Should call the provided function checkCredentials() which returns a future bool.

* If checkCredentials() returns true loginUser() should print There is a user: true and call greetUser() to return it’s value
* If checkCredentials() returns false loginUser() should print There is a user: false and return Wrong credentials

Must use try-catch If an error occurs the function should return error caught: <error> 

```
achref@achref:~$ cat 3-main.dart
import '3-greet_user.dart';

main() async {
  print(await loginUser());
}
achref@achref:~$ cat 3-util.dart
Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);

achref@achref:~$ dart 3-main.dart
There is a user: true
Hello admin
achref@achref:~$
```

#### **4. Calcul Total**

Create a function calculateTotal() that calculates the total price of items for a certain user.

* Gets the user data by calling the provided functionfetchUserData()
*Gets the user orders by calling the provided function fetchUserOrders(id) which accepts one argument : ID of the user
*Gets the products price by calling the provided function fetchProductPrice(product) which accepts one argument : product name
* Returns the total price of items
* Must use try-catch
* If an error occurs the function should return -1

```
achref@achref:~$ cat 4-main.dart
import '4-get_sum.dart';


main() async {
  print(await calculateTotal());
}

achref@achref:~$ cat 4-util.dart
import 'dart:convert';

Future<String> fetchUserOrders(String id) async {
  var orders = {
    "7ee9a243-01ca-47c9-aa14-0149789764c3": ["pizza", "orange"]
  };
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(orders[id]));
  } catch (err) {
    return "error caught : $err";
  }
}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> fetchProductPrice(product) async {
  var products = {"pizza": 20.30, "orange": 10, "water": 5, "soda": 8.5};
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(products[product]));
  } catch (err) {
    return "error caught : $err";
  }
}
achref@achref:~$ dart 4-main.dart
30.3
achref@achref:~$
```

#### **5. Rick and Morty Characters**

Create a file “pubspec.yaml” containing the following lines :
```
name: rick_and_morty

dependencies:
  http: ^0.13.3

environment:
  sdk: ">=2.12.0 <3.0.0"
```

Then run : dart pub get

Now we can use http to send requests to an online api.

Create a function printRmCharacters() that prints all Rick and Morty Characters.

* You should use Rick and Morty API to get the data required
* Must use try-catch
* If an error occurs the function should return error caught: <error>

```
achref@achref:~$ cat pubspec.yaml
name: rick_and_morty

dependencies:
  http: ^0.13.3

environment:
  sdk: ">=2.10.0 <3.0.0"

achref@achref:~$
achref@achref:~$ cat 5-main.dart
import 'rick_and_morty.dart';

main() async {
  await printRmCharacters();
}
achref@achref:~$
achref@achref:~$ dart 5-main.dart
Rick Sanchez
Morty Smith
Summer Smith
…
Amish Cyborg
Annie
```

## **Author** :black_nib:

* **Queise Carvalho de Oliveira** - [Linkedin](https://www.linkedin.com/in/queise-carvalho-de-oliveira-50359749/)


## License :page_with_curl:
This project is licensed under the [MIT License](https://opensource.org/license/mit/).
