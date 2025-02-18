class DefResponse {
  bool? success;
  dynamic data;
  String? message;

  DefResponse({
    this.success,
    this.data,
    this.message,
  });

  factory DefResponse.fromJson(Map<String, dynamic> json) {
    return DefResponse(
      success: json['success'],
      data: json['data'],
      message: json['message'],
    );
  }
}
