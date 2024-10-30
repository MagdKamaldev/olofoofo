import 'package:circle_sync/features/add_post/ui/add_post_screen.dart';
import 'package:circle_sync/features/chats/ui/chats_screen.dart';
import 'package:circle_sync/features/home/data/models/home_responses.dart';
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
      failure: (apiErrorModel) {
        emit(HomeState.postsError(apiErrorModel));
      },
    );
  }

  Post? post;

   List<Comment> comments = [];
   List<Comment> localComments = [];

  void getPost(String id) async{
    emit(const HomeState.postLoading());
    final response = await _homeRepo.getPost(id);
    response.when(
      success: (response) {
        post = response.data!.post;
        emit(HomeState.postLoaded(response.data!.post!));
        comments = response.data!.post!.comments!;
      },
      failure: (apiErrorModel) {
        emit(HomeState.postError(apiErrorModel));
      },
    );
  }

  void likePost(String postId) async{
    emit(const HomeState.likePostLoading());
    final response = await _homeRepo.likePost(postId);
    response.when(
      success: (response) {
        emit(const HomeState.likePostSuccess());
      },
      failure: (apiErrorModel) {
        emit(HomeState.likePostError(apiErrorModel));
      },
    );
  }

  void unlikePost(String postId) async{
    emit(const HomeState.unlikePostLoading());
    final response = await _homeRepo.unlikePost(postId);
    response.when(
      success: (response) {
        emit(const HomeState.unlikePostSuccess());
      },
      failure: (apiErrorModel) {
        emit(HomeState.unlikePostError(apiErrorModel));
      },
    );
  }

  void addLocalComment(Comment comment){
    localComments.add(comment);
    emit(HomeState.localCommentAdded(localComments));
  }

  void removeLocalCommentAndAddRemote(Comment localComment, Comment remoteComment,String firstName,String lastName,String image,String userId){
    localComments.remove(localComment);
    emit(HomeState.localCommentAdded(localComments));
    comments.add(Comment(
      id: remoteComment.id,
      content: remoteComment.content,
      user: [UserData(
       id: userId,
        firstName: firstName,
        lastName: lastName,
        profileImg: image,
      ),],
      createdAt: remoteComment.createdAt,
    ));
    emit(const HomeState.commentSuccess());
  }
 

  void comment(String postId, Comment comment,String firstName,String lastName,String image, String id) async{
    addLocalComment(comment);
    emit(const HomeState.commentLoading());
    final response = await _homeRepo.comment(postId, comment.content!);
    response.when(
      success: (response) {
        removeLocalCommentAndAddRemote(comment,response.data.comment,firstName,lastName,image,id);
        emit(const HomeState.commentSuccess());
      },
      failure: (apiErrorModel) {
        emit(HomeState.commentError(apiErrorModel));
      },
    );
  }

  void deleteComment(String postId, String commentId) async{
    emit(const HomeState.deleteCommentLoading());
    final response = await _homeRepo.deleteComment(postId, commentId);
    response.when(
      success: (response) {
        emit(const HomeState.deleteCommentSuccess());
      },
      failure: (apiErrorModel) {
        emit(HomeState.deleteCommentError(apiErrorModel));
      },
    );
  }

}
