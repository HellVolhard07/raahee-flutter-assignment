import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  Color? color;
  IconData? icon;
  String? headline;
  String? title;
  double? val;

  CustomTile({this.headline, this.title, this.val, this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          color: Color(0xffe8e8e8),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 5.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Icon(
                        icon,
                      ),
                    ),
                    PopupMenuButton(
                        elevation: 20.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Text("Resume"),
                                value: 1,
                              ),
                              PopupMenuItem(
                                child: Text("Remove"),
                                value: 2,
                              )
                            ]),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  headline!,
                  style: TextStyle(
                    color: Color(0xff9599a0),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  '"$title"',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200.0),
                    child: LinearProgressIndicator(
                      minHeight: 7.0,
                      value: val!.toDouble(),
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Color(0xff5a5a5a)),
                      backgroundColor: Color(0xffbbbbbb),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Hooora, you have read ",
                      style: TextStyle(
                        color: Color(0xff9599a0),
                      ),
                    ),
                    Text(
                      "${(val! * 100).toInt()} %",
                      style: TextStyle(
                        color: Color(0xff5a5a5a),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Expanded(
// flex: 2,
// child: Padding(
// padding: const EdgeInsets.only(
// top: 8.0,
// right: 10.0,
// ),
// child: GestureDetector(
// child: ClipRRect(
// borderRadius: BorderRadius.circular(20.0),
// child: Stack(
// children: [
// Image.network(
// communityImage,
// ),
// Positioned(
// top: 90.0,
// left: 20.0,
// child: Text(
// "Join top people",
// style: TextStyle(
// fontSize: 14.0,
// ),
// ),
// ),
// Positioned(
// top: 105.0,
// left: 20.0,
// child: Text(
// "Community",
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 22.0,
// ),
// ),
// ),
// Positioned(
// top: 109.0,
// left: 150.0,
// child: Icon(
// Icons.arrow_forward_sharp,
// ),
// ),
// ],
// ),
// ),
// onTap: () {
// print("community");
// },
// ),
// ),
// ),
// Expanded(
// flex: 1,
// child: Padding(
// padding: const EdgeInsets.only(
// top: 8.0,
// left: 10.0,
// ),
// child: GestureDetector(
// child: ClipRRect(
// borderRadius: BorderRadius.circular(20.0),
// child: Stack(
// children: [
// Image.network(
// writeImage,
// ),
// Positioned(
// top: 90.0,
// left: 20.0,
// child: Text(
// "Share your story",
// style: TextStyle(
// fontSize: 14.0,
// ),
// ),
// ),
// Positioned(
// top: 105.0,
// left: 20.0,
// child: Text(
// "Write",
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 22.0,
// ),
// ),
// ),
// Positioned(
// top: 109.0,
// left: 150.0,
// child: Icon(
// Icons.arrow_forward_sharp,
// ),
// ),
// ],
// ),
// ),
// onTap: () {
// print("write");
// },
// ),
// ),
// ),
// ],
// ),
