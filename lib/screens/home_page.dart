
import 'package:flutter/material.dart';
import 'row_screen.dart';
import 'column_screen.dart';
import 'stack_screen.dart';
import 'container_screen.dart';
import '../widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('اختر التخطيط')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(text: 'Row Layout', color: Colors.blue, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => RowScreen()))),
          Container(height: 10),
          CustomButton(text: 'Column Layout', color: Colors.green, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => ColumnScreen()))),
          Container(height: 10),
          CustomButton(text: 'Stack Layout', color: Colors.orange, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => StackScreen()))),
          Container(height: 10),
          CustomButton(text: 'Container Layout', color: Colors.purple, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => ContainerScreen()))),
        ],
      ),
    );
  }
}

