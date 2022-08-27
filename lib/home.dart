import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MySettings extends ChangeNotifier {
  String text = 'bhasdasd';
  Color color = Colors.red;

  void changeText() {
    if (text == 'Hello') {
      text = 'World';
    } else {
      text = 'Hello';
    }
    notifyListeners();
  }

  void changeColor() {
    if (color == Colors.red) {
      color = Colors.green;
    } else {
      color = Colors.red;
    }
    notifyListeners();
  }

  set newColor(Color newColor) {
    color = newColor;
    notifyListeners();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<MySettings>(
      builder: (context, mySettings, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Provider Demo Consumer'),
            backgroundColor: mySettings.color,
          ),
          drawer: Drawer(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text('Change Color'),
                    onPressed: () {
                      mySettings.changeColor();
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    child: const Text('Change Text'),
                    onPressed: () {
                      mySettings.changeText();
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    child: const Text('Change Color to Yellow'),
                    onPressed: () {
                      mySettings.newColor = Colors.orange;
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text('Change Text'),
                  onPressed: () {
                    mySettings.changeText();
                  },
                ),
                const SizedBox(width: 10),
                Text(
                  mySettings.text,
                  style: const TextStyle(fontSize: 35),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
