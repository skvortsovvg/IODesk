import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenusRecord extends FirestoreRecord {
  MenusRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "day" field.
  DateTime? _day;
  DateTime? get day => _day;
  bool hasDay() => _day != null;

  // "dish" field.
  String? _dish;
  String get dish => _dish ?? '';
  bool hasDish() => _dish != null;

  // "position" field.
  int? _position;
  int get position => _position ?? 0;
  bool hasPosition() => _position != null;

  void _initializeFields() {
    _day = snapshotData['day'] as DateTime?;
    _dish = snapshotData['dish'] as String?;
    _position = castToType<int>(snapshotData['position']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('menus');

  static Stream<MenusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenusRecord.fromSnapshot(s));

  static Future<MenusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenusRecord.fromSnapshot(s));

  static MenusRecord fromSnapshot(DocumentSnapshot snapshot) => MenusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenusRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenusRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenusRecordData({
  DateTime? day,
  String? dish,
  int? position,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'day': day,
      'dish': dish,
      'position': position,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenusRecordDocumentEquality implements Equality<MenusRecord> {
  const MenusRecordDocumentEquality();

  @override
  bool equals(MenusRecord? e1, MenusRecord? e2) {
    return e1?.day == e2?.day &&
        e1?.dish == e2?.dish &&
        e1?.position == e2?.position;
  }

  @override
  int hash(MenusRecord? e) =>
      const ListEquality().hash([e?.day, e?.dish, e?.position]);

  @override
  bool isValidKey(Object? o) => o is MenusRecord;
}
