import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meal/modules/menu_screen/menu_screen.dart';
import 'package:meal/shared/components/components.dart';

class FindFoodScreen extends StatefulWidget {
  const FindFoodScreen({Key? key}) : super(key: key);
static final String id = 'findfoodscreen';
  @override
  _FindFoodScreenState createState() => _FindFoodScreenState();
}

class _FindFoodScreenState extends State<FindFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 30),
          child: Column(
            children:[
              Expanded(


                  child: Column(

                    children:[
                      
                      Expanded(
                        child: PageView.builder(
                          itemCount: 3,

                          itemBuilder: (context,index)=>
                            Column(
                              children: [
                                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFdjeO_coY5_cb_KnWno-wbAOh2ydJNcaDUA&usqp=CAU'),
                                SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[ Container(
                                    height: 13,
                                    width: 13,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color:index==0? Colors.deepOrange:Colors.grey
                                    ),
                                  ),
                                    SizedBox(width: 5,),
                                    Container(
                                      height: 13,
                                      width: 13,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color:index==1? Colors.deepOrange:Colors.grey
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Container(
                                      height: 13,
                                      width: 13,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color:index==2? Colors.deepOrange:Colors.grey
                                      ),
                                    ),
                                ]),

                                SizedBox(height: 50,),

                                Text('Find Food You Love',style: TextStyle(fontSize: 28),),

                                SizedBox(height: 40,),
                                Text('Discover the best foods from over 1000 restaurants and fast delivery to  your doorstep',style: TextStyle(

                                  fontSize: 16
                                  ,
                                ),textAlign: TextAlign.center,),

                              ],
                            ),
                        ),
                      ),
//                       Expanded(
//
//                       child: PageView(
//                         children: [
// Column(
//   children: [
//     Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFdjeO_coY5_cb_KnWno-wbAOh2ydJNcaDUA&usqp=CAU'),
//     SizedBox(height: 80,),
//
//                                             Text('Find Food You Love',style: TextStyle(fontSize: 28),),
//
//                      SizedBox(height: 40,),
//                       Text('Discover the best foods from over 1000 restaurants and fast delivery to  your doorstep',style: TextStyle(
//
//                         fontSize: 16
// ,
//                       ),textAlign: TextAlign.center,),
//
//   ],
// ),
//                           Column(
//                             children: [
//                               Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFdjeO_coY5_cb_KnWno-wbAOh2ydJNcaDUA&usqp=CAU'),
//
//                               Text('Find Food You Love'),
//                               Text('Discover the best foods from over 1000 restaurants and fast delivery to  your doorstep'),
//
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFdjeO_coY5_cb_KnWno-wbAOh2ydJNcaDUA&usqp=CAU'),
//
//                               Text('Find Food You Love'),
//                               Text('Discover the best foods from over 1000 restaurants and fast delivery to  your doorstep'),
//
//                             ],
//                           ),
//
//
//
//                           //
//                           // Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFdjeO_coY5_cb_KnWno-wbAOh2ydJNcaDUA&usqp=CAU'),
//                           // Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFdjeO_coY5_cb_KnWno-wbAOh2ydJNcaDUA&usqp=CAU'),
//                           // Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFdjeO_coY5_cb_KnWno-wbAOh2ydJNcaDUA&usqp=CAU'),
//                         ],
//                         scrollDirection: Axis.horizontal,
//                       ),
//                     ),


                    ]       ),
          ),
               CustomElevatedButton(buttonText: 'Next', onPressed:(){

                 Navigator.pushNamed(context, MenuScreen.id);

               },buttonColor: Colors.deepOrange ),
              ]),
        ),
      )
      ,
    );
  }
}
