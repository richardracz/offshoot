import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Offerings extends StatelessWidget {
  const Offerings({
    Key key, this.description, this.duration, this.price,
  }) : super(key: key);

  final String description;
  final String duration;
  final String price;
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: (){},
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(description, style: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'Benzin'),),
          Text(duration),
          SizedBox(
            height: 8,
          ),
          Text(price, style: TextStyle(fontWeight: FontWeight.w700))
        ],
      ),
    );
  }
}
