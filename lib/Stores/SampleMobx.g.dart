// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SampleMobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SampleStore on _SampleStore, Store {
  final _$counterAtom = Atom(name: '_SampleStore.counter');

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  final _$_SampleStoreActionController = ActionController(name: '_SampleStore');

  @override
  dynamic addUp() {
    final _$actionInfo =
        _$_SampleStoreActionController.startAction(name: '_SampleStore.addUp');
    try {
      return super.addUp();
    } finally {
      _$_SampleStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
