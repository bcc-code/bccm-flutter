import 'package:bccm_core/bccm_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final myListChangedProvider = StreamProvider<MyListChangedEvent>((ref) => globalEventBus.on<MyListChangedEvent>());

class MyListChangedEvent {
  MyListChangedEvent();
}
