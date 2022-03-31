import 'package:bolc_architecture/CalcEvent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalcBloc extends Bloc<CalcEvent,int>
{
  int _result = 0;

  CalcBloc(int initialState) : super(0)
  {
    on((CalcEvent  event, emit) {
      if(event.method == "Add")
        {
          emit(_result = event.a + event.b);
        }
      if(event.method == "Sub")
        {
          emit(_result = event.a - event.b);
        }
      if(event.method == "Mul")
        {
          emit(_result = event.a * event.b);
        }
      if(event.method == "Div")
        {
          emit(_result = (event.a / event.b).toInt());
        }
    });
  }
}