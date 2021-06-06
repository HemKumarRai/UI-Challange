import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopUpScreen extends StatefulWidget {
  @override
  _TopUpScreenState createState() => _TopUpScreenState();
}

class _TopUpScreenState extends State<TopUpScreen> {
  TextEditingController amountController = new TextEditingController();
  TextEditingController receiverController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          color: Colors.black.withOpacity(.2),
          child: BottomAppBar(
            // color: Theme.of(context).primaryColor,
            color: Theme.of(context).scaffoldBackgroundColor,
            elevation: 10,
            shape: CircularNotchedRectangle(),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Payments (5)',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _transactionBottomSheet(context);
                      });
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_up_sharp,
                      size: 26,
                    ),
                  )
                ],
              ),
            ),
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff1E8600),
              child: Stack(
                children: [
                  Positioned(
                      left: 7,
                      bottom: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 23,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                          ),
                          Text(
                            'Topup',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3 - 10,
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.info_outline,
                                color: Colors.white,
                                size: 23,
                              ),
                              onPressed: () {}),
                        ],
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 90),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      // elevation: 2,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 22, horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.contact_mail,
                                  size: 40,
                                  color: Color(0xff1E8600),
                                  // color: Colors.,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rs. XXXX.xx',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff616161),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Balance',
                                      style: TextStyle(
                                        color: Color(0xff616161),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(
                              Icons.replay_circle_filled,
                              size: 40,
                              color: Color(
                                (0xff1E8600),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Phone Number',
                      style: TextStyle(fontSize: 14, color: Color(0xff616161)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          color: Color(0xffF7F7F7),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 2),
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.4,
                                    child: TextField(
                                      decoration: new InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                            left: 15,
                                            bottom: 11,
                                            top: 11,
                                            right: 15),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.phone,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff1E8600),
                          ),
                          child: Icon(
                            Icons.mobile_friendly_rounded,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: Color(0xff1E8600),
                          )),
                      child: Text(
                        'Have a Promo Code?',
                        style: TextStyle(
                            color: Color(0xff1E8600),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 64,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xff1E8600),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Proceed',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 64,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Clear',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Card(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                          top: 20,
                          left: 20,
                          bottom: 30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Buy Data Pack',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Container(
                              height: 50,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://i.pinimg.com/originals/75/37/d3/7537d37912c1cf60974df62cf5f228fa.png'),
                                      fit: BoxFit.fill)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
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
