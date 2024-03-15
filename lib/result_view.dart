import 'package:flutter/material.dart';
import 'package:flutter_application_6_bmi/colors.dart';

class ResultView extends StatelessWidget {
const ResultView({super.key, required this.res});
final double res;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        elevation: 0,
        foregroundColor: AppColors.whitecolor,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: const Icon(Icons.arrow_back_ios_new)),
      ),


body: 


Column(
  children: [
    Expanded(
      child: Container(decoration: BoxDecoration(
        color: AppColors.containerBg,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Normal',style:TextStyle(color:AppColors.greenColor,fontSize: 25),),
             Padding(
               padding: const EdgeInsets.fromLTRB(0, 70, 0, 70),
               child: Text('32.25',style: TextStyle(color: AppColors.whitecolor,fontSize: 60),),
             ),
             Text('your body weight is absloutly normal,Good job.',style: TextStyle(color: AppColors.whitecolor,fontSize: 15),),
        ],),
      ),
      ),
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
              onPressed: (){}, child: const Text('RE-CALCULATE',style: TextStyle(fontWeight: FontWeight.w500),)
              )
              ),

  ],
),


      );
    
    
  }
}