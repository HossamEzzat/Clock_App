
import 'package:flutter/material.dart';

class ClockScreen extends StatefulWidget {
  const ClockScreen({Key? key}) : super(key: key);

  @override
  State<ClockScreen> createState() => _ClockScreenState();
}

class _ClockScreenState extends State<ClockScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateTime.now().hour  > 12 ? "Good Evening" : 'Good Morning' ,

              style: TextStyle(fontSize: 45 , fontWeight: FontWeight.w700 , color: Colors.teal ),) ,
            SizedBox(height: 30,) ,


            Text(
                DateTime.now().hour > 12 ? '${DateTime.now().hour-12} :${DateTime.now().minute} PM ' : '${DateTime.now().hour-12} :${DateTime.now().minute} AM  '
               ,style :  TextStyle(fontSize: 45 , fontWeight: FontWeight.w700 , color: Colors.teal )),
          ],
        ),
      ),
    );
  }
}
