import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DailyRecordRecord extends FirestoreRecord {
  DailyRecordRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "candynum" field.
  int? _candynum;
  int get candynum => _candynum ?? 0;
  bool hasCandynum() => _candynum != null;

  void _initializeFields() {
    _date = snapshotData['date'] as String?;
    _candynum = snapshotData['candynum'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dailyRecord');

  static Stream<DailyRecordRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DailyRecordRecord.fromSnapshot(s));

  static Future<DailyRecordRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DailyRecordRecord.fromSnapshot(s));

  static DailyRecordRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DailyRecordRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DailyRecordRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DailyRecordRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DailyRecordRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createDailyRecordRecordData({
  String? date,
  int? candynum,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'candynum': candynum,
    }.withoutNulls,
  );

  return firestoreData;
}
