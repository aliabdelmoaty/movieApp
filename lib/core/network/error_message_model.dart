import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final String message;
  final int statusCode;
  final bool success;
  const ErrorMessageModel({
    required this.message,
    required this.statusCode,
    required this.success,
  });

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
        message: json['status_message'],
        statusCode: json['status_code'],
        success: json['success']);
  }

  @override
  List<Object> get props => [message, statusCode, success];
}
