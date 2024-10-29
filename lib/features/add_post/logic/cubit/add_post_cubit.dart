import 'package:circle_sync/features/add_post/data/models/create_post_request_body.dart';
import 'package:circle_sync/features/add_post/data/repos/add_post_repo.dart';
import 'package:circle_sync/features/add_post/logic/cubit/add_post_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPostCubit extends Cubit<AddPostState> {
  final CreatePostRepo _addPostRepo;
  AddPostCubit(this._addPostRepo) : super(const AddPostState.initial());

  TextEditingController captionController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void emitAddPostStates() async {
    emit(const AddPostState.loading());
    final response = await _addPostRepo
        .addPost(CreatePostRequestBody(content: captionController.text));
    response.when(
      success: (data) async {
        emit(AddPostState.success(data));
      },
      failure: (apiErrorModel) {
        emit(AddPostState.failure(apiErrorModel));
      },
    );
  }
}
