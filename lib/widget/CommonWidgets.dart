import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';

const _kFontFam = 'MyFlutterApp';
const String _kFontPkg = null;

const IconData wallet =
    IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData asset_4 =
    IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);

final String assetName = 'assets/images/sprites/Asset 7.svg';
final Widget svg = SvgPicture.asset(assetName, semanticsLabel: 'Logo');

class FyiarButton1 extends StatelessWidget {
  const FyiarButton1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: 45,
    //   width: 45,
    //   // decoration: BoxDecoration(
    //   //     border: Border.all(
    //   //       color: Theme.of(context).accentColor,
    //   //     ),
    //   //     borderRadius: BorderRadius.circular(3)),
    //   // child: InkWell(
    //   //   onTap: () {}, // Handle your callback.
    //   //   splashColor: Colors.brown.withOpacity(0.5),
    //   //   child: Padding(
    //   //     padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
    //   //     child: Image.asset(
    //   //         'assets/images/icon-fyiar-baloon.png'),
    //   //   ),
    //   // ),
    // );

    return Container(
        height: 60,
        width: 60,
        margin: EdgeInsets.all(5),
        child: RaisedButton(
          color: Color(0xfff8faf8),
          elevation: 0,
          onPressed: () {},
          // child: Image.asset('assets/images/sprites/fyiar-logo.svg'),
          child: svg,
          padding: EdgeInsets.all(10),
        ));
  }
}

class FyiarButton2 extends StatelessWidget {
  const FyiarButton2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      child: InkWell(
        onTap: () {}, // Handle your callback.
        splashColor: Colors.brown.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
          child: svg,
        ),
      ),
    );
  }
}

class FyiarButton3 extends StatelessWidget {
  const FyiarButton3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 80,
        margin: EdgeInsets.all(5),
        child: ScaleTap(
          scaleMinValue: 1.1,
          onTap: () {
            //Tap
          },
          onLongPress: () {
            //Long press
          },
          child: Container(
            child: Column(
              children: [
                Container(child: svg, width: 50, height: 50,),
                SizedBox(height: 4,),
                Text(
                  'View in room',
                )
              ],
            ),
          ),
        ));
  }
}
