import 'package:flutter/material.dart';
import 'HomePage.dart';

class NewNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'avenir'),
      home: newNote(),
    );
  }
}

class newNote extends StatefulWidget {
  @override
  _newNoteState createState() => _newNoteState();
}

class _newNoteState extends State<newNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xfff96060),
        elevation: 0,
        title: Text(
          "Thêm ghi chú",
          style: TextStyle(fontSize: 25),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 30,
              color: Color(0xfff96060),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  color: Colors.white),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.85,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chi tiết",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      topLeft: Radius.circular(15)),
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5))),
                              child: TextField(
                                maxLines: 6,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Thêm chi tiết ở đây",
                                ),
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.attach_file,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () {},
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Màu",
                              style: TextStyle(fontSize: 18),
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      child: ListView(
                                        // This next line does the trick.
                                        scrollDirection: Axis.horizontal,
                                        children: <Widget>[
                                          Container(
                                            width: 50,
                                            //color: Colors.red,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: Colors.blue),
                                          ),
                                          Container(
                                            height: 100,
                                            width: 50,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: Colors.pink),
                                          ),
                                          Container(
                                            height: 100,
                                            width: 50,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: Colors.green),
                                          ),
                                          Container(
                                            height: 100,
                                            width: 50,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: Colors.yellow),
                                          ),
                                          Container(
                                            height: 100,
                                            width: 50,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: Colors.brown),
                                          ),
                                          Container(
                                            height: 100,
                                            width: 50,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: Colors.orange),
                                          ),
                                          Container(
                                            height: 100,
                                            width: 50,
                                            margin: EdgeInsets.all(2),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: Colors.purple),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                            //   children: [
                            //     Container(
                            //       height: 50,
                            //       width: 50,
                            //       decoration: BoxDecoration(
                            //           borderRadius:
                            //               BorderRadius.all(Radius.circular(10)),
                            //           color: Colors.pink),
                            //     ),
                            //     Container(
                            //       height: 50,
                            //       width: 50,
                            //       decoration: BoxDecoration(
                            //           borderRadius:
                            //               BorderRadius.all(Radius.circular(10)),
                            //           color: Colors.blue),
                            //     ),
                            //     Container(
                            //       height: 50,
                            //       width: 50,
                            //       decoration: BoxDecoration(
                            //           borderRadius:
                            //               BorderRadius.all(Radius.circular(10)),
                            //           color: Colors.green),
                            //     ),
                            //     Container(
                            //       height: 50,
                            //       width: 50,
                            //       decoration: BoxDecoration(
                            //           borderRadius:
                            //               BorderRadius.all(Radius.circular(10)),
                            //           color: Color(0xfff4ca8f)),
                            //     ),
                            //     Container(
                            //       height: 50,
                            //       width: 50,
                            //       decoration: BoxDecoration(
                            //           borderRadius:
                            //               BorderRadius.all(Radius.circular(10)),
                            //           color: Color(0xff3d3a62)),
                            //     )
                            //   ],
                            // ),
                            SizedBox(
                              height: 40,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  color: Color(0xffff96060)),
                              child: Center(
                                child: Text(
                                  "Thêm ghi chú",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
