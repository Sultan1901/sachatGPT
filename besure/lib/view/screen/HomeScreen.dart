import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  '/Users/dylan./Desktop/sachatGPT/besure/assets/images/Logo1.Svg',
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
        body: Column(
          children: [
            SizedBox(
              height: 511,
            ),
            Container(
              color: Colors.white,
              child: TextFormField(
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
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
                cursorColor: Color(0xFFA1A1A1),
              ),
            ),
          ],
        ));
  }
}
