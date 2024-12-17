import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItempomosRecord extends FirestoreRecord {
  ItempomosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modifie_at" field.
  DateTime? _modifieAt;
  DateTime? get modifieAt => _modifieAt;
  bool hasModifieAt() => _modifieAt != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifieAt = snapshotData['modifie_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('itempomos');

  static Stream<ItempomosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItempomosRecord.fromSnapshot(s));

  static Future<ItempomosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItempomosRecord.fromSnapshot(s));

  static ItempomosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItempomosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItempomosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItempomosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItempomosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItempomosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItempomosRecordData({
  String? name,
  String? description,
  double? price,
  DateTime? createdAt,
  DateTime? modifieAt,
  bool? onSale,
  double? salePrice,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'created_at': createdAt,
      'modifie_at': modifieAt,
      'on_sale': onSale,
      'sale_price': salePrice,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItempomosRecordDocumentEquality implements Equality<ItempomosRecord> {
  const ItempomosRecordDocumentEquality();

  @override
  bool equals(ItempomosRecord? e1, ItempomosRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifieAt == e2?.modifieAt &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.image == e2?.image;
  }

  @override
  int hash(ItempomosRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.createdAt,
        e?.modifieAt,
        e?.onSale,
        e?.salePrice,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is ItempomosRecord;
}
