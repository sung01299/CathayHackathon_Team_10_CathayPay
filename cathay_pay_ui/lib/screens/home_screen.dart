import 'package:flutter/material.dart';
import 'package:cathay_pay_ui/screens/notification_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Cathay Pay",
          style: GoogleFonts.ubuntu(
              color: const Color(0xff005d63),
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.notifications,
                  color: Color(0xff005d63), size: 30),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    "My CathayPay Account",
                    style: GoogleFonts.ubuntu(
                        color: const Color(0xff005d63),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Payment Status",
                            style: GoogleFonts.ubuntu(
                                color: const Color(0xff005d63),
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          Text(
                            "Payment Progress",
                            style: GoogleFonts.ubuntu(
                                color: const Color(0xff005d63),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Current Balance: \$3309.00",
                            style: GoogleFonts.ubuntu(
                                color: const Color(0xff005d63), fontSize: 25),
                          ),
                          Text(
                            "Asia Miles Gained: \$679.90",
                            style: GoogleFonts.ubuntu(
                                color: const Color(0xff005d63), fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // color: const Color.fromARGB(1, 241, 244, 241),
                  color: Colors.grey.shade200),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment Methods",
                          style: GoogleFonts.ubuntu(
                              color: const Color(0xff005d63),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            height: 70,
                            width: MediaQuery.of(context).size.width - 60,
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(10, 20, 10, 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(Icons.credit_card),
                                      const SizedBox(width: 10),
                                      Text(
                                        "Credit Card / **** 7798",
                                        style: GoogleFonts.ubuntu(
                                            color: const Color(0xff005d63),
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.arrow_right,
                                    color: Color(0xff005d63),
                                    size: 35,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Transaction History",
                                style: GoogleFonts.ubuntu(
                                    color: const Color(0xff005d63),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              const SizedBox(width: 100),
                              Text(
                                "Sort by Recent",
                                style: GoogleFonts.ubuntu(
                                    color: const Color(0xff005d63),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        // ListView(),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/rice.png'),
                                radius: 25,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Rice",
                                style: GoogleFonts.ubuntu(
                                    color: const Color(0xff005d63),
                                    fontSize: 18),
                              ),
                              const SizedBox(width: 225),
                              Text(
                                "-\$314",
                                style: GoogleFonts.ubuntu(
                                    color: const Color(0xff005d63),
                                    fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/saka.png'),
                                radius: 25,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Saka",
                                style: GoogleFonts.ubuntu(
                                    color: const Color(0xff005d63),
                                    fontSize: 18),
                              ),
                              const SizedBox(width: 230),
                              Text(
                                "+\$90",
                                style: GoogleFonts.ubuntu(
                                    color: const Color(0xff005d63),
                                    fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/jesus.webp'),
                                radius: 25,
                              ),
                              const SizedBox(width: 10),
                              Text(
                                "Jesus",
                                style: GoogleFonts.ubuntu(
                                    color: const Color(0xff005d63),
                                    fontSize: 18),
                              ),
                              const SizedBox(width: 225),
                              Text(
                                "-\$19",
                                style: GoogleFonts.ubuntu(
                                    color: const Color(0xff005d63),
                                    fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
