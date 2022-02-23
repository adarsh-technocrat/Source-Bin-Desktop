import 'package:source_bin/models/post_code_model.dart';

class CodePostState {
  PostCodeModel postCodeModel;
  bool showLoading;
  String title;
  String code;
  String description;
  CodePostState({
    required this.postCodeModel,
    required this.showLoading,
    required this.title,
    required this.code,
    required this.description,
  });

  CodePostState copyWith({
    PostCodeModel? postCodeModel,
    bool? showLoading,
    String? title,
    String? code,
    String? description,
  }) {
    return CodePostState(
        postCodeModel: postCodeModel ?? this.postCodeModel,
        showLoading: showLoading ?? this.showLoading,
        code: code ?? this.code,
        description: description ?? this.description,
        title: title ?? this.title);
  }
}
