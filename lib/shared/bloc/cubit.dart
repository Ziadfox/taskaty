import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:taskaty/shared/bloc/status.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState>{
  BottomNavigationCubit():super(initialstate());
  int itemIndex=0; 
  
void item(index){
itemIndex=index;
emit(taskstate());
} 

}