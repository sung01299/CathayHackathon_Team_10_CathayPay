import 'package:flutter/material.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF005d63),
      appBar: AppBar(
        title: const Text(
          "QR Code",
          style: TextStyle(
            color: Color(0xFF005d63),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        // actions: <Widget>[
        //   Padding(
        //     padding: const EdgeInsets.all(12.0),
        //     child: IconButton(
        //       icon: const Icon(Icons.close),
        //       onPressed: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => const HomeScreen(),
        //           ),
        //         );
        //       },
        //     ),
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: Image(
                        image: AssetImage('assets/images/Code-128.png'),
                        width: 400,
                        height: 80),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('assets/images/QR_Code.png'),
                      height: 300,
                      width: 300,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
