import 'package:flutter/foundation.dart';
import 'package:mobileapp/record/database/replay_db.dart';
import 'package:mobileapp/record/model/replayModel.dart';

class replay with ChangeNotifier {
  List<replayModel> replays = [];

  List<replayModel> getReplay() {
    return replays;
  }

  void initData() async {
    var db = ReplayDB("dbReplay3.db");
    replays = await db.loadAllData();
    notifyListeners();
  }

  void addReplay(replayModel newReplay) async {
    var db = ReplayDB("dbReplay3.db");
    await db.InsertData(newReplay);
    replays = await db.loadAllData();
    notifyListeners();
  }

  void deletedata() async {
    var db = ReplayDB("dbReplay3.db");
    await db.deleteData();
    replays = await db.loadAllData();
    notifyListeners();
  }
}