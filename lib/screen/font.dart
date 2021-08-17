import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Font extends StatefulWidget {
  Font({Key? key}) : super(key: key);

  @override
  _FontState createState() => _FontState();
}

class _FontState extends State<Font> {
  get isChecked => null;

  TextEditingController _nameControler = TextEditingController();
  TextEditingController _numberControler = TextEditingController();
  TextEditingController _uidControler = TextEditingController();
  TextEditingController _year = TextEditingController();
  //TextEditingController _vname = TextEditingController();

  var covsh = 0, cov = 0, sput = 0;
  int count = 0;
  var name = 'Your Name';
  var age;
  var number = '+91 12345 67890';
  var uid = '1234 5895 7845 4568';
  var year = "Age";

  var vname = 'None';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blueGrey[50],
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 25, right: 25),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text("YOUR VERIFICTION"),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: _nameControler,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Name',
                                hintText: 'Jon Deo',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              keyboardType: TextInputType.number,
                              controller: _numberControler,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Phone',
                                hintText: '+91 12345 67890',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: _uidControler,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Adhar Number',
                                hintText: '1234 5678 9012 3456',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _year,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Birth Year',
                                hintText: '2002',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: TextButton(
                                    style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        covsh++;
                                        cov = 0;
                                        sput = 0;
                                        vname = 'Covishield';
                                      });
                                    },
                                    child: Text('Covishield'),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: TextButton(
                                    style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        covsh = 0;
                                        cov++;
                                        sput = 0;
                                        vname = 'Covaxin';
                                      });
                                    },
                                    child: Text('Covaxin'),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: TextButton(
                                    style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        sput++;
                                        covsh = 0;
                                        cov = 0;
                                        vname = 'Sputnik V';
                                      });
                                    },
                                    child: Text('Sputnik V'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: double.infinity,
                              color: Colors.blue,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    number = _numberControler.text;
                                    year = _year.text;
                                    age = int.parse(year);
                                    age = 2021 - age;
                                    name = _nameControler.text;
                                    uid = _uidControler.text;
                                    count++;
                                  });
                                  // Respond to button press
                                },
                                child: Text("SUBMIT"),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('$vname Selected')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          ////This is Cirtificet area/////
          Expanded(
            flex: 2,
            child: Center(
              child: SingleChildScrollView(
                child: (count == 0)
                    ? Center(
                        child: Container(
                          child: Lottie.asset('assets/anicovid.json',
                              width: 500, height: 500),
                        ),
                      )
                    : Container(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 50, left: 100, right: 100),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                  child: Row(
                                children: [
                                  Text('Covaction : 20'),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Text('Covide Shoild : 50'),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Text('SputNic V : 60'),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        count = 0;
                                      });
                                      // Respond to button press
                                    },
                                    child: Text("NEW"),
                                  ),
                                ],
                              )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                      child: Row(
                                    children: [
                                      Container(
                                        width: 210 * 1.9,
                                        height: 297 * 1.9,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image:
                                                AssetImage("assets/covid.png"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 143,
                                            ),
                                            Text(
                                              '                                                                                     $name',
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            SizedBox(height: 3.5),
                                            Text(
                                              '                                                                                     $age',
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            SizedBox(height: 3.5),
                                            Text(
                                              '                                                                                     $uid',
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            SizedBox(height: 3.5),
                                            Text(
                                              '                                                                                     $number',
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 40,
                                            ),
                                            Text(
                                              '                                                                                     $vname',
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            SizedBox(height: 3.5),
                                            Text(
                                              '                                                                                     Today',
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            SizedBox(height: 3.5),
                                            Text(
                                              '                                                                                     84 Days',
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            SizedBox(height: 3.5),
                                            Text(
                                              '                                                                                     Dr. ATANU DEBNATH',
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                            SizedBox(height: 3.5),
                                            Text(
                                              '                                                                                     NABADWIP',
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                                  SizedBox(
                                    width: 50,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
