import 'package:beauty_textfield/beauty_textfield.dart';
import 'package:flutter/material.dart';
import 'package:pet_adopt/shared.dart';
import 'package:pet_adopt/widgets/category.dart';
import 'package:pet_adopt/widgets/item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: size.width,
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                color: Colors.grey[50]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      SizedBox(height: 2),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: mainColor,
                          ),
                          SizedBox(width: 3),
                          Text(
                            "Bitung, Indonesia",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/img.jpeg"),
                              fit: BoxFit.fill)))
                ],
              ),
            ),
            Container(
                margin:
                    EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Find your favorite",
                        style: TextStyle(fontSize: 24, color: Colors.grey)),
                    SizedBox(height: 1),
                    Text("pet to adopt!",
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: mainColor,
                            wordSpacing: 5)),
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.grey[50]),
              child: Column(children: [
                Row(
                  children: [
                    BeautyTextfield(
                      width: size.width - 48 - 40 - 40,
                      textColor: mainColor,
                      accentColor: Colors.white,
                      margin: EdgeInsets.all(24),
                      height: 50,
                      autofocus: false,
                      backgroundColor: Colors.white,
                      duration: Duration(milliseconds: 300),
                      inputType: TextInputType.text,
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                      ),
                      placeholder: "Search pet",
                      onTap: () {
                        print('Click');
                      },
                      onChanged: (text) {
                        print(text);
                      },
                      onSubmitted: (data) {
                        print(data.length);
                      },
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: mainColor.withOpacity(0.8)),
                      child: Icon(
                        Icons.filter_list,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 6),
                Container(
                  height: 120,
                  padding: EdgeInsets.only(left: 24, right: 24, top: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Category("Dog"),
                      Category("Cat"),
                      Category("Parrot"),
                      Category("Rabbit"),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Item(1, "Emon", "1 years old", "British Shorthair", true),
                Item(2, "Dora", "8 month old", "Turkish Anggora", false),
                Item(5, "Fugy", "1 years old", "Maine Coon", true),
                Item(6, "Remo", "9 month old", "Persian", true)
              ]),
            )
          ],
        )),
      )),
    );
  }
}
