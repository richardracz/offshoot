
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:auto_size_text/auto_size_text.dart';

class PortfolioEntry extends StatelessWidget {
  final String titles;
  final String description;
  final String asset;

  const PortfolioEntry({Key key, this.titles, this.description, this.asset}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var image;
    String title = titles;

    var asGroup = AutoSizeGroup();

    List<Color> _colors = [
      Colors.transparent,
      Colors.transparent,
      Color.fromRGBO(0, 0, 0, 0.6)
    ];
    List<double> _stops = [0.0, 0.3, 0.9];




    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 12,
          child: Neumorphic(
              margin: EdgeInsets.only(bottom: 5.0),

              style: NeumorphicStyle(
                  boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(12.0)),
                  shape: NeumorphicShape.flat, depth: -18.0, intensity: 0.7),
              child: Stack(
                children: <Widget>[
                  Container(
                    foregroundDecoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(asset), fit: BoxFit.cover),
                    ),
                  ),
                  Visibility(
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: _colors,
                            stops: _stops,
                          )),
                    ),
                  ),
                ],
              )),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            textBaseline: TextBaseline.ideographic,
            children: <Widget>[

              Expanded(
                child: AutoSizeText(
                  title,
                  group: asGroup,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.only(top: 1.0),
            child: AutoSizeText(
              description,
              style: TextStyle(fontSize: 12),
//              maxLines: 1,
            ),
          ),
        ),
        SizedBox(
          height: 3,
        )
      ],
    );
  }
}
