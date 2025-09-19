
import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_container.dart';

class StackScreen extends StatefulWidget {
  @override
  _StackScreenState createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack Layout')),
      body: Stack(
        children: [
          // الخلفية
          Container(
            width: double.infinity, height: double.infinity,
            color: Colors.lightBlue[50],
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('مثال Stack', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Container(height: 20),
              Text('الطبقة الأساسية', style: TextStyle(color: Colors.grey)),
              Container(height: 30),
              CustomButton(text: show ? 'إخفاء' : 'إظهار', color: Colors.orange, onTap: () => setState(() => show = !show)),
            ]),
          ),
          // التراكب
          if (show)
            Container(
              width: double.infinity, height: double.infinity,
              color: Colors.black54,
              child: Center(
                child: CustomContainer(
                  color: Colors.white, width: 200, height: 150,
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('نافذة منبثقة', style: TextStyle(fontWeight: FontWeight.bold)),
                    Container(height: 10),
                    Text('محتوى متراكب'),
                    Container(height: 15),
                    CustomButton(text: 'إغلاق', color: Colors.red, onTap: () => setState(() => show = false)),
                  ]),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
