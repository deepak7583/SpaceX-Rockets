import 'package:spacex_rockets/core/api/api_service.dart';
import 'package:spacex_rockets/core/database/database_helper.dart';
import 'package:spacex_rockets/models/rocket_model.dart';

class RocketRepository {
  final ApiService apiService;
  final DatabaseHelper dbHelper;

  RocketRepository({required this.apiService, required this.dbHelper});

  /// Fetch all rockets (from local DB first, then API)
  Future<List<RocketModel>> getRockets() async {
    try {
      // Try fetching from local DB
      List<RocketModel> localRockets = await dbHelper.getAllRockets();
      if (localRockets.isNotEmpty) {
        return localRockets;
      }

      // Fetch from API if local DB is empty
      List<RocketModel> rockets = await apiService.getRockets();
      // Save to local DB for caching
      await dbHelper.insertRockets(rockets);
      return rockets;
    } catch (e) {
      throw Exception("Error fetching rockets: $e");
    }
  }

  /// Fetch rocket details
  Future<RocketModel> getRocketDetails(String id) async {
    try {
      return await apiService.getRocketDetails(id);
    } catch (e) {
      throw Exception("Error fetching rocket details: $e");
    }
  }
}
