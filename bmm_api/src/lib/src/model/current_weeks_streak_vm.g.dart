// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weeks_streak_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CurrentWeeksStreakVmTypeEnum
    _$currentWeeksStreakVmTypeEnum_listeningStreak =
    const CurrentWeeksStreakVmTypeEnum._('listeningStreak');

CurrentWeeksStreakVmTypeEnum _$currentWeeksStreakVmTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'listeningStreak':
      return _$currentWeeksStreakVmTypeEnum_listeningStreak;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CurrentWeeksStreakVmTypeEnum>
    _$currentWeeksStreakVmTypeEnumValues = new BuiltSet<
        CurrentWeeksStreakVmTypeEnum>(const <CurrentWeeksStreakVmTypeEnum>[
  _$currentWeeksStreakVmTypeEnum_listeningStreak,
]);

Serializer<CurrentWeeksStreakVmTypeEnum>
    _$currentWeeksStreakVmTypeEnumSerializer =
    new _$CurrentWeeksStreakVmTypeEnumSerializer();

class _$CurrentWeeksStreakVmTypeEnumSerializer
    implements PrimitiveSerializer<CurrentWeeksStreakVmTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'listeningStreak': 'listening_streak',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'listening_streak': 'listeningStreak',
  };

  @override
  final Iterable<Type> types = const <Type>[CurrentWeeksStreakVmTypeEnum];
  @override
  final String wireName = 'CurrentWeeksStreakVmTypeEnum';

  @override
  Object serialize(Serializers serializers, CurrentWeeksStreakVmTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CurrentWeeksStreakVmTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CurrentWeeksStreakVmTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CurrentWeeksStreakVm extends CurrentWeeksStreakVm {
  @override
  final int? year;
  @override
  final int? weekOfTheYear;
  @override
  final int? todaysFraKaareTrackId;
  @override
  final int? numberOfPerfectWeeks;
  @override
  final bool? isPerfectWeek;
  @override
  final int? total;
  @override
  final bool? monday;
  @override
  final bool? tuesday;
  @override
  final bool? wednesday;
  @override
  final bool? thursday;
  @override
  final bool? friday;
  @override
  final int id;
  @override
  final CurrentWeeksStreakVmTypeEnum type;
  @override
  final DayOfWeek? dayOfTheWeek;
  @override
  final DateTime? eligibleUntil;
  @override
  final DateTime? lastChanged;
  @override
  final int? daysInARow;
  @override
  final String? pointColor;
  @override
  final CurrentWeeksStreakVmHomeScreenTextOptions? homeScreenText;

  factory _$CurrentWeeksStreakVm(
          [void Function(CurrentWeeksStreakVmBuilder)? updates]) =>
      (new CurrentWeeksStreakVmBuilder()..update(updates))._build();

  _$CurrentWeeksStreakVm._(
      {this.year,
      this.weekOfTheYear,
      this.todaysFraKaareTrackId,
      this.numberOfPerfectWeeks,
      this.isPerfectWeek,
      this.total,
      this.monday,
      this.tuesday,
      this.wednesday,
      this.thursday,
      this.friday,
      required this.id,
      required this.type,
      this.dayOfTheWeek,
      this.eligibleUntil,
      this.lastChanged,
      this.daysInARow,
      this.pointColor,
      this.homeScreenText})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'CurrentWeeksStreakVm', 'id');
    BuiltValueNullFieldError.checkNotNull(
        type, r'CurrentWeeksStreakVm', 'type');
  }

  @override
  CurrentWeeksStreakVm rebuild(
          void Function(CurrentWeeksStreakVmBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrentWeeksStreakVmBuilder toBuilder() =>
      new CurrentWeeksStreakVmBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrentWeeksStreakVm &&
        year == other.year &&
        weekOfTheYear == other.weekOfTheYear &&
        todaysFraKaareTrackId == other.todaysFraKaareTrackId &&
        numberOfPerfectWeeks == other.numberOfPerfectWeeks &&
        isPerfectWeek == other.isPerfectWeek &&
        total == other.total &&
        monday == other.monday &&
        tuesday == other.tuesday &&
        wednesday == other.wednesday &&
        thursday == other.thursday &&
        friday == other.friday &&
        id == other.id &&
        type == other.type &&
        dayOfTheWeek == other.dayOfTheWeek &&
        eligibleUntil == other.eligibleUntil &&
        lastChanged == other.lastChanged &&
        daysInARow == other.daysInARow &&
        pointColor == other.pointColor &&
        homeScreenText == other.homeScreenText;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, weekOfTheYear.hashCode);
    _$hash = $jc(_$hash, todaysFraKaareTrackId.hashCode);
    _$hash = $jc(_$hash, numberOfPerfectWeeks.hashCode);
    _$hash = $jc(_$hash, isPerfectWeek.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, monday.hashCode);
    _$hash = $jc(_$hash, tuesday.hashCode);
    _$hash = $jc(_$hash, wednesday.hashCode);
    _$hash = $jc(_$hash, thursday.hashCode);
    _$hash = $jc(_$hash, friday.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, dayOfTheWeek.hashCode);
    _$hash = $jc(_$hash, eligibleUntil.hashCode);
    _$hash = $jc(_$hash, lastChanged.hashCode);
    _$hash = $jc(_$hash, daysInARow.hashCode);
    _$hash = $jc(_$hash, pointColor.hashCode);
    _$hash = $jc(_$hash, homeScreenText.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CurrentWeeksStreakVm')
          ..add('year', year)
          ..add('weekOfTheYear', weekOfTheYear)
          ..add('todaysFraKaareTrackId', todaysFraKaareTrackId)
          ..add('numberOfPerfectWeeks', numberOfPerfectWeeks)
          ..add('isPerfectWeek', isPerfectWeek)
          ..add('total', total)
          ..add('monday', monday)
          ..add('tuesday', tuesday)
          ..add('wednesday', wednesday)
          ..add('thursday', thursday)
          ..add('friday', friday)
          ..add('id', id)
          ..add('type', type)
          ..add('dayOfTheWeek', dayOfTheWeek)
          ..add('eligibleUntil', eligibleUntil)
          ..add('lastChanged', lastChanged)
          ..add('daysInARow', daysInARow)
          ..add('pointColor', pointColor)
          ..add('homeScreenText', homeScreenText))
        .toString();
  }
}

