part of 'bmi_cubit.dart';

@immutable
sealed class BmiState {}

final class BmiInitial extends BmiState {}
final class BmiUpdateStates extends BmiState {}
