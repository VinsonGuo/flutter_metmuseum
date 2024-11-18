import 'dart:math';

import 'package:flutter_metmuseum/api/RestClient.dart';
import 'package:flutter_metmuseum/common/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/models.dart';

// Necessary for code-generation to work
part 'providers.g.dart';

@riverpod
class MuseumObject extends _$MuseumObject {
  @override
  Future<List<MuseumObjectDetail>> build() async {
    final List<MuseumObjectDetail> details = [];
    final ids = List.generate(10, (index) => Random().nextInt(10000));
    for (final element in ids) {
      try {
        final detail =
            await RestClient.instance.getMuseumObjectDetail(element.toString());
        details.add(detail);
      } catch (e, s) {
        logger.e("MuseumObject build", error: e, stackTrace: s);
      }
    }
    return details;
  }

  Future<void> getMuseumObjects() async {}
}
