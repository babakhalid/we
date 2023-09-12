
import '../../models/douar.dart';
import 'network_utils.dart';

/// GET method demo
Future<Douar> getDouarList(int page) async {
  return Douar.fromJson(await (handleResponse(await getRequest('api/doar'))));
}

