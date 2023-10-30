import 'package:fit_life/mvvm/ui/wo_trac/view_model/wo_trac_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'wo_trac_state.dart';

part 'wo_trac_view_model.freezed.dart';

final wooTrackStateNotifier =
    AutoDisposeStateNotifierProvider<WooTrackViewModel, WooTrackState>(
        (ref) => WooTrackViewModel());

@injectable
class WooTrackViewModel extends StateNotifier<WooTrackState> {
  WooTrackViewModel()
      : super(const _Initial(
            data: WooTrackData(currentExIndex: 0, isPlayed: true)));

  void changeCurrentEx() {
    final currentEx = state.data.currentExIndex;
    if (currentEx < 4) {
      state = _ChangeExerciseSuccess(
        data: state.data.copyWith(currentExIndex: currentEx + 1),
      );
    } else {
      state = _CompletedRound(data: state.data.copyWith(currentExIndex: 5));
    }
  }

  void changePlayStatus() {
    final currentStatus = state.data.isPlayed;
    state =
        _PlayPauseSuccess(data: state.data.copyWith(isPlayed: !currentStatus));
  }
}