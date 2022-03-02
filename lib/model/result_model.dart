class Result {
  String? studentId;
  String? passFail;
  String? examId;

  Result({this.studentId, this.passFail, this.examId});

  Result.fromJson(Map<String, dynamic> json) {
    studentId = json['student_id'];
    passFail = json['pass_fail'];
    examId = json['exam_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['student_id'] = this.studentId;
    data['pass_fail'] = this.passFail;
    data['exam_id'] = this.examId;
    return data;
  }
}