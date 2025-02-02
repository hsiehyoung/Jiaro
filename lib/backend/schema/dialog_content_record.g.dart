// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog_content_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DialogContentRecord> _$dialogContentRecordSerializer =
    new _$DialogContentRecordSerializer();

class _$DialogContentRecordSerializer
    implements StructuredSerializer<DialogContentRecord> {
  @override
  final Iterable<Type> types = const [
    DialogContentRecord,
    _$DialogContentRecord
  ];
  @override
  final String wireName = 'DialogContentRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DialogContentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.talker;
    if (value != null) {
      result
        ..add('talker')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.step;
    if (value != null) {
      result
        ..add('step')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  DialogContentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DialogContentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'talker':
          result.talker = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'step':
          result.step = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$DialogContentRecord extends DialogContentRecord {
  @override
  final String? content;
  @override
  final int? talker;
  @override
  final int? step;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DialogContentRecord(
          [void Function(DialogContentRecordBuilder)? updates]) =>
      (new DialogContentRecordBuilder()..update(updates))._build();

  _$DialogContentRecord._({this.content, this.talker, this.step, this.ffRef})
      : super._();

  @override
  DialogContentRecord rebuild(
          void Function(DialogContentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DialogContentRecordBuilder toBuilder() =>
      new DialogContentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DialogContentRecord &&
        content == other.content &&
        talker == other.talker &&
        step == other.step &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, talker.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DialogContentRecord')
          ..add('content', content)
          ..add('talker', talker)
          ..add('step', step)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DialogContentRecordBuilder
    implements Builder<DialogContentRecord, DialogContentRecordBuilder> {
  _$DialogContentRecord? _$v;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  int? _talker;
  int? get talker => _$this._talker;
  set talker(int? talker) => _$this._talker = talker;

  int? _step;
  int? get step => _$this._step;
  set step(int? step) => _$this._step = step;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DialogContentRecordBuilder() {
    DialogContentRecord._initializeBuilder(this);
  }

  DialogContentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _talker = $v.talker;
      _step = $v.step;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DialogContentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DialogContentRecord;
  }

  @override
  void update(void Function(DialogContentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DialogContentRecord build() => _build();

  _$DialogContentRecord _build() {
    final _$result = _$v ??
        new _$DialogContentRecord._(
            content: content, talker: talker, step: step, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
