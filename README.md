<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

This a package is use for show the popup loading for SV9

## Features

- Show dialog loading
- Hide dialog loading

## Getting started

```
flutter pub add sv9_loading
```

## Usage

```
import 'package:flutter/material.dart';
import 'package:sv9_loading/sv9_loading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    init();
    super.initState();
  }

  void init() async {
    await Future.delayed(Duration(milliseconds: 300));
    PopupLoading.show(context);
    await Future.delayed(Duration(seconds: 5));
    PopupLoading.hide(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

```


## Additional information

This package was created by SV9 group.
