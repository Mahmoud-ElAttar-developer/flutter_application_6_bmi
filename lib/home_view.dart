import 'package:flutter/material.dart';
import 'package:flutter_application_6_bmi/colors.dart';
import 'package:flutter_application_6_bmi/result_view.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int height =170;
  int weight =70;
  int age =20;
  bool ismale=true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.scaffoldBg,

      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        elevation: 0,
        centerTitle: true,
        title:  Text('bMI Calculator App',style: TextStyle(color:AppColors.whitecolor),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
        
        
        
          // ---1---
           Expanded( 
        
          child: Row(children: [
            // --A--
            Expanded(
              child: GestureDetector(
                onTap: (){
                  ismale=true;
                },
                child: Container(
                decoration: BoxDecoration(
                  // ignore: unnecessary_null_comparison
                  color : ismale ==null ? AppColors.containerBg
                  :(ismale)?AppColors.redColor:AppColors.containerBg ,
                borderRadius:BorderRadius.circular(20),
                ),
                child:  Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.male,size: 80,color: AppColors.whitecolor,),
                    const SizedBox(height:15),
                    Text('Male',style: TextStyle(color: AppColors.whitecolor,fontSize: 18),)
                    ],),
                ),
                            ),
              ),
            ),
            const SizedBox(width: 10,),
            // --B--
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    ismale=false;
                  });
                },
                child: Container(
                decoration: BoxDecoration(
                  // ignore: unnecessary_null_comparison
                  color:!ismale==null?AppColors.containerBg
                 : (ismale)?AppColors.containerBg:  AppColors.redColor,
                borderRadius:BorderRadius.circular(20),
                ),
                child:  Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Icon(Icons.female,size: 80,color: AppColors.whitecolor,),
                  const SizedBox(height: 15,),
                  Text('female',style: TextStyle(color: AppColors.whitecolor,fontSize: 18),)
                  ],),
                ),
                          ),
              ),
            )],
            )
            ),
        
        
        
        
          // ---2---
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.containerBg,
                borderRadius: BorderRadius.circular(15),),
              child:Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Height',style: TextStyle(color: AppColors.whitecolor,fontSize: 18),),
                  const SizedBox(height: 10,),
                  Text('$height cm',style: TextStyle(color: AppColors.whitecolor,fontSize: 25,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  Slider(
                  value: height.toDouble(),
                  min: 130,
                  max: 210,
                  activeColor: AppColors.redColor,
                  inactiveColor: AppColors.buttoncolor,
                   onChanged: (value){
                    setState(() {
                      height=value.toInt();
                    });
                   }),
                ],),
              ),
              )
              
              ),
          
        
        
        
        
        
          // ---3---
           Expanded( 
        
          child: Row(children: [
            // --A--
            Expanded(
              child: Container(
              decoration: BoxDecoration(color:AppColors.containerBg,
              borderRadius:BorderRadius.circular(20),
              ),
              child:  Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
               Text('Weight',style: TextStyle(color: AppColors.whitecolor,fontSize: 18),),
                  Text('$weight cm',style: TextStyle(color: AppColors.whitecolor,fontSize: 25,fontWeight: FontWeight.bold),),
                     Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    IconButton(style: IconButton.styleFrom(
                      backgroundColor: AppColors.buttoncolor,
                      foregroundColor: AppColors.whitecolor
                    ),onPressed: (){
                      setState(() {
                        weight++;
                      });
                    }, icon:const Icon(Icons.add) ),


                    IconButton(style: IconButton.styleFrom(
                      backgroundColor: AppColors.buttoncolor,
                      foregroundColor: AppColors.whitecolor
                    ),onPressed: (){
                      setState(() {
                        weight--;
                      });
                    }, icon:const Icon(Icons.remove) ),
                  ],
                  ),
                     ),
                  ],
                  ),
              ),
            ),
            ),
            const SizedBox(width: 10,),
            // --B--
            Expanded(
              child: Container(
              decoration: BoxDecoration(color:AppColors.containerBg,
              borderRadius:BorderRadius.circular(20),
              ),
              child:  Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
              Text('age',style: TextStyle(color: AppColors.whitecolor,fontSize: 18),),
                  Text('$age',style: TextStyle(color: AppColors.whitecolor,fontSize: 25,fontWeight: FontWeight.bold),),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    IconButton(style: IconButton.styleFrom(
                      backgroundColor: AppColors.buttoncolor,
                      foregroundColor: AppColors.whitecolor
                    ),
                      
                      onPressed: (){
                        setState(() {
                          age++;
                        });
                      }, icon:const Icon(Icons.add) ),
                    IconButton(style: IconButton.styleFrom(
                      backgroundColor: AppColors.buttoncolor,
                      foregroundColor: AppColors.whitecolor
                    ),
                      
                      onPressed: (){
                        setState(() {
                          age--;
                        });
                      }, icon:const Icon(Icons.remove) ),
                  ],
                  ),
                )
                ],),
              ),
                        ),
            )],
            )
            ),
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.redColor,
                foregroundColor: AppColors.whitecolor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
                ),
              onPressed: (){
                 double res =weight/(height*.01*height*.01);
                Navigator.of(context).push(MaterialPageRoute
                (builder: (context)=> ResultView(res: res,)));
              }, 
              child: const Text('CALCULATE',style: TextStyle(fontWeight: FontWeight.w500),)
              )
              ),
        ],
        
        ),
      ),
    );
  }
}