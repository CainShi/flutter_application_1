import 'package:flutter/material.dart';  
  
void main() {  
  runApp(MyApp());
}  
  
class MyApp extends StatelessWidget {
  // This widget is the root of your application
  int count = 0;
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        title: Text("first_flutter"),
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: ColoredBox(
            color: Colors.amber),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCount,
        tooltip: "IncrementCount",
        child: const Icon(Icons.add),
      ),
    );
  }

  void _incrementCount() {
    count++;
  }
}