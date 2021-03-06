import 'package:flutter/material.dart';

class Sucesso extends StatefulWidget {
  String description;
  Sucesso(this.description);
  @override
  _SucessoState createState() => _SucessoState(this.description);
}

class _SucessoState extends State<Sucesso> {
  String description;
  _SucessoState(this.description);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
        child: Stack(  
              children: <Widget>[
                  Positioned(
                  child: Container(
                  alignment: Alignment.center,
                 /* decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0, 0.5],
                      colors: [
                        Color(0xFFdfa409),
                        Color(0XFF963521),
                      ],
                    )
                  ),*/
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        child: Image.asset('assets/background2.png'),
                      ),
                     
                      Container(
                        width: double.infinity,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(40.0),
                            topRight: const Radius.circular(40.0),
                          )
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Center(
                              child: Padding(
                                padding: EdgeInsets.all(16),
                                child: Image.asset('assets/ok.png'),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.all(16),
                                child: Text("$description",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(
                                      context);
                                },
                                child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  width: 200,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0XFF963521),
                                    border: Border.all(
                                      color: Color(0XFF963521),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.all(const Radius.circular(5.0))
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                    Text("Próximo",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                                  ],)
                                ),
                              ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ),
              ],
            ),
          ),
      ),
    );
  }
}