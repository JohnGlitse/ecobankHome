import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  final String acctype;
  final dynamic color;
  const Cards({super.key, required this.acctype, this.color});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(12),
      width: width * .9,
      height: height * .2,
      decoration: BoxDecoration(
          color: widget.color ?? Color(0xff0082ba),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.acctype,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins-Medium",
                    color: Colors.white),
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
                size: 25,
              )
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            '1442001393171',
            style: TextStyle(
                fontSize: 14,
                fontFamily: "Poppins-Medium",
                color: Colors.white70),
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            padding: EdgeInsets.all(6),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text(
                'Show my balance',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins-Medium",
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
