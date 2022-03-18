import 'CheckList.dart';
import 'NewNote.dart';
import 'NewTask.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:newtotolist/theme/colors.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        HomePage(),
        Center(
          child: Text("Menu"),
        ),
        NewTask(),
        NewNote(),
        Center(
          child: Text("Profile"),
        ),
      ],
    );
  }

  // Widget getFooter() {
  //   return (Container(
  //     height: 110,
  //     child: Stack(
  //       children: [
  //         Positioned(
  //           bottom: 0,
  //           child: Container(
  //             height: 90,
  //             width: MediaQuery.of(context).size.width,
  //             color: Color(0xff292e4e),
  //             padding: EdgeInsets.all(20),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceAround,
  //               children: [
  //                 Container(
  //                   child: Column(
  //                     children: [
  //                       Icon(
  //                         Icons.check_circle,
  //                         color: Colors.white,
  //                       ),
  //                       SizedBox(
  //                         height: 5,
  //                       ),
  //                       Text(
  //                         "My Task",
  //                         style: TextStyle(color: Colors.white, fontSize: 15),
  //                       )
  //                     ],
  //                   ),
  //                 ),
  //                 Container(
  //                   child: Column(
  //                     children: [
  //                       Icon(
  //                         Icons.menu,
  //                         color: Colors.white,
  //                       ),
  //                       SizedBox(
  //                         height: 5,
  //                       ),
  //                       Text(
  //                         "Menu",
  //                         style: TextStyle(color: Colors.white, fontSize: 15),
  //                       )
  //                     ],
  //                   ),
  //                 ),
  //                 Container(
  //                   width: 80,
  //                 ),
  //                 Container(
  //                   child: Column(
  //                     children: [
  //                       Icon(
  //                         Icons.content_paste,
  //                         color: Colors.white,
  //                       ),
  //                       SizedBox(
  //                         height: 5,
  //                       ),
  //                       Text(
  //                         "Quick",
  //                         style: TextStyle(color: Colors.white, fontSize: 15),
  //                       )
  //                     ],
  //                   ),
  //                 ),
  //                 Container(
  //                   child: Column(
  //                     children: [
  //                       Icon(
  //                         Icons.account_circle,
  //                         color: Colors.white,
  //                       ),
  //                       SizedBox(
  //                         height: 5,
  //                       ),
  //                       Text(
  //                         "Profile",
  //                         style: TextStyle(color: Colors.white, fontSize: 15),
  //                       )
  //                     ],
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //         Positioned(
  //           bottom: 25,
  //           left: 0,
  //           right: 0,
  //           child: InkWell(
  //             onTap: () {},
  //             child: Container(
  //               height: 80,
  //               width: 80,
  //               decoration: BoxDecoration(
  //                   gradient: LinearGradient(
  //                     begin: Alignment.topRight,
  //                     end: Alignment.bottomLeft,
  //                     colors: [Color(0xfff96060), Colors.red],
  //                   ),
  //                   shape: BoxShape.circle),
  //               child: Center(
  //                 child: Text(
  //                   "+",
  //                   style: TextStyle(fontSize: 40, color: Colors.white),
  //                 ),
  //               ),
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   ));
  // }

  Widget getFooter() {
    List items = [
      Icons.check_circle,
      Icons.menu,
      Icons.add,
      Icons.content_paste,
      Icons.account_circle
    ];
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        border:
            Border(top: BorderSide(width: 1, color: black.withOpacity(0.06))),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return InkWell(
              onTap: () {
                setState(() {
                  pageIndex = index;
                });
              },
              child: Column(
                children: [
                  Icon(
                    items[index],
                    size: 28,
                    color: pageIndex == index ? thirdColor : black,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  pageIndex == index
                      ? Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                              color: thirdColor, shape: BoxShape.circle),
                        )
                      : Container()
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
