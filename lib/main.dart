import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(    //MaterialApp to GetMaterialApp change optional

      home: Scaffold(
        appBar: AppBar(
          title: Text("Getx With GetBuilder in Flutter"),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

//------------------------------ Method 1


                SizedBox(
                  height: 20,
                  child: Text("With Id, Value: Hello",
                      style: TextStyle(fontSize: 20)),
                ),
                GetBuilder<Controller>(
                    //<Controller>: This is class name. we were created in our method.

                    init:
                        Controller(), //this is create like object, in builder parameter we are pass one string that name is value. Value is object that access variables and methods in Controller class , this object create one time.

                    id: 'Hello', // we were pass this id in update method
                    builder: (value) => GestureDetector(
                          child: Text(
                            value.counterHelloId.toString(),
                            style: TextStyle(fontSize: 40),
                          ),
                          onTap: () {
                            value.incrementHelloId();
                          },
                        )),


//------------------------------ Method 2


                SizedBox(
                  height: 20,
                  child: Text("With Id, Value: Hi",
                      style: TextStyle(fontSize: 20)),
                ),
                GetBuilder<Controller>(
                  id: "Hi", // we were pass this id in update method
                  builder: (value) => GestureDetector(
                    child: Text(
                      value.counterHiId.toString(),
                      style: TextStyle(fontSize: 40),
                    ),
                    onTap: () {
                      value.incrementHiId();
                    },
                  ),
                ),


//------------------------------ Method 3


                SizedBox(
                  height: 20,
                  child:
                      Text("Without Id Value", style: TextStyle(fontSize: 20)),
                ),
                GetBuilder<Controller>(
                  // id is not here
                  builder: (value) => GestureDetector(
                    child: Text(
                      value.counterWithoutId.toString(),
                      style: TextStyle(fontSize: 40),
                    ),
                    onTap: () {
                      value.incrementWithoutId();
                    },
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
