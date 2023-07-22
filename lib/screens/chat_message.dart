import 'package:flutter/material.dart';
import 'package:medical_healthcare_app/widgets/chat_simple.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Color(0xFF7165D6),
          leadingWidth: 30,
          title: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: [
                CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("images/doctor1.jpg")),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Dr .Doctor Name",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 8, right: 20),
              child: Icon(
                Icons.call,
                color: Colors.white,
                size: 26,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 20),
              child: Icon(
                Icons.video_call,
                color: Colors.white,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, right: 20),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 26,
              ),
            )
          ],
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.only(
            top: 20,
            left: 15,
            right: 15,
            bottom: 80,
          ),
          itemCount: 10,
          itemBuilder: (context, index) => ChatSimple()),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 10)
        ]),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.amber,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 1.6,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "type something", border: InputBorder.none),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.send,
                size: 30,
                color: Color(0xFF7165D6),
              ),
            )
          ],
        ),
      ),
    );
  }
}
