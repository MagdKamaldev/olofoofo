import 'dart:io';
import 'package:circle_sync/features/add_post/data/repos/add_post_repo.dart';
import 'package:circle_sync/features/add_post/logic/cubit/add_post_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class AddPostCubit extends Cubit<AddPostState> {
  final CreatePostRepo _addPostRepo;

  AddPostCubit(this._addPostRepo) : super(const AddPostState.initial());

  TextEditingController captionController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List<File> selectedImages = [];

  Future<void> showImagePicker(BuildContext context) async {
    if (selectedImages.length >= 2) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "You can only select 2 images.",
            style: TextStyle(color: Colors.red),
          ),
        ),
      );
      return;
    }

    final ImagePicker picker = ImagePicker();

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text("Take Photo"),
                onTap: () async {
                  Navigator.pop(context);
                  final XFile? pickedImage =
                      await picker.pickImage(source: ImageSource.camera);
                  if (pickedImage != null) {
                    selectedImages.add(File(pickedImage.path));
                    emit(AddPostState.imageSelected(List.from(selectedImages)));
                  }
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo),
                title: const Text("Choose from Gallery"),
                onTap: () async {
                  Navigator.pop(context);
                  final XFile? pickedImage =
                      await picker.pickImage(source: ImageSource.gallery);
                  if (pickedImage != null) {
                    selectedImages.add(File(pickedImage.path));
                    emit(AddPostState.imageSelected(List.from(selectedImages)));
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void removeImgage(int index) {
    selectedImages.removeAt(index);
    emit(AddPostState.imageSelected(List.from(selectedImages)));
  }

  void emitAddPostStates() async {
    emit(const AddPostState.loading());
    final response = await _addPostRepo
        .addPost(captionController.text, selectedImages);
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