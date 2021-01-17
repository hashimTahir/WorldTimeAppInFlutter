/*
 * Copyright (c) 2021/  1/ 16.  Created by Hashim Tahir
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/routes/Routes.dart';
import 'package:flutter_demo/utils/Constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map hRetrievedDataMap = {};

  @override
  Widget build(BuildContext context) {
    /*Retrieve the data from the route i.e. from loading page*/
    hRetrievedDataMap = ModalRoute.of(context).settings.arguments;

    Constants.hLogger.d("Retrieved data $hRetrievedDataMap");

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
        child: SafeArea(
            child: Column(
          children: [
            FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.hLocationRoute);
                },
                icon: Icon(Icons.edit_location),
                label: Text('Edit Location')),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  hRetrievedDataMap[Constants.hLocation],
                  style: TextStyle(fontSize: 28.0, letterSpacing: 2.0),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              hRetrievedDataMap[Constants.hTime],
              style: TextStyle(fontSize: 66.0, letterSpacing: 2.0),
            )
          ],
        )),
      ),
    );
  }
}
