
import 'package:firsttest/nav_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Gkey =GlobalKey();
  int counter=0;
  TextEditingController emailController =TextEditingController();
  TextEditingController passController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  SafeArea(

      child:  Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin:Alignment.topLeft ,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                Colors.deepPurple,
              ]
            )

          ),
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                const CircleAvatar(
                  radius: 70,
                  backgroundImage:AssetImage('img/person.png'),
                ),
                const SizedBox(
                  height: 50,
                ),

                Container(
                  child: Form(
                    key: Gkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('Sign IN',style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.purple
                        ),),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 5,
                            child: TextFormField(
                              validator: (value) {
                                if(value!.isEmpty){
                                  return 'you should enter an email';
                                }else if(!value.contains('@')){
                                  return 'enter a valid email';
                                }else return null;

                              },
                              controller:emailController ,
                              onChanged: (text){
                                print(text);
                              },
                              keyboardType: TextInputType.emailAddress,

                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                    color: Colors.purple
                                  )
                                ),
                                suffixIcon: const Icon(Icons.person),
                                hintText: 'enter your email',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                                )
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 5,
                            child: TextFormField(
                              controller: passController,
                              obscureText: true,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                    color: Colors.purple
                                  )
                                ),
                                suffixIcon: const Icon(Icons.lock),
                                hintText: 'password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                                )
                              ),
                            ),
                          ),
                        ),
                        MaterialButton(onPressed: (){

                          if(emailController.text=='youssef' && passController.text=='12345'){

                            Navigator.push(context, MaterialPageRoute(builder: (context) =>navScreen() ,));
                            print('yes');
                          }else{print('no');}
                        } ,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                          color: Colors.purple,
                          height: 45,
                          minWidth: 100,
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: const Text('Sign in',style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w600),),


                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Don\'t have an account ?   '),
                            GestureDetector(
                              onTap: (){
                                print('sign UP');
                              },
                              child: const Text('Sign UP   ',style: TextStyle(
                                color: Colors.blue
                              ),),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(30)
                  ),
                  height: 400,
                  width: 300,
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}


























































// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   TextEditingController t1=TextEditingController();
//   TextEditingController t2=TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           body: Container(
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Colors.lightBlue,
//             Colors.purpleAccent,
//           ],
//         )),
//         height: double.infinity,
//         width: double.infinity,
//         child: SingleChildScrollView(
//           padding: EdgeInsets.only(top: 100),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               CircleAvatar(
//                 radius: 80,
//                 backgroundImage: AssetImage('img/person.png'),
//               ),
//               SizedBox(
//                 height: 60,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30), color: Colors.white),
//                 height: 400,
//                 width: 300,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       'SIGN IN',
//                       style: TextStyle(
//                         color: Colors.deepPurple,
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                         fontStyle: FontStyle.italic,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 40 ),
//                       child: Material(
//                         elevation: 5,
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//                         child: TextFormField(
//
//                           controller: t1,
//                           decoration: InputDecoration(
//
//                             hintText: 'enter your email ',
//                             suffixIcon: Icon(Icons.person),
//                             focusedBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.deepPurple),
//                                 borderRadius: BorderRadius.circular(15)),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 40),
//                       child: Material(
//                         elevation: 5,
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//                         child: TextFormField(
//                           obscureText: true,
//
//                           controller: t2,
//                           decoration: InputDecoration(
//                             hintText: 'enter your password ',
//                             suffixIcon: Icon(Icons.lock),
//                             focusedBorder: OutlineInputBorder(
//                                 borderSide: BorderSide(color: Colors.deepPurple),
//                                 borderRadius: BorderRadius.circular(15)),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//
//                     MaterialButton(
//                       onPressed: () {
//                         print(t1.text);
//                         print(t2.text);
//                       },
//                       minWidth: 60,
//                       padding: EdgeInsets.symmetric(horizontal: 60),
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(15)),
//                       height: 60,
//                       child: Text('SIGN IN',
//                           style: TextStyle(color: Colors.white, fontSize: 20)),
//                       color: Colors.deepPurple.shade400,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Don\'t have an account ?   ',
//                           style: TextStyle(color: Colors.grey),
//                         ),
//                         GestureDetector(
//                           child: Text(
//                             'Sign in',
//                             style: TextStyle(color: Colors.lightBlue),
//                           ),
//                           onTap: () {
//
//                           },
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       )),
//     );
//   }
// }
