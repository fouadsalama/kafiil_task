import 'package:equatable/equatable.dart';

import 'datum.dart';
import 'pagination.dart';

class CountryModel extends Equatable {
  final int? status;
  final bool? success;
  final List<Datum>? data;
  final Pagination? pagination;

  const CountryModel({
    this.status,
    this.success,
    this.data,
    this.pagination,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        status: json['status'] as int?,
        success: json['success'] as bool?,
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
        pagination: json['pagination'] == null
            ? null
            : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'success': success,
        'data': data?.map((e) => e.toJson()).toList(),
        'pagination': pagination?.toJson(),
      };

  @override
  List<Object?> get props => [status, success, data, pagination];
}
