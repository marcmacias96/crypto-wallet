import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'layout_state.dart';
part 'layout_cubit.freezed.dart';

@injectable
class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutState.initial());

  Future<void> changePosition(int position) async {
    state.controller.jumpToPage(position);
    emit(state.copyWith(position: position));
  }

  @override
  Future<void> close() {
    state.controller.dispose();
    return super.close();
  }
}
