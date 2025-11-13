import 'package:flutter/material.dart';  
  
void main() {  
  runApp(MyApp());
}  

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TestPage(title: "First Flutter App")
    );
  }
}

class TestPage extends StatefulWidget {
  const TestPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  // This widget is the root of your application
  int _count = 0;
  bool _toggle = true;
  get _dyWidget => _toggle
      ? const Text('WidgetOne')
      : SizedBox(
        width: 200,
        height: 200,
        child: const ColoredBox(color: Colors.greenAccent));

  get _listView => ListView(
    children: <Widget>[
      Text('XIAOMI', style: TextStyle(fontSize: 42),),
      Text('XIAOMI', style: TextStyle(fontSize: 42),),
      Text('XIAOMI', style: TextStyle(fontSize: 42),),
      Text('XIAOMI', style: TextStyle(fontSize: 42),),
      Text('XIAOMI', style: TextStyle(fontSize: 42),),
      Text('XIAOMI', style: TextStyle(fontSize: 42),),
      Text('XIAOMI', style: TextStyle(fontSize: 42),),
      Text('XIAOMI', style: TextStyle(fontSize: 42),),
      Text('XIAOMI', style: TextStyle(fontSize: 42),),
      Text('XIAOMI', style: TextStyle(fontSize: 42),),
      Text('XIAOMI', style: TextStyle(fontSize: 42),),
    ],
  );
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        title: Text("first_flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed this button this many times.'
            ),
            Text(
              '$_count',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 200,
              width: 200,
              child: ColoredBox(
                color: Colors.amber,
                child: Center(child: Text('Box', style: TextStyle(color: Colors.white),))),
            ),
            _dyWidget,
            TestWidget(),
            Expanded(child: _listView),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateWidget,
        tooltip: "IncrementCount",
        child: const Icon(Icons.add),
      ),
    );
  }

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _updateWidget() {
     setState(() {
       _toggle = !_toggle;
     });
  }
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('this is diy widget.');
  }
}
