import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Saturation implements Equatable {
  final num value;

  Saturation({@required this.value});

  @override
  List<Object> get props => [value];

  @override
  bool get stringify => true;
}
