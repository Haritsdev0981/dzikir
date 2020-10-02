import 'package:dzikir_pagi_petang/detail/dzikirpagi.dart';
import 'package:dzikir_pagi_petang/detail/dzikirpetang.dart';
import 'package:flutter/material.dart';

class detailHome extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Colors.white,
          )),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var tekswaktudoa = TextStyle(
      fontFamily: 'arial',
      color: Colors.white,
      fontSize: 26.0,
      fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 80),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Dzikir Pagi",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 130.0, top: 10.0),
                  decoration: BoxDecoration(
                      color: Color(0xffFFD600),
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              alignment: Alignment.topLeft,
              child: Text(
                "& Petang",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, DzikirPagi());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 200.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/nationalgeographic/201507010943471_b.jpg"),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20, left: 20),
                        child: Text(
                          "Dzikir Pagi",
                          style: tekswaktudoa,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                openNewScreen(context, DzikirPetang());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 30.0),
                height: 200.0,
                child: Stack(
                  children: <Widget>[
                    backgroundImage(
                        "https://www.islampos.com/wp-content/uploads/2017/07/matahari-malam-pagi-senja-sore-pohon-rumah-.jpg"),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20, left: 20),
                        child: Text(
                          "Dzikir Petang",
                          style: tekswaktudoa,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 80.0,
              height: 2.0,
              color: Color(0xff333333),
            )
          ],
        ),
      ),
    );
  }

  Widget backgroundImage(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.luminosity),
            image: NetworkImage(imageUrl)),
      ),
    );
  }

  void openNewScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
