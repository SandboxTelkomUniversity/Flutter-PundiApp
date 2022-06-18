import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/bitmap/logo.png',
              width: 100,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 75),
          ),
          Container(
            margin: EdgeInsets.only(left: 28, right: 28),
            child: Row(
              children: [
                Image.asset(
                  'assets/bitmap/bi.png',
                  width: 28,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 13),
                    child: Text(
                      'Pundi merupakan perusahaan transfer dana yang telah terlisensi oleh Bank Indonesia',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
