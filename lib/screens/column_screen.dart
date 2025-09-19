
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_container.dart';

class ColumnScreen extends StatefulWidget {
  @override
  _ColumnScreenState createState() => _ColumnScreenState();
}

class _ColumnScreenState extends State<ColumnScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column Layout')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('مثال Column', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Container(height: 20),
          CustomContainer(
            color: Colors.blue[50],
            width: 120, height: 120,
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('العداد', style: TextStyle(color: Colors.blue)),
              Text('$counter', style: TextStyle(fontSize: 40, color: Colors.blue, fontWeight: FontWeight.bold)),
            ]),
          ),
          Container(height: 30),
          CustomButton(text: 'زيادة +', color: Colors.green, onTap: () => setState(() => counter++)),
          Container(height: 10),
          CustomButton(text: 'نقصان -', color: Colors.red, onTap: () => setState(() => counter--)),
          Container(height: 10),
          CustomButton(text: 'صفر', color: Colors.grey, onTap: () => setState(() => counter = 0)),
        ],
      ),
    );
  }
}
