import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class page_tow extends StatelessWidget {
  const page_tow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.all(50),
        width: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "تعريف الاقسام ",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            Divider(
              thickness: 3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(children: [
                  Container(
                    width: 200,
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                          label: Text("وصف المكان"),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 5))),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                          label: Text("الاسم الاجنبي"),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 5))),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                          label: Text("اسم القسم"),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 5))),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                          label: Text("ID "),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 5))),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      child: MaterialButton(
                        onPressed: () {
                          /*  Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return page_tow();
                            }));*/
                        },
                        color: Color.fromARGB(255, 71, 6, 174),
                        child: Text("الغاء الاضافة"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 200,
                      height: 50,
                      child: MaterialButton(
                        onPressed: () {
                          /*  Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return page_tow();
                            }));*/
                        },
                        color: Color.fromARGB(255, 71, 6, 174),
                        child: Text("اضافة"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 200,
                      height: 50,
                      child: MaterialButton(
                        onPressed: () {
                          /*  Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return page_tow();
                            }));*/
                        },
                        color: Color.fromARGB(255, 71, 6, 174),
                        child: Text("  عرض معلومات الاقسام"),
                      ),
                    ),
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
