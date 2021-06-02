import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mymodel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Item(),
      child: MaterialApp(
        title: 'My State App',
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My State App'),
      ),
      body: Consumer<Item>(
        builder: (context, value, child) {
          return Consumer<Item>(
            builder: (context, value, child) => Column(
              children: [
                MaterialButton(
                  color: Colors.red,
                  child: Text(
                    'Change Value',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    value.changeValue();
                  },
                ),
                Text(value.meroValue),
              ],
            ),
          );
        },
      ),
    );
  }
}
