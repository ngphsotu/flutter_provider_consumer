import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';

void main(List<String> args) => runApp(
      ChangeNotifierProvider(
        create: (context) => MySettings(),
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Provier Consumer',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomeScreen(),
    );
  }
}

/*
  // Nhà cung cấp
    class YourProvider extends ChangeNotifier
    notifyListeners();
  --------------------------------------------------
  // Nhà phân phối
    ChangNotifierProvider
    MultiProvider
  --------------------------------------------------
  // Người sử dụng
    Consumer<YourProvider>
    context.watch<YourProvider>()
    context.read<YourProvider>()
  --------------------------------------------------
*/