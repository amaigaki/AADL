import 'package:flutter/material.dart';
import '../pages/dashboard_page.dart';
import '../pages/settings_page.dart';
import '../pages/Locations_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int currentIndex = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  PageController pageController = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Navigator.canPop(context);
      },
      child: Scaffold(
        body: PageView(
          controller: pageController,
          onPageChanged: (pageIndex) {
            setState(() {
              CurvedNavigationBarState navBarState =
                  _bottomNavigationKey.currentState;
              navBarState.setPage(pageIndex);
            });
          },
          children: <Widget>[
            DashboardPage(),
            Location(),
            Setting(),
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          animationDuration: Duration(milliseconds: 400),
          buttonBackgroundColor: Colors.deepPurple,
          color: Colors.deepPurple,
          backgroundColor: Colors.transparent,
          height: 50,
          onTap: (value) {
            print("loll $value");
            setState(() {
              pageController.animateToPage(
                value,
                duration: Duration(milliseconds: 400),
                curve: Curves.linearToEaseOut,
              );
            });
          },
          items: <Widget>[
            Icon(
              Icons.home,
              color: Colors.black54,
            ),
            Icon(
              Icons.dashboard,
              color: Colors.black54,
            ),
            Icon(
              Icons.history,
              color: Colors.black54,
            ),
            Icon(
              Icons.settings,
              color: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
