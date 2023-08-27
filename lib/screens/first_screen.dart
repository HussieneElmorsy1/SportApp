import 'package:flutter/material.dart';


class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    // بعد انتهاء مدة الانتظار (3 ثوانٍ)، قم بالانتقال إلى الصفحة التالية
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NextPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Stack(
        fit: StackFit.expand,
        children: [
          // الصورة الخلفية
          Container(
            color: Colors.grey[950], // يمكنك استبداله بلون اختيارك
          ),

          // الصورة في المنتصف
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.66,
              child: Image.asset('assets/Images/logo.png'),
            ),
          ),
          // CircularProgressIndicator والنص
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 10),
                Text("Developed By Semicolon"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("صفحة تالية"),
      ),
    );
  }
}
