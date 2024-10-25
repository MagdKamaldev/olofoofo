import 'package:circle_sync/features/chats/ui/chats_screen.dart';
import 'package:circle_sync/features/home/ui/home_screen.dart';
import 'package:circle_sync/features/profile/ui/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<Widget> screens = [
    const HomeScreen(),
    const ChatsScreen(),
    const ProfileScreen(),
  ];

  int currentIndex = 0; 

  void changeScreen(int index) {
    currentIndex = index;
    emit(ChangeScreen(index));
  }

}
