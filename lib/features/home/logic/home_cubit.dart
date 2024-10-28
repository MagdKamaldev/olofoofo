import 'package:circle_sync/core/networks/api_error_handler.dart';
import 'package:circle_sync/features/add_post/ui/add_post_screen.dart';
import 'package:circle_sync/features/chats/ui/chats_screen.dart';
import 'package:circle_sync/features/home/data/repos/home_repo.dart';
import 'package:circle_sync/features/home/logic/home_state.dart';
import 'package:circle_sync/features/home/ui/home_screen.dart';
import 'package:circle_sync/features/notifications/ui/notifications_screen.dart';
import 'package:circle_sync/features/profile/ui/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  List<Widget> screens = [
    const HomeScreen(),
    const NotificationsScreen(),
    const AddPostScreen(),
    const ChatsScreen(),
    const ProfileScreen(),
  ];

  int currentIndex = 0; 

  void changeScreen(int index) {
    currentIndex = index;
    emit(HomeState.changeScreen(index));
  }

  void getPosts() async{
    emit(const HomeState.postsLoading());
    final response = await _homeRepo.getPosts();
    response.when(
      success: (response) {
        emit(HomeState.postsLoaded(response.data!.posts!));
      },
      failure: (error) {
        emit(HomeState.postsError(ErrorHandler.handle(error)));
      },
    );
  }

  void getPost(String id) async{
    emit(const HomeState.postLoading());
    final response = await _homeRepo.getPost(id);
    response.when(
      success: (response) {
        emit(HomeState.postLoaded(response.data!.post!));
      },
      failure: (error) {
        emit(HomeState.postError(ErrorHandler.handle(error)));
      },
    );
  }



}
