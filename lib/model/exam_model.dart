class Exam {
  String? examId;
  String? examName;
  String? created;

  Exam({this.examId, this.examName, this.created});

  Exam.fromJson(Map<String, dynamic> json) {
    examId = json['exam_id'];
    examName = json['exam_name'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['exam_id'] = this.examId;
    data['exam_name'] = this.examName;
    data['created'] = this.created;
    return data;
  }
}