import 'package:bolc_architecture/CalcBloc.dart';
import 'package:bolc_architecture/CalcEvent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class homepage extends StatelessWidget {

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final _bloc = BlocProvider.of<CalcBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("bloc demo"),
      ),
      body: Column(
        children: [
          TextField(controller: t1,),
          TextField(controller: t2,),
          ElevatedButton(onPressed: () {
            _bloc.add(CalcEvent(int.parse(t1.text), int.parse(t2.text), "Add"));
          }, child: Text("Sum")),
          ElevatedButton(onPressed: () {
            _bloc.add(CalcEvent(int.parse(t1.text), int.parse(t2.text), "Sub"));
          }, child: Text("Sub")),
          ElevatedButton(onPressed: () {
            _bloc.add(CalcEvent(int.parse(t1.text), int.parse(t2.text), "Mul"));
          }, child: Text("Mul")),
          ElevatedButton(onPressed: () {
            _bloc.add(CalcEvent(int.parse(t1.text), int.parse(t2.text), "Div"));
          }, child: Text("Div")),

          BlocBuilder<CalcBloc,int>(builder: (context, state) {
            return Text("Sum = $state");
          },),
        ],
      ),
    );
  }
}
