import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_container.dart';


class RowScreen extends StatefulWidget {
  @override
  _RowScreenState createState() => _RowScreenState();
}

class _RowScreenState extends State<RowScreen> {
  String msg = 'اضغط زر';
  Color clr = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row Layout')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'مثال Row',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(height: 20),
          CustomContainer(
            color: Colors.grey[100],
            child: Text(msg, style: TextStyle(color: clr)),
          ),
          Container(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                text: 'أحمر',
                color: Colors.red,
                onTap: () => setState(() {
                  msg = 'أحمر!';
                  clr = Colors.red;
                }),
              ),
              CustomButton(
                text: 'أزرق',
                color: Colors.blue,
                onTap: () => setState(() {
                  msg = 'أزرق!';
                  clr = Colors.blue;
                }),
              ),
              CustomButton(
                text: 'أخضر',
                color: Colors.green,
                onTap: () => setState(() {
                  msg = 'أخضر!';
                  clr = Colors.green;
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
