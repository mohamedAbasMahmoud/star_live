class TimesModel {
  final String status;
  final String message;
  final List<TimeDatum> data;

  TimesModel({required this.status, required this.message, required this.data});

  factory TimesModel.fromJson(Map<String, dynamic> json) => TimesModel(
    status: json["status"],
    message: json["message"],
    data: List<TimeDatum>.from(json["data"].map((x) => TimeDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class TimeDatum {
  final int id;
  final String startTime;
  final String endTime;
  final DateTime createdAt;
  final DateTime updatedAt;

  TimeDatum({
    required this.id,
    required this.startTime,
    required this.endTime,
    required this.createdAt,
    required this.updatedAt,
  });

  factory TimeDatum.fromJson(Map<String, dynamic> json) => TimeDatum(
    id: json["id"],
    startTime: json["start_time"],
    endTime: json["end_time"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "start_time": startTime,
    "end_time": endTime,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
