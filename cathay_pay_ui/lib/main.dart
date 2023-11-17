import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading: IconButton(
          //   icon: const Icon(Icons.arrow_back),
          //   onPressed: () => {},
          // ),
          backgroundColor: Colors.white,
          title: const Text(
            "Cathay Pay",
            style: TextStyle(
              color: Color(0xff005d63),
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          // actions: <Widget>[
          //   IconButton(
          //     icon: const Icon(Icons.settings),
          //     onPressed: () {},
          //   ),
          // ],
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/rice.png'),
                radius: 25,
              ),
            ),
          ]),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  "My CathayPay Account",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff005d63),
                  ),
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
              child: const Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment Status",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff005d63),
                          ),
                        ),
                        Text(
                          "Payment Progress",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff005d63),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Current Balance: \$3309.00",
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xff005d63),
                          ),
                        ),
                        Text(
                          "Asia Miles Gained: \$679.90",
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xff005d63),
                          ),
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
                      const Text(
                        "Payment Methos",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff005d63),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: 70,
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            child: Row(
                              children: [
                                Icon(Icons.credit_card),
                                SizedBox(width: 5),
                                Text(
                                  "Credit Card / **** 7798",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff005d63),
                                  ),
                                ),
                                SizedBox(width: 95),
                                Icon(
                                  Icons.arrow_right,
                                  color: Color(0xff005d63),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Transaction History",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff005d63),
                              ),
                            ),
                            SizedBox(width: 80),
                            Text(
                              "Sort by Recent",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff005d63),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/rice.png'),
                              radius: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Rice",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(width: 225),
                            Text(
                              "-\$314",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/saka.png'),
                              radius: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Saka",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(width: 225),
                            Text(
                              "+\$90",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/jesus.webp'),
                              radius: 25,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Jesus",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(width: 220),
                            Text(
                              "-\$19",
                              style: TextStyle(fontSize: 16),
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
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.grey.shade200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () => {},
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
