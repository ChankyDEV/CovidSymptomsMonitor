import 'package:flutter_test/flutter_test.dart';
import 'package:symptoms_monitor/domain/measurement/measurement_dto.dart';
import 'package:symptoms_monitor/models/measurement/blood_saturation.dart';
import 'package:symptoms_monitor/models/measurement/heart_rate.dart';
import 'package:symptoms_monitor/models/measurement/measurement.dart';
import 'package:symptoms_monitor/models/measurement/temperature.dart';

void main() {
  final date = DateTime(2020, 11, 05);
  final measurement = Measurement.withDate(
      heartRate: HeartRate(value: 74),
      temperature: Temperature(value: 36.6),
      bloodSaturation: BloodSaturation(value: 90),
      date: date);

  final measurementDTO = MeasurementDTO(
      heartRate: 74,
      temperature: 36.6,
      bloodSaturation: 90,
      date: date.toString());

  group('fromDomain', () {
    test('should return valid measurement model from his DTO', () {
      final result = Measurement.fromDomain(measurementDTO);
      expect(result.heartRate.value, measurement.heartRate.value);
      expect(result.temperature.value, measurement.temperature.value);
      expect(result.bloodSaturation.value, measurement.bloodSaturation.value);
      expect(result.date, measurement.date);
    });
  });

  group('toDomain', () {
    test('should return DTO from valid measurement model', () {
      final result = MeasurementDTO.toDomain(measurement);

      expect(result.heartRate, measurementDTO.heartRate);
      expect(result.temperature, measurementDTO.temperature);
      expect(result.bloodSaturation, measurementDTO.bloodSaturation);
      expect(result.date, measurementDTO.date);
    });
  });
}
