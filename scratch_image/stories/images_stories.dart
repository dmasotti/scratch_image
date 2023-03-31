import 'package:flutter/widgets.dart';

Widget monarch_logo() => Center(
        child: Column(children: [
      SizedBox(
        width: 100,
        child: Image.asset('assets/monarch_logo.png'),
      ),
    ]));

Widget monarch_purple() => Center(
        child: Column(children: [
      SizedBox(
        width: 350,
        child:
            Image.asset('assets/monarch_purple.png', package: 'scratch_image_core'),
      ),
    ]));
