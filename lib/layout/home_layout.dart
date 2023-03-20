import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskaty/shared/bloc/status.dart';
import 'package:taskaty/shared/bloc/status.dart';

import '../shared/bloc/cubit.dart';
import '../shared/bloc/status.dart';


class home extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      
      create:(context)=>BottomNavigationCubit(),
      child: BlocConsumer<BottomNavigationCubit,BottomNavigationState>(
        builder: (context, state) {
          
        return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black,
        title:Center(child: Text(
          "Taskaty_تسكاتي",
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
          )),
      ),
     floatingActionButton:FloatingActionButton(
      backgroundColor:Colors.black,
      onPressed:(){},
     child:Icon(Icons.add,color: Colors.amber,),
      ) ,
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.black,
        fixedColor: Colors.amber,
        unselectedItemColor:Colors.white,
       currentIndex: BlocProvider.of<BottomNavigationCubit>(context).itemIndex,
       onTap:(index){
        BlocProvider.of<BottomNavigationCubit>(context).item(index);
        print(BlocProvider.of<BottomNavigationCubit>(context).itemIndex);
       },
        items:[
          BottomNavigationBarItem(
            icon:Icon(Icons.task_sharp),
            label:"المهمة المطلوبه"
            ),
          BottomNavigationBarItem(
            icon:Icon(Icons.check_circle),
            label:"تمت بنجاح"
            ),
          BottomNavigationBarItem(
            icon:Icon(
              Icons.archive_rounded,
              
              ),
            label:"الارشيف",
            )
        ]
        
        ),
    );
  
      },
      listener: (context,State){},
      ),
      
      );
  }
}
