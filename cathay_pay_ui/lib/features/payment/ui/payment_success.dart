import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:cathay_pay_ui/features/home/ui/home_screen.dart';
import 'package:cathay_pay_ui/main.dart';

class PaymentSucessScreen extends StatelessWidget {
  const PaymentSucessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Successful!",
          style: GoogleFonts.ubuntu(
              color: const Color(0xff005d63),
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You have",
                  style: GoogleFonts.ubuntu(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 33),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "successfully paid!",
                  style: GoogleFonts.ubuntu(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 33),
                ),
              ],
            ),
            const SizedBox(height: 100),
            RawMaterialButton(
              onPressed: () {},
              elevation: 2.0,
              fillColor: Colors.grey.shade200,
              padding: const EdgeInsets.all(15.0),
              shape: const CircleBorder(),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: const Icon(
                Icons.credit_card,
                size: 100,
                color: Color(0xff005d63),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Color(0xff005d63))),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyApp(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff005d63),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  "Return to home",
                                  style: GoogleFonts.ubuntu(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
