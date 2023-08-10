import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:to_do_list/app/core/utils/keys.dart';

class StorageService extends GetxService {
  late GetStorage _box;

  Future<StorageService> init() async {
    _box = GetStorage();
    // await _box.write(taskKey, []);

    // if data is not null, skip the code line below
    // if null, write the task key as a empty array
    await _box.writeIfNull(taskKey, []);
    return this;
  }

  // read data from local storage
  // T is a generic type, whether string or list of type from write if null above method
  T read<T>(String key) {
    return _box.read(key);
  }

  void write(String key, dynamic value) async {
    await _box.write(key, value);
  }
}
