import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raahee_flutter_assignment/constants.dart';
import 'package:raahee_flutter_assignment/widgets/appDrawer.dart';
import 'package:raahee_flutter_assignment/widgets/custom_tiles.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: AppDrawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => _scaffoldKey.currentState!.openDrawer(),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 3.0,
                              width: 25.0,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              height: 3.0,
                              width: 20.0,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              height: 3.0,
                              width: 15.0,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, navScreen,
                            arguments: "Search Page");
                      },
                      icon: Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Hey, ",
                      style: TextStyle(
                        fontSize: 36.0,
                      ),
                    ),
                    Text(
                      "Sarthak",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36.0,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Welcome to Raahee, find topic that interests you",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff5c5c5c),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: GestureDetector(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Stack(
                        children: [
                          Image.asset(
                            "images/undraw_Notebook_re_id0r.png",
                            height: 230.0,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            top: 150.0,
                            left: 20.0,
                            child: Text(
                              "The current hottest topics",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 170.0,
                            left: 20.0,
                            child: Text(
                              "79 stories",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 178.0,
                            left: 157.0,
                            child: Icon(Icons.arrow_forward_sharp),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, navScreen,
                          arguments: "Stories Page");
                    },
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, navScreen,
                              arguments: "Community Page");
                        },
                        child: Container(
                          height: 130,
                          width: 207,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "images/undraw_Resume_re_hkth.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(left: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Join top people",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Community",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_sharp,
                                      size: 18.0,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, navScreen,
                              arguments: "Write Page");
                        },
                        child: Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "images/undraw_respond_8wjt.png"),
                                fit: BoxFit.cover),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Share your story",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Write",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_sharp,
                                      size: 18.0,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, navScreen,
                        arguments: "Dennis Martin");
                  },
                  child: CustomTile(
                    color: Color(0xff9ae0be),
                    headline: headline1,
                    title: title1,
                    val: 0.64,
                    icon: Icons.menu_book,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, navScreen,
                        arguments: "Danjela in the wonderland");
                  },
                  child: CustomTile(
                    color: Colors.redAccent,
                    headline: headline2,
                    title: title2,
                    val: 0.35,
                    icon: Icons.edit,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
