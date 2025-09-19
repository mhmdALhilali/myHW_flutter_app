
import 'package:flutter/material.dart';
import '../widgets/custom_container.dart';

class ContainerScreen extends StatefulWidget {
  @override
  _ContainerScreenState createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  Color clr = Colors.blue;
  String txt = 'أزرق';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container Layout')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('مثال Container', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Container(height: 30),
          CustomContainer(
            color: clr, width: 200, height: 120,
            child: Center(child: Text(txt, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
          ),
          Container(height: 30),
          Text('اختر اللون:'),
          Container(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(color: Colors.blue, width: 50, height: 50, onTap: () => setState(() {clr = Colors.blue; txt = 'أزرق';}), child: Container()),
              CustomContainer(color: Colors.red, width: 50, height: 50, onTap: () => setState(() {clr = Colors.red; txt = 'أحمر';}), child: Container()),
              CustomContainer(color: Colors.green, width: 50, height: 50, onTap: () => setState(() {clr = Colors.green; txt = 'أخضر';}), child: Container()),
              CustomContainer(color: Colors.purple, width: 50, height: 50, onTap: () => setState(() {clr = Colors.purple; txt = 'بنفسجي';}), child: Container()),
            ],
          ),
        ],
      ),
    );
  }
}
