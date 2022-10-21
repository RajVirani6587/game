import 'package:flutter/material.dart';

class First_Screen extends StatefulWidget {
  const First_Screen({Key? key}) : super(key: key);

  @override
  State<First_Screen> createState() => _First_ScreenState();
}

class _First_ScreenState extends State<First_Screen> {

  bool isDrop = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              color: Colors.blueAccent,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Draggable(
                          childWhenDragging:Container(
                            width: 150,
                            height: 150,
                            ),
                          data: 'lion',
                          child:Text("🦁",style: TextStyle(fontSize: 60),) ,
                          feedback:Text("🦁",style: TextStyle(fontSize: 80,decoration:TextDecoration.none),) ,
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      child: Center(
                        child:DragTarget(
                          onWillAccept: (data){
                            return  data == "lion";
                          },
                          onAccept: (data){
                            setState(() {
                              isDrop = true;
                            });

                          },
                          builder: (context,_,__){
                            return Container(
                              width: 150,
                              height: 150,
                              child: isDrop ? Center(child: Text("🦁",style: TextStyle(fontSize: 80),)):
                              Container(
                                width: 150,
                                height: 150,
                                child: Center(child: Text("Line",style: TextStyle(fontSize: 30),)),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
