import 'package:flutter/cupertino.dart';
import 'package:orchid_app/ui/widgets/title_text.dart';

class CalPage extends StatefulWidget {
  const CalPage({Key? key}) : super(key: key);

  @override
  State<CalPage> createState() => _CalPageState();
}

class _CalPageState extends State<CalPage> {
  @override
  Widget build(BuildContext context) {
    return  Column(children: [TitleText(text: "cal page")],);
  }
}
