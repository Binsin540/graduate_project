import 'package:flutter/material.dart';
import 'package:orchid_app/ui/widgets/sub_text.dart';
import 'package:orchid_app/ui/widgets/title_text.dart';

import '../style/app_color.dart';
class ExpandSelector extends StatefulWidget {
   ExpandSelector({this.sValue='',required this.title,required this.selectString,Key? key}) : super(key: key);
List<dynamic>?selectString;
String title;
   int selectedItem=0;
late String sValue;



  @override
  State<ExpandSelector> createState() => _ExpandSelectorState();
}

class _ExpandSelectorState extends State<ExpandSelector> {
IconData uniIcon=Icons.arrow_downward_sharp;
double conHi=0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color(0x42424242)),
            borderRadius: BorderRadius.circular(12),
            color: ColorPattren.lightPink),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TitleText(text: widget.title),
                SubText(text: widget.selectString![widget.selectedItem],color: ColorPattren.orangeAccent),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (conHi == 0) {
                          if (widget.selectString!.length<=3)
                            {conHi=100;}
                          else{
                          if(widget.selectString!.length<=6){
                            conHi=200;
                          }else {if(widget.selectString!.length<=9){
                            conHi = 300;
                          }else{
                          conHi=400;
                          }
                          }}
                          uniIcon = Icons.arrow_upward_rounded;
                        } else {
                         widget.sValue=widget.selectString![widget.selectedItem];
                          uniIcon = Icons.arrow_downward_sharp;
                          conHi = 0;
                        }
                      });
                    },
                    icon: Icon(
                      uniIcon,
                      color: ColorPattren.orangeAccent,
                    )),
              ],
            ),
            Container(
              height: conHi,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.selectString?.length,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                   childAspectRatio: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      widget.selectedItem = index;
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: widget.selectedItem == index
                              ? Colors.pink.shade200
                              : ColorPattren.lightPink,
                          border: Border.all(width: 1,color: Color(0x42424242))),
                      child: TitleText(text: widget.selectString![index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );


  }
}

