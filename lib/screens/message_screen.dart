import 'package:flutter/material.dart';
import 'package:medical_healthcare_app/screens/chat_message.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});

  List imge = [
    ["doctor1.jpg"],
    ["doctor2.jpg"],
    ["doctor3.jpg"],
    ["doctor4.jpg"],
    ["doctor1.jpg"],
    ["doctor2.jpg"]
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Messages",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.search, color: Color(0xFF7165D6))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Active Now",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 90,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 2,
                              blurRadius: 10)
                        ]),
                    child: Stack(
                      textDirection: TextDirection.rtl,
                      children: [
                        Center(
                          child: Container(
                            width: 65,
                            height: 65,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Container(
                                child: Image.asset(
                                  "images/${imge[index][0]}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4),
                          padding: EdgeInsets.all(3),
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Recent Chat",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: imge.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    minVerticalPadding: 20,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatMessage(),
                          ));
                    },
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/${imge[index][0]}"),
                    ),
                    title: Text(
                      "Dr .Doctor Name",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Hello , Doctor are your there ? ",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    trailing: Text(
                      "12:30",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
