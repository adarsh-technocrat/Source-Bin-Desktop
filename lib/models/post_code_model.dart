class PostCodeModel {
  int? success;
  String? url;

  PostCodeModel({this.success, this.url});

  PostCodeModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['url'] = url;
    return data;
  }
}
