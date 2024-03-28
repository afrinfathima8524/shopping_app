import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/small_text.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({Key? key,required this.text}):super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText =true;
  double textHeight = Dimensions.screenHeight/5.63;
  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf = widget.text.substring(0,textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }else{
      firstHalf=widget.text;
      secondHalf="";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(height: 1.8,size: Dimensions.font16,text: "firsthalf"):Column(
        children: [
          SmallText(text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });
            },
            child: Row(children: [
              hiddenText?SmallText(height: 1.8,size: Dimensions.font16,text: "Show More",color:const  Color.fromARGB(255, 54, 66, 111)):SmallText(height: 1.8,size: Dimensions.font16,text: "Show less",color:const  Color.fromARGB(255, 54, 66, 111),),
              Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: const  Color.fromARGB(255, 54, 66, 111),)
            ],),
          )
        ],
      ),
    );
  }
}