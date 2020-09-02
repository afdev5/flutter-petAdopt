import 'package:flutter/material.dart';
import 'package:pet_adopt/shared.dart';
import 'package:pet_adopt/ui/detail.dart';

class Item extends StatelessWidget {
  final String name;
  final String age;
  final String desc;
  final int index;
  final bool male;

  Item(this.index, this.name, this.age, this.desc, this.male);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage(getImageFromIndex(index), name, age, male, desc)),
        );
      },
      child: Card(
        elevation: 2,
        color: Colors.white,
        margin: EdgeInsets.only(left: 24, right: 24, bottom: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          height: 150,
          width: size.width - 48,
          child: Row(
            children: [
              Container(
                height: 150,
                width: size.width / 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5)),
                    image: DecorationImage(
                        image: AssetImage(getImageFromIndex(index)),
                        fit: BoxFit.fill)),
              ),
              SizedBox(width: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: mainColor),
                  ),
                  SizedBox(height: 6),
                  Row(children: [
                    Text(
                      "Age :",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      age,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ]),
                  SizedBox(height: 6),
                  Text(
                    desc,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 12),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: mainColor),
                    child: Image(
                      image: (male)
                          ? AssetImage("assets/male.png")
                          : AssetImage("assets/female.png"),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String getImageFromIndex(int index) {
    switch (index) {
      case 1:
        return "assets/item1.png";
        break;
      case 2:
        return "assets/item2.png";
        break;
      case 3:
        return "assets/item3.png";
        break;
      case 4:
        return "assets/item4.png";
        break;
      case 5:
        return "assets/item5.png";
        break;
      case 6:
        return "assets/item6.png";
        break;
      default:
        return "";
    }
  }
}
