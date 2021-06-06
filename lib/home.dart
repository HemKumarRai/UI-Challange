import 'package:flutter/material.dart';
import 'package:mi_card/UI_OFFICE/statistics.dart';
import 'package:video_player/video_player.dart';
import 'UI_OFFICE/1st_page.dart';
import 'UI_OFFICE/profile.dart';
import 'UI_OFFICE/transaction.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  int selectedIndex = 0;
  TabController homeScreenTabController;
  GlobalKey<ScaffoldState> scafoldKey = new GlobalKey<ScaffoldState>();
  @override
  void initState() {
    homeScreenTabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
          color: Colors.black.withOpacity(.2),
          child: BottomAppBar(
            // color: Theme.of(context).primaryColor,
            color: Theme.of(context).scaffoldBackgroundColor,
            elevation: 10,
            shape: CircularNotchedRectangle(),
            child: _bottomNav(),
          )),
      body: Stack(
        children: [
          body,
        ],
      ),
    );
  }

  Widget _bottomNav() {
    return Container(
        height: 70.0,
        color: Colors.transparent,
        child: TabBar(
            labelColor: Colors.red,
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Colors.black,
            controller: homeScreenTabController,
            onTap: (int index) {
              selectedIndex = index;
              if (mounted) setState(() {});
              print(selectedIndex);
            },
            tabs: [
              Container(
                  // width: (Dimensions.safeAreaWidth - 40) / 4,
                  alignment: Alignment.center,
                  child: Tab(
                    icon: Icon(Icons.grid_view),
                    child: selectedIndex.toInt() == 0
                        ? Stack(
                            children: [
                              Container(
                                  child: ClipPath(
                                clipper: ClipPathClass(),
                                child: Container(
                                  width: 40,
                                  height: 20,
                                  color: Colors.pink,
                                ),
                              )),
                              Positioned(
                                  top: 9,
                                  left: 13,
                                  child: Container(
                                    height: 8,
                                    width: 8,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ))
                            ],
                          )
                        : Container(),
                  )),
              Container(
                  // width: (Dimensions.safeAreaWidth - 40) / 4,
                  alignment: Alignment.center,
                  child: Tab(
                    icon: Icon(Icons.account_circle_outlined),
                    child: selectedIndex.toInt() == 1
                        ? Stack(
                            children: [
                              Container(
                                  child: ClipPath(
                                clipper: ClipPathClass(),
                                child: Container(
                                  width: 40,
                                  height: 20,
                                  color: Colors.pink,
                                ),
                              )),
                              Positioned(
                                  top: 9,
                                  left: 13,
                                  child: Container(
                                    height: 8,
                                    width: 8,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ))
                            ],
                          )
                        : Container(),
                  )),
              Container(
                  // width: (Dimensions.safeAreaWidth - 40) / 4,
                  alignment: Alignment.center,
                  child: Tab(
                    icon: Icon(Icons.swap_horiz),
                    child: selectedIndex.toInt() == 2
                        ? Stack(
                            children: [
                              Container(
                                  child: ClipPath(
                                clipper: ClipPathClass(),
                                child: Container(
                                  width: 40,
                                  height: 20,
                                  color: Colors.pink,
                                ),
                              )),
                              Positioned(
                                  top: 9,
                                  left: 13,
                                  child: Container(
                                    height: 8,
                                    width: 8,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ))
                            ],
                          )
                        : Container(),
                  )),
              Container(
                  // width: (Dimensions.safeAreaWidth - 40) / 4,
                  alignment: Alignment.center,
                  child: Tab(
                    icon: Icon(Icons.account_circle_outlined),
                    child: selectedIndex.toInt() == 3
                        ? Stack(
                            children: [
                              Container(
                                  child: ClipPath(
                                clipper: ClipPathClass(),
                                child: Container(
                                  width: 40,
                                  height: 20,
                                  color: Colors.pink,
                                ),
                              )),
                              Positioned(
                                  top: 9,
                                  left: 13,
                                  child: Container(
                                    height: 8,
                                    width: 8,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ))
                            ],
                          )
                        : Container(),
                  ))
            ]));
  }

  Widget get body {
    return TabBarView(
      controller: homeScreenTabController,
      children: <Widget>[
        Dompetiku(),
        // AllAnnoucementScreen(),
        Statistics(),
        Transaction(),
        UserPage(),
      ],
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(size.width / 2, 0);
    path.quadraticBezierTo(
        size.width / 4, size.height / 8, size.width, size.height);
    path.lineTo(size.width, size.height);

    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class VideoMediator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          // Expanded(
          //   child: CustomScrollView(
          //     slivers: <Widget>[
          //       SliverAppBar(
          //         expandedHeight: 300,
          //         pinned: true,
          //         flexibleSpace: FlexibleSpaceBar(
          //           title: Text('Most Popular'),
          //           background: Hero(
          //             child: Container(
          //               height: 300,
          //               width: double.infinity,
          //               child: Image.network(
          //                 'https://e7.pngegg.com/pngimages/7/618/png-clipart-man-illustration-avatar-icon-fashion-men-avatar-face-fashion-girl.png',
          //                 fit: BoxFit.cover,
          //               ),
          //             ),
          //             tag: 'product',
          //           ),
          //         ),
          //       ),
          //       SliverList(
          //         delegate: SliverChildListDelegate([]),
          //       )
          //     ],
          //   ),
          // ),
          Container(
            padding: EdgeInsets.only(top: 46, bottom: 26, left: 20),
            child: Text(
              'Most popular',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),
          ),
          CheweiListItem(
            videoPlayerController: VideoPlayerController.network(
                "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"),
            looping: false,
          ),
          CheweiListItem(
            videoPlayerController: VideoPlayerController.network(
                "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4?_=1"),
            looping: false,
          ),
          CheweiListItem(
            videoPlayerController: VideoPlayerController.network(
                " https://samplelib.com/lib/preview/mp4/sample-5s.mp4"),
            looping: false,
          ),
        ],
      ),
    );
  }
}
