import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiInitial());
  static BmiCubit get (context)=>BlocProvider.of(context);
double newvalue=40 ; 
double Weight = 40.0;
 
updateHeightVAlue(value){
  newvalue=value;
  emit(BmiUpdateStates() );
}
}
