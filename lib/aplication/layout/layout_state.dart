part of 'layout_cubit.dart';

@freezed
class LayoutState with _$LayoutState {
  const factory LayoutState(
      {required int position,
      required PageController controller}) = _LayoutState;

  factory LayoutState.initial() =>
      LayoutState(position: 0, controller: PageController());
}
