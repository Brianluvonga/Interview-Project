class Info {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Info({this.userId, this.id, this.title, this.completed});

  factory Info.fromJson(Map<String, dynamic> json) {
    return Info(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
      completed: json["completed"],
    );
  }
}
