import 'package:equatable/equatable.dart';

import 'datum.dart';

class ServiceModel extends Equatable {
  final int? status;
  final bool? success;
  final List<DataModel>? data;

  const ServiceModel({this.status, this.success, this.data});

  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
        status: json['status'] as int?,
        success: json['success'] as bool?,
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => DataModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'success': success,
        'data': data?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [status, success, data];
}
