import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  const NotificationRow({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Icon(icon, size: 25),
                        const SizedBox(width: 5),
                        Text(
                          text,
                          style: GoogleFonts.ubuntu(
                              color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
