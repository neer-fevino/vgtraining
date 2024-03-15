import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:freshstart/app/app.locator.dart';
import 'package:freshstart/app/app.logger.dart';
import 'package:freshstart/services/db_service.dart';
import 'package:stacked/stacked.dart';

class BshoesViewModel extends BaseViewModel {
  final _db = locator<DbService>();
  final _logger = getLogger("BshoesViewModel");
int _nameLength = 0;
  get namesLength => _nameLength;
  // final _dialogService = locator<DialogService>();

  Future<List<String>> fetchNames() async {
    List<TeamFevino> result = await _db.db.getTeamFevinoTableRowAll();
    List<String> names = result.map((team) => team.name).toList();
    _nameLength = names.length;
    _logger.i(names);
        _logger.i(names.length);

    return names;
  }

  Future<void> showdata(yeHaiPara) async {
    _logger.i(yeHaiPara.text);
  }
}
