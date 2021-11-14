import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Center(
              child: Text(
                'welcome',
                style: TextStyle(
                  fontSize: 20,
                ),
              ).tr(),
            )),
            Row(
              children: [
                Expanded(
                    child: FlatButton(
                  height: 45,
                  color: Colors.red,
                  onPressed: () {
                    context.locale = Locale('ru', 'RU');
                  },
                  child: Text(
                    "Russian",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: FlatButton(
                  height: 45,
                  color: Colors.green,
                  onPressed: () {
                    context.locale = Locale('en', 'US');
                  },
                  child: Text(
                    'English',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: FlatButton(
                  height: 45,
                  color: Colors.blue,
                  onPressed: () {
                    context.locale = Locale('uz', 'UZ');
                  },
                  child: Text(
                    "Uzbek",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: FlatButton(
                  height: 45,
                  color: Colors.yellow[800],
                  onPressed: () {
                    context.locale = Locale('fr', 'FR');
                  },
                  child: Text(
                    "French",
                    style: TextStyle(color: Colors.white),
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
