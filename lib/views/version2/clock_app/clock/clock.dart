
import 'dart:async';
import 'dart:math';

import 'clock_dial_painter.dart';
import 'clock_hands.dart';

import 'package:flutter/material.dart';
import 'clock_face.dart';

typedef TimeProducer = DateTime Function();

class Clock extends StatefulWidget {
  final Color circleColor;
  final Color shadowColor;

  final ClockText clockText;

  final TimeProducer getCurrentTime;
  final Duration updateDuration;

  Clock({
    this.circleColor = const Color(0xffd3e1ed),
    this.shadowColor = const Color(0xffd9e2ed),
    this.clockText = ClockText.arabic,
    this.getCurrentTime = getSystemTime,
    this.updateDuration = const Duration(seconds: 1)
  });

  static DateTime getSystemTime(){
    return new DateTime.now();
  }

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  Timer _timer;
  DateTime dateTime;

  @override
  void initState() {
    super.initState();
    dateTime = DateTime.now();
    this._timer = Timer.periodic(widget.updateDuration, setTime);
  }

  void setTime(Timer timer){
    setState(() {
      dateTime = DateTime.now();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: buildClockCircle(context),
    );
  }


  Container buildClockCircle(BuildContext context){
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 5.0),
            blurRadius: 0.0,
            color: widget.shadowColor,
          ),
          BoxShadow(
            offset: Offset(0.0, 5.0),
            color: widget.circleColor,
            blurRadius: 10,
            spreadRadius: -8,
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          ClockFace(
            clockText: widget.clockText,
            dateTime: dateTime,
          ),
          Container(
            padding: EdgeInsets.all(25),
            width: double.infinity,
            child: CustomPaint(
              painter: ClockDialPainter(
                clockText: widget.clockText
              ),
            ),
          ),
          ClockHands(dateTime: dateTime,),
        ],
      ),
    );
  }

}