class CurrentWeeksStreakVmBuilder
    implements Builder<CurrentWeeksStreakVm, CurrentWeeksStreakVmBuilder> {
  _$CurrentWeeksStreakVm? _$v;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  int? _weekOfTheYear;
  int? get weekOfTheYear => _$this._weekOfTheYear;
  set weekOfTheYear(int? weekOfTheYear) =>
      _$this._weekOfTheYear = weekOfTheYear;

  int? _todaysFraKaareTrackId;
  int? get todaysFraKaareTrackId => _$this._todaysFraKaareTrackId;
  set todaysFraKaareTrackId(int? todaysFraKaareTrackId) =>
      _$this._todaysFraKaareTrackId = todaysFraKaareTrackId;

  int? _numberOfPerfectWeeks;
  int? get numberOfPerfectWeeks => _$this._numberOfPerfectWeeks;
  set numberOfPerfectWeeks(int? numberOfPerfectWeeks) =>
      _$this._numberOfPerfectWeeks = numberOfPerfectWeeks;

  bool? _isPerfectWeek;
  bool? get isPerfectWeek => _$this._isPerfectWeek;
  set isPerfectWeek(bool? isPerfectWeek) =>
      _$this._isPerfectWeek = isPerfectWeek;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  bool? _monday;
  bool? get monday => _$this._monday;
  set monday(bool? monday) => _$this._monday = monday;

  bool? _tuesday;
  bool? get tuesday => _$this._tuesday;
  set tuesday(bool? tuesday) => _$this._tuesday = tuesday;

  bool? _wednesday;
  bool? get wednesday => _$this._wednesday;
  set wednesday(bool? wednesday) => _$this._wednesday = wednesday;

  bool? _thursday;
  bool? get thursday => _$this._thursday;
  set thursday(bool? thursday) => _$this._thursday = thursday;

  bool? _friday;
  bool? get friday => _$this._friday;
  set friday(bool? friday) => _$this._friday = friday;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  CurrentWeeksStreakVmTypeEnum? _type;
  CurrentWeeksStreakVmTypeEnum? get type => _$this._type;
  set type(CurrentWeeksStreakVmTypeEnum? type) => _$this._type = type;

  DayOfWeek? _dayOfTheWeek;
  DayOfWeek? get dayOfTheWeek => _$this._dayOfTheWeek;
  set dayOfTheWeek(DayOfWeek? dayOfTheWeek) =>
      _$this._dayOfTheWeek = dayOfTheWeek;

  DateTime? _eligibleUntil;
  DateTime? get eligibleUntil => _$this._eligibleUntil;
  set eligibleUntil(DateTime? eligibleUntil) =>
      _$this._eligibleUntil = eligibleUntil;

  DateTime? _lastChanged;
  DateTime? get lastChanged => _$this._lastChanged;
  set lastChanged(DateTime? lastChanged) => _$this._lastChanged = lastChanged;

  int? _daysInARow;
  int? get daysInARow => _$this._daysInARow;
  set daysInARow(int? daysInARow) => _$this._daysInARow = daysInARow;

  String? _pointColor;
  String? get pointColor => _$this._pointColor;
  set pointColor(String? pointColor) => _$this._pointColor = pointColor;

  CurrentWeeksStreakVmHomeScreenTextOptions? _homeScreenText;
  CurrentWeeksStreakVmHomeScreenTextOptions? get homeScreenText =>
      _$this._homeScreenText;
  set homeScreenText(
          CurrentWeeksStreakVmHomeScreenTextOptions? homeScreenText) =>
      _$this._homeScreenText = homeScreenText;

  CurrentWeeksStreakVmBuilder() {
    CurrentWeeksStreakVm._defaults(this);
  }

  CurrentWeeksStreakVmBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _year = $v.year;
      _weekOfTheYear = $v.weekOfTheYear;
      _todaysFraKaareTrackId = $v.todaysFraKaareTrackId;
      _numberOfPerfectWeeks = $v.numberOfPerfectWeeks;
      _isPerfectWeek = $v.isPerfectWeek;
      _total = $v.total;
      _monday = $v.monday;
      _tuesday = $v.tuesday;
      _wednesday = $v.wednesday;
      _thursday = $v.thursday;
      _friday = $v.friday;
      _id = $v.id;
      _type = $v.type;
      _dayOfTheWeek = $v.dayOfTheWeek;
      _eligibleUntil = $v.eligibleUntil;
      _lastChanged = $v.lastChanged;
      _daysInARow = $v.daysInARow;
      _pointColor = $v.pointColor;
      _homeScreenText = $v.homeScreenText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrentWeeksStreakVm other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrentWeeksStreakVm;
  }

  @override
  void update(void Function(CurrentWeeksStreakVmBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CurrentWeeksStreakVm build() => _build();

  _$CurrentWeeksStreakVm _build() {
    final _$result = _$v ??
        new _$CurrentWeeksStreakVm._(
          year: year,
          weekOfTheYear: weekOfTheYear,
          todaysFraKaareTrackId: todaysFraKaareTrackId,
          numberOfPerfectWeeks: numberOfPerfectWeeks,
          isPerfectWeek: isPerfectWeek,
          total: total,
          monday: monday,
          tuesday: tuesday,
          wednesday: wednesday,
          thursday: thursday,
          friday: friday,
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'CurrentWeeksStreakVm', 'id'),
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'CurrentWeeksStreakVm', 'type'),
          dayOfTheWeek: dayOfTheWeek,
          eligibleUntil: eligibleUntil,
          lastChanged: lastChanged,
          daysInARow: daysInARow,
          pointColor: pointColor,
          homeScreenText: homeScreenText,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
