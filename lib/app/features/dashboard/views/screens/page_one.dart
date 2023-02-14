import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_management/app/features/dashboard/views/screens/page_tow.dart';

class page_one extends StatelessWidget {
  const page_one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.all(50),
        width: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "اضافه الاجهزة ",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            Divider(
              thickness: 3,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  Container(
                    width: 200,
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                          labelText: "تم شراء الجهاز من",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 5))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                          label: Text("سعر شراء الجهاز"),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 5))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                          label: Text("تاريخ الشراء"),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 5))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                          label: Text("موقع الجهاز "),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 5))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                      child: Text("الغاء الاضافة"),
                    ),
                  )
                ]),
                Column(
                  children: [
                    Container(
                      width: 200,
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                            label: Text("وصف الجهاز"),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 5))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                            label: Text("الصنف "),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 5))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                            label: Text("الشركة المصنعة"),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 5))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                            label: Text("موديل الجهاز "),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 5))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
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
                        child: Text("  عرض معلومات الاجهزة"),
                      ),
                    )
                  ],
                ),
                Column(children: [
                  Container(
                    width: 200,
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                          label: Text("اسم الجهاز"),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 5))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                          label: Text("الكود"),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 5))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                          label: Text("Criticality"),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 5))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                          label: Text("الرقم التسلسلي"),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 5))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                  )
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
