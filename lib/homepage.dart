import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled1/clock_view.dart';
import 'package:untitled1/stop_watch.dart';
import 'package:untitled1/timer_screen.dart';

import 'alarm_screen.dart';
import 'clock_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(now);
    var formattedDate = DateFormat('EEE, d MMM').format(now);
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Row(
        children: [
          Expanded(
            flex: 13,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ClockScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset("assets/clock_icon.png"),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text('clock',
                          style: TextStyle(fontFamily: 'avenir',
                            color: Colors.white,
                            fontSize: 14,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AlarmScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset("assets/alarm_icon.png"),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text('alarm',
                          style: TextStyle(fontFamily: 'avenir',
                            color: Colors.white,
                            fontSize: 14,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const StopWatchScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset("assets/stopwatch_icon.png"),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text('stop watch',
                          style: TextStyle(fontFamily: 'avenir',
                            color: Colors.white,
                            fontSize: 14,
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TimerScreen()),
                    );
                  },
                  child: Column(
                    children: [
                      Image.asset("assets/timer_icon.png"),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text('timer',
                          style: TextStyle(fontFamily: 'avenir',

                            color: Colors.white,
                            fontSize: 14,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const VerticalDivider(
            color: Colors.white70,
            width: 1,
          ),
          Expanded(
            flex: 48,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Clock",
                    style: TextStyle(fontFamily: 'avenir',
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Text(
                    formattedTime,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),
                  Text(
                    formattedDate,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                   ClockView(size: 250,),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text("Hossam_Ezzat",
                      style: TextStyle(fontFamily: 'avenir',
                        color: Colors.white,
                        fontSize: 20,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
