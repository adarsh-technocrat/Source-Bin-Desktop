import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:source_bin/bloc/code_post_states.dart';
import 'package:source_bin/models/post_code_model.dart';
import 'package:source_bin/services/post_code_service.dart';

class CodePostCubit extends Cubit<CodePostState> {
  CodePostCubit()
      : super(CodePostState(
            postCodeModel: PostCodeModel(),
            showLoading: false,
            code: "",
            description: "",
            title: ""));

  PostCodeService postCodeService = PostCodeService();

  Future<PostCodeModel> getData(
      String title, String description, String content) async {
    var codePostModel =
        await postCodeService.getCodePostUrl(title, description, content);
    emit(state.copyWith(postCodeModel: codePostModel, showLoading: false));
    return codePostModel;
  }

  showLoading() {
    emit(state.copyWith(showLoading: true));
  }

  setTitle(String title) {
    emit(state.copyWith(title: title));
  }

  setDescription(String description) {
    emit(state.copyWith(description: description));
  }

  setContent(String content) {
    emit(state.copyWith(code: content));
  }
}
