import 'package:flutter/material.dart';
import 'package:mi_card/UI_OFFICE/top_up_screen.dart';

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction>
    with SingleTickerProviderStateMixin {
  TextEditingController amountController = new TextEditingController();
  TextEditingController receiverController = new TextEditingController();
  List<String> name = [
    'Veronica',
    'Ronald Marta',
    'Salimah Sasa',
    'Rony Albino'
  ];
  List<String> pp = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKcWunfNR-lal19GPSaWoB_Wp3Ig7WpSmfEA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvt7I1ak6YtiFQAMxrT0tYXeuB61wmCFYz5A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx0SbUQwp9o7Y1quHamhUWw4FPIXM7GotU1g&usqp=CAU',
    "https://e7.pngegg.com/pngimages/7/618/png-clipart-man-illustration-avatar-icon-fashion-men-avatar-face-fashion-girl.png"
  ];
  List<String> amount = ['240.99', '322.32', '70.12', '22.72'];
  bool a = false;
  bool b = false;
  bool c = false;
  bool d = false;
  AnimationController _animationController;
  Animation<Size> _heightAnimation;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    _heightAnimation = Tween<Size>(
            begin: Size(double.infinity, 70), end: Size(double.infinity, 200))
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.elasticInOut));
    _heightAnimation.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(left: 25, right: 25),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Transaction',
                  style: TextStyle(
                      letterSpacing: 0.2,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff412567).withOpacity(0.8)),
                ),
              ),
              SizedBox(
                height: 34,
              ),
              Center(
                child: Text(
                  'Balance',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff9698A2)),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Center(
                child: Text(
                  '€ 2.554.00',
                  style: TextStyle(
                      color: Color(0xff381A60),
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 48),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopUpScreen()));
                            // _transactionBottomSheet(context);
                          },
                          child: container(Icon(
                            Icons.send,
                            size: 23,
                            color: Color(0xffA279D7),
                          )),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        _wdget('Transfer')
                      ],
                    ),
                    Column(
                      children: [
                        container(Icon(
                          Icons.topic,
                          size: 23,
                          color: Color(0xffA279D7),
                        )),
                        SizedBox(
                          height: 8,
                        ),
                        _wdget('Top Up')
                      ],
                    ),
                    Column(
                      children: [
                        container(Icon(
                          Icons.credit_card_rounded,
                          size: 23,
                          color: Color(0xffA279D7),
                        )),
                        SizedBox(
                          height: 8,
                        ),
                        _wdget('Bill')
                      ],
                    ),
                    Column(
                      children: [
                        container(Icon(
                          Icons.grid_view,
                          size: 23,
                          color: Color(0xffA279D7),
                        )),
                        SizedBox(
                          height: 8,
                        ),
                        _wdget('More')
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                'Last Transaction',
                style: TextStyle(
                    color: Color(0xff36185E),
                    fontSize: 19,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 20,
              ),
              // ListView.builder(
              //     itemCount: 4,
              //     scrollDirection: Axis.vertical,
              //     physics: NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemBuilder: (context, index) => Padding(
              //           padding: EdgeInsets.only(bottom: 8),
              //           child: Container(
              //             height: 90,
              //             width: MediaQuery.of(context).size.width,
              //             child: Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Row(
              //                   children: [
              //                     Container(
              //                       height: 50,
              //                       width: 50,
              //                       decoration: BoxDecoration(
              //                           borderRadius: BorderRadius.circular(20),
              //                           image: DecorationImage(
              //                               image: NetworkImage(pp[index]),
              //                               fit: BoxFit.fill)),
              //                     ),
              //                     SizedBox(
              //                       width: 12,
              //                     ),
              //                     Column(
              //                       mainAxisSize: MainAxisSize.min,
              //                       crossAxisAlignment: CrossAxisAlignment.start,
              //                       children: [
              //                         Text(
              //                           name[index],
              //                           style: TextStyle(
              //                               color: Color(0xff5D447D),
              //                               fontSize: 14,
              //                               fontWeight: FontWeight.bold),
              //                         ),
              //                         Text(
              //                           'Transfer to bank',
              //                           style: TextStyle(
              //                               color: Color(0xffC6C7CD),
              //                               fontSize: 12,
              //                               fontWeight: FontWeight.bold),
              //                         )
              //                       ],
              //                     )
              //                   ],
              //                 ),
              //                 Text(
              //                   '- €${amount[index]}',
              //                   style: TextStyle(
              //                       color: Color(0xffF287B2),
              //                       fontSize: 14,
              //                       fontWeight: FontWeight.bold),
              //                 )
              //               ],
              //             ),
              //           ),
              //         ))

              ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(bottom: 15),
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            a = !a;
                          });
                          b = false;
                          c = false;
                          d = false;
                        },
                        child: transactionDetail(0, a)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            b = !b;
                          });
                          a = false;
                          c = false;
                          d = false;
                        },
                        child: transactionDetail(1, b)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            c = !c;
                          });
                          b = false;
                          a = false;
                          d = false;
                        },
                        child: transactionDetail(2, c)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            d = !d;
                          });
                          b = false;
                          c = false;
                          a = false;
                        },
                        child: transactionDetail(3, d)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget container(Icon icon) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Color(0xffF9F6FF)),
      child: IconButton(
        icon: icon,
      ),
    );
  }

  Widget _wdget(String abc) {
    return Text(
      abc,
      style: TextStyle(
          color: Color(0xffBEBEC5), fontWeight: FontWeight.bold, fontSize: 13),
    );
  }

  Widget transactionDetail(int n, bool x) {
    return AnimatedContainer(
      curve: Curves.linearToEaseOut,
      duration: Duration(seconds: 1),
      height: x ? 200 : 70,
      // constraints: BoxConstraints(minHeight: 90, maxHeight: 170),
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(pp[n]), fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name[n],
                          style: TextStyle(
                              color: Color(0xff5D447D),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Transfer to bank',
                          style: TextStyle(
                              color: Color(0xffC6C7CD),
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                Text(
                  '- €${amount[n]}',
                  style: TextStyle(
                      color: Color(0xffF287B2),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            x
                ? Text(
                    '                Dear ${name[n]}, '
                    'GreetingsPlease find transaction details for your account number 501#####09307 as below :Transaction Date	Transaction Type	Transaction Amount	Available Balance	Remarks2021-02-19 09:24	Debit	1,020.00	20,697.86	ATM WDL /7156ID01/\MBNL IMADOL',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    overflow: TextOverflow.clip,
                  )
                : Container()
          ],
        ),
      ),
    );
  }

  void _transactionBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Stack(
            children: [
              Container(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 16, bottom: 16),
                        child: Text(
                          'Transfer',
                          style: TextStyle(
                              color: Color(0xffA279D7),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              letterSpacing: 0.6),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          // height: MediaQuery.of(context).size.hei,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 8),
                                    width:
                                        MediaQuery.of(context).size.width / 3.2,
                                    child: TextField(
                                      controller: amountController,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: "amount",
                                          labelStyle: TextStyle(
                                              color: Color(0xffA279D7))),
                                    ),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      controller: receiverController,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: "Receiver ",
                                          labelStyle: TextStyle(
                                              color: Color(0xffA279D7))),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              receiverController.text == ""
                                  ? Container()
                                  : Row(
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      receiverController.text ==
                                                              'hem143'
                                                          ? 'https://media2.artoyz.net/shop/33249-thickbox_default/funko-pop-neymar-da-silva-santos-jr-psg.jpg'
                                                          : ''))),
                                        ),
                                        SizedBox(
                                          width: 14,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              receiverController.text ==
                                                      'hem143'
                                                  ? 'Hem Kumar Rai'
                                                  : '',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                            Text(
                                              receiverController.text ==
                                                      'hem143'
                                                  ? 'Flutter Developer'
                                                  : 'no user with this id',
                                              style: TextStyle(
                                                  color:
                                                      receiverController.text ==
                                                              'hem143'
                                                          ? Colors.grey
                                                          : Colors.red,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                            ],
                          ),
                        ),
                      ),
                      RaisedButton(
                          child: Text('Proceed'),
                          onPressed: () {
                            receiverController.clear();
                            amountController.clear();
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text(receiverController.text == "hem143"
                                  ? 'Transfer Successfully'
                                  : "Transfer Failed no user with this id"),
                              duration: Duration(seconds: 3),
                            ));
                            Navigator.pop(context);
                          })
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }
}
