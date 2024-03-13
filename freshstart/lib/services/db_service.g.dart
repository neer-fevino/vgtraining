// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_service.dart';

// ignore_for_file: type=lint
class $TeamFevinosTable extends TeamFevinos
    with TableInfo<$TeamFevinosTable, TeamFevino> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TeamFevinosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idTeamFevinoMeta =
      const VerificationMeta('idTeamFevino');
  @override
  late final GeneratedColumn<int> idTeamFevino = GeneratedColumn<int>(
      'id_team_fevino', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [idTeamFevino, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'TeamFevino';
  @override
  VerificationContext validateIntegrity(Insertable<TeamFevino> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_team_fevino')) {
      context.handle(
          _idTeamFevinoMeta,
          idTeamFevino.isAcceptableOrUnknown(
              data['id_team_fevino']!, _idTeamFevinoMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idTeamFevino};
  @override
  TeamFevino map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TeamFevino(
      idTeamFevino: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_team_fevino'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $TeamFevinosTable createAlias(String alias) {
    return $TeamFevinosTable(attachedDatabase, alias);
  }
}

class TeamFevino extends DataClass implements Insertable<TeamFevino> {
  final int idTeamFevino;
  final String name;
  const TeamFevino({required this.idTeamFevino, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_team_fevino'] = Variable<int>(idTeamFevino);
    map['name'] = Variable<String>(name);
    return map;
  }

  TeamFevinosCompanion toCompanion(bool nullToAbsent) {
    return TeamFevinosCompanion(
      idTeamFevino: Value(idTeamFevino),
      name: Value(name),
    );
  }

  factory TeamFevino.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TeamFevino(
      idTeamFevino: serializer.fromJson<int>(json['idTeamFevino']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idTeamFevino': serializer.toJson<int>(idTeamFevino),
      'name': serializer.toJson<String>(name),
    };
  }

  TeamFevino copyWith({int? idTeamFevino, String? name}) => TeamFevino(
        idTeamFevino: idTeamFevino ?? this.idTeamFevino,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('TeamFevino(')
          ..write('idTeamFevino: $idTeamFevino, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(idTeamFevino, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TeamFevino &&
          other.idTeamFevino == this.idTeamFevino &&
          other.name == this.name);
}

class TeamFevinosCompanion extends UpdateCompanion<TeamFevino> {
  final Value<int> idTeamFevino;
  final Value<String> name;
  const TeamFevinosCompanion({
    this.idTeamFevino = const Value.absent(),
    this.name = const Value.absent(),
  });
  TeamFevinosCompanion.insert({
    this.idTeamFevino = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<TeamFevino> custom({
    Expression<int>? idTeamFevino,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (idTeamFevino != null) 'id_team_fevino': idTeamFevino,
      if (name != null) 'name': name,
    });
  }

  TeamFevinosCompanion copyWith(
      {Value<int>? idTeamFevino, Value<String>? name}) {
    return TeamFevinosCompanion(
      idTeamFevino: idTeamFevino ?? this.idTeamFevino,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idTeamFevino.present) {
      map['id_team_fevino'] = Variable<int>(idTeamFevino.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TeamFevinosCompanion(')
          ..write('idTeamFevino: $idTeamFevino, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

abstract class _$DB extends GeneratedDatabase {
  _$DB(QueryExecutor e) : super(e);
  late final $TeamFevinosTable teamFevinos = $TeamFevinosTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [teamFevinos];
}
