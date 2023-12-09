import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

enum SealiingWaxShape {
  smile,

  // TODO(suhwancha): 실링 왁스 모양 타입 정하기
}

class SealingWax extends Equatable {
  const SealingWax({
    required this.color,
    required this.shape,
  });

  /// 실링왁스 색상
  final Color color;

  /// 실링왁스 모양
  final SealiingWaxShape shape;

  @override
  List<Object?> get props => [
        color,
        shape,
      ];
}
