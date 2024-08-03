import "package:ecobankhome/components/card.dart";
import "package:ecobankhome/components/transactions.dart";
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _tapped = 0;
  void _iconClicked(int index) {
    setState(() => {_tapped = index});
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff005b82),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('../assets/image2.jpg'),
          ),
        ),
        actions: [
          Container(
              width: 24,
              height: 17,
              child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage('../assets/ghflag.png'))),
          Icon(
            Icons.arrow_drop_down,
            size: 40,
            color: Color(0xff0082ba),
          ),
        ],
      ),
      body: SingleChildScrollView(
        //padding: EdgeInsets.only(left: 15),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  /// THE FIRST CONTAINER WITH BLUE BACKGROUND
                  Container(
                    width: double.infinity,
                    height: height * .35,
                    color: Color(0xff005b82),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome back,',
                            style: TextStyle(
                                fontFamily: "Poppins-Medium",
                                color: Colors.white38),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'John Glitse',
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Poppins-Medium",
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'MY ACCOUNT',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Poppins-Medium",
                                      color: Colors.white),
                                ),
                                Text(
                                  'VIEW ALL',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: "Poppins-Medium",
                                      color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  /// THE SECOND WITH WHITE BG AND QUICK TRANSACTIONS
                  Container(
                      width: double.infinity,
                      height: height * .42,
                      color: Colors.white,
                      margin: EdgeInsets.only(top: height * .1),
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'QUICK TRANSACTION',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Poppins-Medium",
                                    color: Color(0xff0082ba)),
                              ),
                              Icon(
                                Icons.arrow_drop_down_outlined,
                                size: 40,
                                color: Color(0xff0082ba),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          GridView.count(
                            childAspectRatio: 2.8,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            shrinkWrap: true,
                            crossAxisCount: 2,
                            children: [
                              Transactions(
                                  icon: Icons.phone_android,
                                  text: 'Airtime/Data'),
                              Transactions(
                                icon: Icons.swap_horiz,
                                text: 'Transfer',
                                color: Color(0xffa0e15c),
                              ),
                              Transactions(
                                icon: Icons.book,
                                text: 'Pay Bill',
                                color: Color(0xffa0e15c),
                              ),
                              Transactions(
                                  icon: Icons.boy_outlined,
                                  text: 'Xpress Cash'),
                              Transactions(
                                  icon: Icons.call_to_action_sharp,
                                  text: 'EcobankPay'),
                              Transactions(
                                icon: Icons.call_split,
                                text: 'Split Payments',
                                color: Color(0xffa0e15c),
                              )
                            ],
                          )
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),

                  /// THE THIRD CONTAINER WITH ACTIVITIES
                  Container(
                    width: double.infinity,
                    height: height * .3,
                    color: Colors.white,
                  )
                ],
              ),
            ),

            /// THE CARD CONTAINERS

            Container(
              //margin: EdgeInsets.symmetric(vertical: height * 0.2),
              margin: EdgeInsets.only(top: height * .23, left: 20),
              height: height * .2,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // THE FIRST BLUE CARD
                  Cards(acctype: "Xpress Account"),
                  SizedBox(
                    width: 10,
                  ),
                  // THE SECOND GREEN CARD
                  Cards(
                    acctype: "Current Account",
                    color: Color(0xff00c590),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xff0082ba),
          iconSize: 30,
          currentIndex: _tapped,
          onTap: _iconClicked,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'HOME'),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card), label: 'CARDS'),
            BottomNavigationBarItem(
                icon: Icon(Icons.help_outlined), label: 'HELP'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'NOTIFICATIONS'),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: 'MORE'),
          ]),
    );
  }
}
