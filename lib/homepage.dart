import 'package:calculatrice/constants/colors.dart';
import 'package:calculatrice/utils/mediaqueryhelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double? answer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      body: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.only(top:MediaQuery.of(context).size.width/100,
                left:MediaQuery.of(context).size.width/90,
                right: MediaQuery.of(context).size.width/90,
                bottom: MediaQuery.of(context).size.width/80),
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            elevation: 15,
            child: Container(
              alignment: Alignment.centerRight,
              width: width(context, 1) ,
              height: height(context, 5),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text('$answer!',
                  style:  TextStyle(
                    fontSize: height(context, 7),
                    color: tdGrey
                  ),
                ),
              ),
            ) ,

          ),
          Container(
            width: width(context, 1),
            height: height(context, 1.42),
            margin: EdgeInsets.all(MediaQuery.of(context).size.width/80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/80),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, 'AC',tdBlue1),),
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '7',tdGrey),),
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '4',tdGrey),),
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '1',tdGrey),),
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '0',tdGrey),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/80),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '+/-',tdBlue1),),
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '8',tdGrey),),
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '5',tdGrey),),
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '2',tdGrey),),
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '.',tdBlue1),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/80),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '%',tdBlue1),),
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '9',tdGrey),),
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '6',tdGrey),),
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '3',tdGrey),),
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '+',tdBlue1),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/80),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '÷',tdBlue1),),
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '×',tdGrey),),
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '-',tdGrey),),
                      InkWell(
                        onTap: (){},
                        child: custum_Button(context, 15, 15, '=',tdGrey),),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ) ,
    );
  }
}

Widget custum_Button(BuildContext context,double h, double w,String t,Color td){
  return Card(
    color: tdWhite,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    elevation: 10,
    child: Container(
      width: width(context, w),
      height: width(context, h),
      alignment: Alignment.center,
      child: Text('$t',
      style: TextStyle(
        fontSize: height(context, 15),
        color: td
      ),),
    ),
  );
}