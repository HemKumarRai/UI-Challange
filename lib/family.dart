import 'package:flutter/material.dart';
import 'package:mi_card/Profile.dart';

class FamilyFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 700,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: profiles.length,
            itemBuilder: (BuildContext, int index) {
              Profile profile = profiles[index];
              return Container(
                margin: EdgeInsets.all(10.0),
                height: 400,
                width: 200,
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom: 5.0,
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                profile.name,
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2),
                              ),
                              Text(
                                profile.description,
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.red,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0)
                          ]),
                      child: Stack(
                        children: <Widget>[
                          Hero(
                            tag: profile.imageUrl,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height: 250,
                                width: 230,
                                image: AssetImage(profile.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
