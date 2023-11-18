import 'package:cathay_pay_ui/features/payment/ui/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:cathay_pay_ui/features/home/ui/home_screen.dart';
import 'package:cathay_pay_ui/features/qrcode/ui/qr_code_screen.dart';

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
    // const NotificationScreen(),
    const QrCodeScreen(),
    // Add more slides
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();

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
              icon: Icon(Icons.home,
                  size: 35,
                  // color: Color(0xff005d63),
                  color: currentTab == 0
                      ? const Color(0xff005d63)
                      : Colors.grey.shade500),
              onPressed: () {
                setState(
                  () {
                    currentScreen = const HomeScreen();
                    currentTab = 0;
                  },
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.qr_code_scanner,
                  size: 45,
                  color: currentTab == 1
                      ? const Color(0xff005d63)
                      : Colors.grey.shade500),
              onPressed: () {
                setState(
                  () {
                    currentScreen = const QrCodeScreen();
                    currentTab = 1;
                  },
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.credit_card,
                  size: 35,
                  color: currentTab == 2
                      ? const Color(0xff005d63)
                      : Colors.grey.shade500),
              onPressed: () => {
                setState(
                  () {
                    currentScreen = const PaymentScreen();
                    currentTab = 2;
                  },
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
