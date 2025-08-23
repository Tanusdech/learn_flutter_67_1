import 'package:flutter/material.dart';
import 'package:learn_flutter_67_1/model/person.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter_67_1/screen/addForm.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: personList.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: personList[index].job.color,
                ),
                margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                padding: EdgeInsets.all(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      personList[index].name,
                      style: GoogleFonts.kanit(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "${personList[index].age} ปี",
                      style: GoogleFonts.kanit(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      personList[index].job.title,
                      style: GoogleFonts.kanit(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      personList[index].job.image,
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
       Padding(
  padding: EdgeInsets.all(10),
  child: SizedBox(
    height: 50,
    width: 50,
    child: IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AddForm(), // หน้าที่จะไป
          ),
        );
      },
      icon: Icon(
        Icons.add,
        size: 30,
        color: Colors.white,
      ),
      color: Colors.deepOrangeAccent,
    ),
  ),
)

      ],
    );
  }
}
