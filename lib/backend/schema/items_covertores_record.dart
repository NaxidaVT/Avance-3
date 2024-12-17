import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemsCovertoresRecord extends FirestoreRecord {
  ItemsCovertoresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nameCovertor" field.
  String? _nameCovertor;
  String get nameCovertor => _nameCovertor ?? '';
  bool hasNameCovertor() => _nameCovertor != null;

  // "descriptionCovertor" field.
  String? _descriptionCovertor;
  String get descriptionCovertor => _descriptionCovertor ?? '';
  bool hasDescriptionCovertor() => _descriptionCovertor != null;

  // "priceCovertor" field.
  double? _priceCovertor;
  double get priceCovertor => _priceCovertor ?? 0.0;
  bool hasPriceCovertor() => _priceCovertor != null;

  // "on_saleCovertor" field.
  bool? _onSaleCovertor;
  bool get onSaleCovertor => _onSaleCovertor ?? false;
  bool hasOnSaleCovertor() => _onSaleCovertor != null;

  // "sale_priceCovertor" field.
  double? _salePriceCovertor;
  double get salePriceCovertor => _salePriceCovertor ?? 0.0;
  bool hasSalePriceCovertor() => _salePriceCovertor != null;

  // "imageCovertor" field.
  String? _imageCovertor;
  String get imageCovertor => _imageCovertor ?? '';
  bool hasImageCovertor() => _imageCovertor != null;

  void _initializeFields() {
    _nameCovertor = snapshotData['nameCovertor'] as String?;
    _descriptionCovertor = snapshotData['descriptionCovertor'] as String?;
    _priceCovertor = castToType<double>(snapshotData['priceCovertor']);
    _onSaleCovertor = snapshotData['on_saleCovertor'] as bool?;
    _salePriceCovertor = castToType<double>(snapshotData['sale_priceCovertor']);
    _imageCovertor = snapshotData['imageCovertor'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ItemsCovertores');

  static Stream<ItemsCovertoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemsCovertoresRecord.fromSnapshot(s));

  static Future<ItemsCovertoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemsCovertoresRecord.fromSnapshot(s));

  static ItemsCovertoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItemsCovertoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemsCovertoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemsCovertoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItemsCovertoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemsCovertoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemsCovertoresRecordData({
  String? nameCovertor,
  String? descriptionCovertor,
  double? priceCovertor,
  bool? onSaleCovertor,
  double? salePriceCovertor,
  String? imageCovertor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nameCovertor': nameCovertor,
      'descriptionCovertor': descriptionCovertor,
      'priceCovertor': priceCovertor,
      'on_saleCovertor': onSaleCovertor,
      'sale_priceCovertor': salePriceCovertor,
      'imageCovertor': imageCovertor,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemsCovertoresRecordDocumentEquality
    implements Equality<ItemsCovertoresRecord> {
  const ItemsCovertoresRecordDocumentEquality();

  @override
  bool equals(ItemsCovertoresRecord? e1, ItemsCovertoresRecord? e2) {
    return e1?.nameCovertor == e2?.nameCovertor &&
        e1?.descriptionCovertor == e2?.descriptionCovertor &&
        e1?.priceCovertor == e2?.priceCovertor &&
        e1?.onSaleCovertor == e2?.onSaleCovertor &&
        e1?.salePriceCovertor == e2?.salePriceCovertor &&
        e1?.imageCovertor == e2?.imageCovertor;
  }

  @override
  int hash(ItemsCovertoresRecord? e) => const ListEquality().hash([
        e?.nameCovertor,
        e?.descriptionCovertor,
        e?.priceCovertor,
        e?.onSaleCovertor,
        e?.salePriceCovertor,
        e?.imageCovertor
      ]);

  @override
  bool isValidKey(Object? o) => o is ItemsCovertoresRecord;
}
