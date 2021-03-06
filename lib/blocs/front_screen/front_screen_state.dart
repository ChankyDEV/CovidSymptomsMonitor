part of 'front_screen_cubit.dart';

@freezed
abstract class FrontScreenState with _$FrontScreenState {
  const factory FrontScreenState.initial({
    @required String title,
    @required List<bool> chosenStatistic,
    @required int chosenIndex,
    @required bool isButtonClicked,
    @required bool isDataDownloaded,
    @required bool firstFetch,
    @required Measurement measurement,
    @required bool lastMeasurementsLoading,
    @required List<Measurement> lastMeasurements,
    @required List<String> lastMeasurementsIDS,
    @required bool lastMeasurementsHadError,
    @required bool newMeasurementsHadError,
  }) = _Initial;
}
