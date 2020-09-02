import 'package:flutter/material.dart';
import 'package:pet_adopt/shared.dart';

class Category extends StatelessWidget {
  final String category;

  Category(this.category);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 2,
          color: (category == "Cat" ? mainColor : Colors.white),
          child: Container(
            margin: EdgeInsets.only(bottom: 4),
            width: MediaQuery.of(context).size.width / 4 - 24,
            height: 75,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: SizedBox(
                  height: 36,
                  child: (category == "Cat")
                      ? Image(
                          image: AssetImage(getImageFromCategory(category)),
                          color: Colors.white,
                        )
                      : Image(
                          image: AssetImage(getImageFromCategory(category)))),
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          category,
          style: (category == "Cat")
              ? TextStyle(
                  fontSize: 16, color: Colors.grey, fontWeight: FontWeight.bold)
              : TextStyle(fontSize: 16, color: Colors.grey),
        )
      ],
    );
  }

  String getImageFromCategory(String genre) {
    switch (genre) {
      case "Cat":
        return "assets/cat.png";
        break;
      case "Dog":
        return "assets/dog.png";
        break;
      case "Parrot":
        return "assets/parrot.png";
        break;
      case "Rabbit":
        return "assets/rabbit.png";
        break;
      default:
        return "";
    }
  }
}
