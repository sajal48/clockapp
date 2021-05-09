import 'package:clockapp/UI/homepage/components/sidenavbar.dart';
import 'package:clockapp/bloc/statemanager.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "images/darkbg.png",
                fit: BoxFit.fill,
              ),
            ),
            GlassContainer.frostedGlass(
              height: double.infinity,
              width: double.infinity,
              borderColor: Colors.transparent,
              blur: 3,
              color: Colors.transparent,
              child: Row(
                children: [
                  Expanded(
                    child: SideNavBar(),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Center(child: Consumer<PageChooser>(
                        builder: (context, value, child) {
                          switch (value.getPage()) {
                            case PageState.Clock:
                              return Text("Clock");
                            case PageState.Alarm:
                              return Text("Alarm");
                            case PageState.Timer:
                              return Text("Timer");
                            case PageState.StopWatch:
                              return Text("StopWatch");
                          }
                        },
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
