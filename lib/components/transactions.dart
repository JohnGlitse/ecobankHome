import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  final IconData icon;
  final String text;
  final dynamic color;
  const Transactions(
      {super.key, required this.icon, required this.text, this.color});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 6),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black38),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            widget.icon,
            color: widget.color ?? Color(0xff0082ba),
            size: 35,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Text(
              widget.text,
              style: TextStyle(
                fontFamily: "Poppins-Medium",
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
