import 'package:flutter/material.dart';
import 'package:pet_adopt/shared.dart';

class DetailPage extends StatelessWidget {
  final String gambar;
  final String name;
  final String age;
  final String desc;
  final bool male;
  DetailPage(this.gambar, this.name, this.age, this.male, this.desc);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height / 2 + 50,
            width: size.width,
            child: Stack(
              children: [
                Container(
                  height: size.height / 2,
                  color: Colors.grey[300],
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(gambar), fit: BoxFit.fill)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 24, left: 24),
                        padding: EdgeInsets.all(1),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: mainColor),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                    elevation: 3,
                    child: Container(
                      width: size.width - 48,
                      padding: EdgeInsets.only(
                          top: 12, left: 24, right: 24, bottom: 12),
                      height: 110,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: mainColor),
                            ),
                            SizedBox(
                              width: 24,
                              child: Image(
                                image: (male)
                                    ? AssetImage("assets/male.png")
                                    : AssetImage("assets/female.png"),
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              desc,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            Text(
                              age,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: mainColor,
                              size: 14,
                            ),
                            SizedBox(width: 3),
                            Text(
                              "Bandung, Jawa Barat, Indonesia",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: size.width - 48,
            margin: EdgeInsets.only(top: 24, right: 24, left: 24, bottom: 12),
            child: Row(
              children: [
                Container(
                    height: 50,
                    width: 55,
                    margin: EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/img.jpeg"),
                            fit: BoxFit.cover))),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: size.width - 48 - 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jenner Harry",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black54),
                            ),
                            Text(
                              "July 21, 2020",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Owner",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ]),
              ],
            ),
          ),
          Container(
            width: size.width - 48,
            margin: EdgeInsets.only(right: 24, left: 24),
            child: Text(
                "Lorem ipsum represents a long-held tradition for designers, typographers and the like. Some people hate it and argue for its demise, but others ignore the hate as they create awesome tools to help create filler text for everyone from bacon lovers to Charlie Sheen fans.Lorem ipsum represents a long-held tradition for designers, typographers and the like. Some people hate it and argue for its demise, but others ignore the hate as they create awesome tools to help create filler text for everyone from bacon lovers to Charlie Sheen fans.Lorem ipsum represents a long-held tradition for designers, typographers and the like. Some people hate it and argue for its demise, but others ignore the hate as they create awesome tools to help create filler text for everyone from bacon lovers to Charlie Sheen fans.",
                style: TextStyle(color: Colors.black45, fontSize: 14)),
          )
        ],
      ))),
      bottomNavigationBar: Container(
        height: 75,
        width: size.width - 48,
        padding: EdgeInsets.only(top: 12, right: 24, left: 24, bottom: 12),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            height: 40,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: mainColor),
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
          ),
          Container(
              height: 40,
              width: size.width - 48 - 60 - 24,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: mainColor),
              child: Center(
                child: Text(
                  "Adoption",
                  style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ))
        ]),
      ),
    );
  }
}
