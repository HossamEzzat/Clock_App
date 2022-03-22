
import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int _counter = 1;

    _incrementCounter() {
    setState(() {
      _counter++;
    });

  }

  final CustomTimerController _controller = CustomTimerController();



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xFF2D2F41),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTimer(
              controller: _controller,
              begin: Duration(minutes: _counter),
              end: Duration(),
              builder: (time) {
                return Text(
                    "${time.hours}:${_counter}:${time.seconds}.${time.milliseconds}",
                    style: TextStyle(fontSize: 24.0,color: Colors.white)
                );
              }
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                onPressed: () {
                  _controller.start();

                },
                child: Text('Start'),
                color: Colors.green,
              ),
              RaisedButton(
                onPressed: () {
                  _controller.pause();

                },
                child: const Text('Pause'),
                color: Colors.teal,
              ),
              RaisedButton(
                onPressed: () {
                  _controller.reset();

                },
                child: Text('Reset'),
                color: Colors.red,
              ),


            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),

    );
  }
}
