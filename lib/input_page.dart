
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reasuable_card.dart';

const activeCardColour= Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 Color maleCardColour= inactiveCardColour;
 Color femaleCardColour= inactiveCardColour;
// gender 1 = Male, 2= Female
 void updateColour(int gender){

   if(gender==1){
    if(maleCardColour==inactiveCardColour){
      maleCardColour=activeCardColour;
      femaleCardColour=inactiveCardColour;
    }
    else {
      maleCardColour= inactiveCardColour;
    }
   }
    if(gender==2){
      if( femaleCardColour==inactiveCardColour){
        femaleCardColour=activeCardColour;
        maleCardColour= inactiveCardColour;
      }
      else{
         femaleCardColour= inactiveCardColour;
      }
   }
 }
   @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title:Text("BMI Calculator"),
       ),
    body:Column(
      children:<Widget>[
        // First Card 
       Expanded(child: Row(children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: (){
                
                setState(() {
                    updateColour(1);
                });
               
              },
            child: ReusableCard(
            colour:  maleCardColour,
            cardChild: IconContent( icon:FontAwesomeIcons.mars, label: "MALE",)),)),

            
          Expanded(child: 
          GestureDetector(
            onTap: (){
             
              setState(() {
               updateColour(2);
              });
            },
        child:  ReusableCard(colour: femaleCardColour,
           cardChild: IconContent( icon:FontAwesomeIcons.venus, label: "FEMALE",)
          )))
       ],),
        ),
        
        // Middle Card 
        Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),

          // Last Card 
          Expanded(child: Row(children: <Widget>[
          Expanded(child: ReusableCard(colour: Color(0xFF1D1E33)),),
          Expanded(child: ReusableCard(colour: Color(0xFF1D1E33)))
       ],),
        ),

        Container(
          color:Color(0xFFEB1555),
          margin:EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: 80.0,
          child:Text("Calculate", textAlign: TextAlign.center,)
        )

      ]
    )
    );
  
      
  }
}
    

    

    