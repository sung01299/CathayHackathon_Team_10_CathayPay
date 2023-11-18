import 'package:flutter/material.dart';
import 'package:cathay_pay_ui/screens/home_screen.dart';
import 'package:cathay_pay_ui/screens/notification_screen.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentTab = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const NotificationScreen(),
    // const NotificationScreen(),
    // const AccountScreen(),
    // const FeedScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();

  // final ProfileServices profileServices = ProfileServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.grey.shade200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                setState(
                  () {
                    currentScreen = const HomeScreen();
                  },
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                setState(() {
                  currentScreen = const NotificationScreen();
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.credit_card),
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
