import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DialogContentRecord extends FirestoreRecord {
  DialogContentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "talker" field.
  int? _talker;
  int get talker => _talker ?? 0;
  bool hasTalker() => _talker != null;

  // "step" field.
  int? _step;
  int get step => _step ?? 0;
  bool hasStep() => _step != null;

  void _initializeFields() {
    _content = snapshotData['content'] as String?;
    _talker = snapshotData['talker'] as int?;
    _step = snapshotData['step'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('dialogContent');

  static Stream<DialogContentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DialogContentRecord.fromSnapshot(s));

  static Future<DialogContentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DialogContentRecord.fromSnapshot(s));

  static DialogContentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DialogContentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DialogContentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DialogContentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DialogContentRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createDialogContentRecordData({
  String? content,
  int? talker,
  int? step,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'content': content,
      'talker': talker,
      'step': step,
    }.withoutNulls,
  );

  return firestoreData;
}
