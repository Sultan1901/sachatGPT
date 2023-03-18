import 'package:besure/controllers/datacontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMe = false;
    final controller = TextEditingController();
    final datacontroller = Get.put(DataController());
    return Scaffold(
        backgroundColor: Color(0xFFF2F1F7),
        appBar: AppBar(
          backgroundColor: Color(0xFFF2F1F7),
          toolbarHeight: 190,
          elevation: 0,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/Logo1.Svg',
                  fit: BoxFit.contain,
                  height: 160,
                ),
              ),
              Column(
                children: const [
                  Text(
                    'سمّ',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
        body: GetBuilder<DataController>(
          builder: (datacontroller) => Column(
            children: [
              // Text(datacontroller.controllerM.text),
              Expanded(
                child: SizedBox(
                  // width: double.infinity,
                  child: ListView.separated(
                    itemCount: datacontroller.userMessage.length,
                    itemBuilder: ((context, index) {
                      print(datacontroller.token[index]);

                      return Column(
                        children: [
                          Container(
                            // alignment: Alignment.topRight,
                            // color: Colors.amber,
                            // width: 80,
                            // height: 40,
                            // padding: EdgeInsets.all(30),
                            child: Column(
                              children: [
                                Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      // Icon(
                                      //   Icons.person_outline_rounded,
                                      //   size: 35,
                                      // ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        // width: 200,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                102, 210, 225, 1),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "انت",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14),
                                            ),
                                            Text(
                                              datacontroller.userMessage[index],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              // width: 200,
                              // height: 100,
                              // color: Colors.lightBlue,
                              // margin: EdgeInsets.all(10),
                              child: Directionality(
                                textDirection: TextDirection.ltr,
                                child: Column(
                                  children: [
                                    // CircleAvatar(
                                    //   backgroundColor: Color(0xFFF2F1F7),
                                    //   backgroundImage: AssetImage(
                                    //     "assets/images/Logo1.Svg",
                                    //   ),
                                    // ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        // mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "سمّ روبورت",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            datacontroller.token[index],
                                            // overflow: TextOverflow.ellipsis,
                                            // maxLines: 10,

                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      );
                    }),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 15,
                    ),
                  ),
                ),
              ),

              // SizedBox(
              //   height: 399,
              // ),
              Container(
                color: Colors.white,
                child: TextFormField(
                  controller: datacontroller.controllerM,
                  enableSuggestions: true,
                  autocorrect: true,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'أكتب شيئا ',
                    contentPadding: EdgeInsets.all(35),
                    icon: IconButton(
                      padding: EdgeInsets.only(left: 30),
                      icon: Icon(
                        Icons.arrow_circle_left_rounded,
                        color: Color(0xFF56BCD6),
                        size: 40,
                      ),
                      onPressed: () async {
                        print(datacontroller.controllerM.text);
                        await datacontroller
                            .makePostRequest(datacontroller.controllerM.text);
                        datacontroller.controllerM.clear();
                      },
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                  cursorColor: Color(0xFFA1A1A1),
                ),
              ),
            ],
          ),
        ));
  }
}
