import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dompetiku extends StatefulWidget {
  @override
  _DompetikuState createState() => _DompetikuState();
}

class _DompetikuState extends State<Dompetiku> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 40, left: 15, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmo4qLCwNPlKMuaSZXhn_xrtl_1U-2Zmu5ng&usqp=CAU'),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      'Dompetiku',
                      style: TextStyle(
                          letterSpacing: 0.2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.notification_important,
                          color: Color(0xff786393),
                        ),
                        onPressed: null)
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 20, bottom: 14, right: 35, top: 14),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xffFF971B),
                          Color(0xffFE823A),
                          Color(0xffFE8A51),
                          Color(0xffFD7987),
                          Color(0xffFC608F),
                          Color(0xffFC4C8A)
                        ]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 15,
                          left: 15,
                          child: Text(
                            'Mr. Joremy Ramian',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                        top: 60,
                        left: 15,
                        child: Text(
                          '5543 4445 ****',
                          style: TextStyle(
                              letterSpacing: 0.6,
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Positioned(
                          bottom: 15,
                          right: 15,
                          child: Text(
                            'VISA',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                letterSpacing: 0.2,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 19),
                          )),
                      Positioned(
                        top: 15,
                        left: 15,
                        child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffFEA94F))),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                            height: 130,
                            width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                color: Color(0xffFD7893).withOpacity(0.7))),
                      ),
                      Positioned(
                        bottom: 25,
                        right: 50,
                        child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffFD7893).withOpacity(0.7))),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                color: Color(0xffFD7893).withOpacity(0.6))),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                            height: 80,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  // topRight: Radius.circular(20)
                                ),
                                color: Color(0xffFE9641).withOpacity(0.6))),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topRight: Radius.circular(40)
                                    // topRight: Radius.circular(20)
                                    ),
                                color: Color(0xffFE9641).withOpacity(0.6))),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 180,
                          width: 180,
                          child: Card(
                            borderOnForeground: true,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 15,
                                  left: 15,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 16,
                                        width: 16,
                                        child: Text(
                                          "€",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color(0xffFE9B51)),
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Icon(
                                        Icons.more_horiz,
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  left: 15,
                                  bottom: 15,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Balance',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff9EA1AD)),
                                      ),
                                      Text(
                                        '€2.5554.00',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Color(0xff44296A)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 250,
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40)),
                          child: Positioned(
                            bottom: 70,
                            child: Card(
                              borderOnForeground: true,
                              shadowColor: Colors.red,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 15,
                                    left: 15,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          height: 25,
                                          width: 25,
                                          child: Icon(
                                            Icons.credit_card,
                                            size: 18,
                                            color: Color(0xffFFA96A),
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Color(0xffFE9B51)
                                                  .withOpacity(0.2)),
                                        ),
                                        SizedBox(
                                          width: 100,
                                        ),
                                        Icon(
                                          Icons.more_horiz,
                                          color: Colors.black.withOpacity(0.3),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      top: 60,
                                      left: 15,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Cash Flow',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffBBBBC3)),
                                          ),
                                          Text(
                                            '+ €200.55',
                                            style: TextStyle(
                                                color: Color(0xff44296A),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          )
                                        ],
                                      )),
                                  Positioned(
                                    bottom: 30,
                                    left: 15,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Expenses',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xffBBBBC3)),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Container(
                                          height: 6,
                                          width: 80,
                                          decoration: BoxDecoration(
                                              color: Color(0xff22C8BE),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 70,
                                    left: 15,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Income',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xffBBBBC3)),
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Container(
                                          height: 6,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: Color(0xffEA4B8B),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 250,
                          width: 180,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40)),
                          child: Card(
                            borderOnForeground: true,
                            shadowColor: Colors.red,
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 15,
                                  left: 15,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 25,
                                        width: 25,
                                        child: Icon(
                                          Icons.credit_card,
                                          size: 18,
                                          color: Color(0xffFFA96A),
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color(0xffFE9B51)
                                                .withOpacity(0.2)),
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Icon(
                                        Icons.more_horiz,
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                    top: 60,
                                    left: 15,
                                    child: Text(
                                      'Top Expenses',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffBBBBC3)),
                                    )),
                                Positioned(
                                  left: 15,
                                  top: 78,
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    child: CustomPaint(
                                      painter: PathPainter(),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 15,
                                  left: 15,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Transportation',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xffBBBBC3)),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '+ €105.44',
                                        style: TextStyle(
                                            color: Color(0xff44296A),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xffA279D7),
                                    Color(0xffFFBF91),
                                    Color(0xffFABA9F)
                                  ])),
                          height: 180,
                          width: 180,
                          child: Stack(children: [
                            Positioned(
                              top: 15,
                              left: 15,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Subscribe your',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'Pro Account',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '€7 /',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'month',
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            fontSize: 16),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 60,
                                width: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://northernvirginiamag.com/wp-content/uploads/2020/03/marijuana-yes-we-cannabis-feature.jpg'))),
                              ),
                            )
                          ]),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ])));
  }
}

class PathPainter extends CustomPainter {
  @override
  // void paint(Canvas canvas, Size size) {
  //   Paint paint = Paint()
  //     ..color = Colors.red
  //     ..style = PaintingStyle.stroke
  //     ..strokeWidth = 3.0;
  //
  //   Path path = Path();
  //   path.cubicTo(-29, 6 * size.height / 4, 3 * size.width / 4, size.height / 4,
  //       size.width, size.height);
  //   canvas.drawPath(path, paint);
  // }

  void paint(Canvas canvas, Size size) {
    canvas.translate(0, size.height / 2);
    final Paint wavePainter = Paint()
      ..color = Color(0xffFE9E55)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;
    double high = size.height;
    double offset = size.width / 8;
    Path path = Path()
      ..moveTo(0, 30)
      // ..quadraticBezierTo(offset, -high / 3, 2 * offset, 0)
      ..quadraticBezierTo(4 * offset, high / 2, 5 * offset, 0)
      ..quadraticBezierTo(offset * 6, -high + 10, offset * 9, 16)
      ..quadraticBezierTo(offset * 11, high / 2, offset * 14, 0);
    // ..quadraticBezierTo(offset * 12, -high / 3, offset * 13, 0);
    canvas.drawPath(path, wavePainter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
