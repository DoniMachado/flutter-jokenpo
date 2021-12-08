import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
                title: "Flutter Demo",
                home: Home(),
    );
  }
}



class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  String caminho = "assets/padrao.png";
  String result = "Resultado: ";

  Widget build(BuildContext context) {
    return Scaffold(
                  appBar: AppBar(
                                title: Text("App Jokenpo"),
                                backgroundColor: Colors.purpleAccent,
                      ),
                  body:Column(
                             
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                                       Row(
                                            mainAxisAlignment: MainAxisAlignment.center,                                            
                                            children: [
                                                      Text(result,style: TextStyle(color: Colors.black,fontSize: 20,fontFamily: "Comic Sans"),),                                                      
                                                      ],
                                            ),
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                      Text("Escolha do App")
                                                      ],
                                            ),
                                        Row(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             children: [
                                                       GestureDetector(
                                                              onTap: (){print("clicou");},
                                                              child:  Image.asset(caminho,width: 250,height: 250, ),
                                                              ),
                                                       ],
                                            ),
                                         Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                        Text("Escolha uma das opções abaixo!!")
                                                        ],
                                             ),
                                          Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                          GestureDetector(
                                                                  onTap: (){
                                                                        setState(() {
                                                                            print("clickou");
                                                                            List<String> roll = ["assets/pedra.png","assets/papel.png","assets/tesoura.png"];
                                                                            String element= roll.elementAt(Random().nextInt(3));
                                                                            caminho = element;

                                                                            if(element =="assets/pedra.png")
                                                                            {
                                                                               result = "Resultado: Empate";
                                                                            }
                                                                            else{
                                                                              if(element == "assets/papel.png")
                                                                              {
                                                                                result = "Resultado: Derrota";
                                                                              }
                                                                              else{
                                                                                result = "Resultado: Vitória";
                                                                              }
                                                                            }




                                                                        });
                                                                  },
                                                                  child:Image.asset('assets/pedra.png',width: 250,height: 250, ),
                                                          ),
                                                          GestureDetector(
                                                                  onTap: (){
                                                                        setState(() {
                                                                            print("clickou");
                                                                            List<String> roll = ["assets/pedra.png","assets/papel.png","assets/tesoura.png"];
                                                                            String element= roll.elementAt(Random().nextInt(3));
                                                                            caminho = element;

                                                                            if(element == "assets/papel.png")
                                                                            {
                                                                               result = "Resultado: Empate";
                                                                            }
                                                                            else{
                                                                              if(element == "assets/tesoura.png")
                                                                              {
                                                                                result = "Resultado: Derrota";
                                                                              }
                                                                              else{
                                                                                result = "Resultado: Vitória";
                                                                              }
                                                                            }


                                                                        });
                                                                  },
                                                                  child:Image.asset('assets/papel.png',width: 250,height: 250, ),
                                                          ),
                                                          GestureDetector(
                                                                  onTap: (){
                                                                        setState(() {
                                                                            print("clickou");
                                                                            List<String> roll = ["assets/pedra.png","assets/papel.png","assets/tesoura.png"];
                                                                            String element= roll.elementAt(Random().nextInt(3));
                                                                            caminho = element;

                                                                            if(element == "assets/tesoura.png")
                                                                            {
                                                                               result = "Resultado: Empate";
                                                                            }
                                                                            else{
                                                                              if(element == "assets/pedra.png")
                                                                              {
                                                                                result = "Resultado: Derrota";
                                                                              }
                                                                              else{
                                                                                result = "Resultado: Vitória";
                                                                              }
                                                                            }

                                                                        });
                                                                  },
                                                                  child: Image.asset('assets/tesoura.png',width: 250,height: 250,  )
                                                          ),
                                                          
                                                          
                                                         
                                                         ],
                                              )
                                         ],
                                ),
                  

    );


  }
}



