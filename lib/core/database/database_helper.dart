import 'package:spacex_rockets/models/rocket_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static const String dbName = "spacex.db";
  static const String rocketTable = "rockets";

  static const String columnId = "id";
  static const String columnName = "name";
  static const String columnCountry = "country";
  static const String columnEngines = "engines";
  static const String columnFlickrImages = "flickr_images";
  static const String columnActive = "active";
  static const String columnCostPerLaunch = "cost_per_launch";
  static const String columnSuccessRate = "success_rate_pct";
  static const String columnDescription = "description";
  static const String columnWikipedia = "wikipedia";
  static const String columnHeightFeet = "height_feet";
  static const String columnDiameterFeet = "diameter_feet";

  Database? _database;

  /// Initialize the database
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), dbName);
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE $rocketTable (
            $columnId TEXT PRIMARY KEY,
            $columnName TEXT,
            $columnCountry TEXT,
            $columnEngines INTEGER,
            $columnFlickrImages TEXT,
            $columnActive INTEGER,
            $columnCostPerLaunch INTEGER,
            $columnSuccessRate INTEGER,
            $columnDescription TEXT,
            $columnWikipedia TEXT,
            $columnHeightFeet REAL,
            $columnDiameterFeet REAL
          )
        ''');
      },
    );
  }

  /// Insert rockets into the database
  Future<void> insertRockets(List<RocketModel> rockets) async {
    final db = await database;
    for (var rocket in rockets) {
      await db.insert(
        rocketTable,
        {
          columnId: rocket.id,
          columnName: rocket.name,
          columnCountry: rocket.country,
          columnEngines: rocket.engines?.number ?? 0, // Fix for nullable engines
          columnFlickrImages: rocket.flickrImages?.join(',') ?? '', // Fix for null values
          columnActive: rocket.active == true ? 1 : 0, // Fix for nullable bool
          columnCostPerLaunch: rocket.costPerLaunch ?? 0,
          columnSuccessRate: rocket.successRatePct ?? 0,
          columnDescription: rocket.description ?? '',
          columnWikipedia: rocket.wikipedia ?? '',
          columnHeightFeet: rocket.height?.feet ?? 0.0, // Fix for nullable values
          columnDiameterFeet: rocket.diameter?.feet ?? 0.0, // Fix for nullable values
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }

  /// Retrieve all rockets from the database
  Future<List<RocketModel>> getAllRockets() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(rocketTable);

    if (maps.isEmpty) return [];

    return List.generate(maps.length, (i) {
      return RocketModel(
        id: maps[i][columnId] ?? '',
        name: maps[i][columnName] ?? '',
        country: maps[i][columnCountry] ?? '',
        engines: Engines(number: (maps[i][columnEngines] as num?)?.toDouble() ?? 0.0), // Fix for engines
        flickrImages: (maps[i][columnFlickrImages] as String?)?.split(',') ?? [],
        active: (maps[i][columnActive] as int?) == 1, // Fix for boolean conversion
        costPerLaunch: (maps[i][columnCostPerLaunch] as num?)?.toDouble() ?? 0.0,
        successRatePct: (maps[i][columnSuccessRate] as num?)?.toDouble() ?? 0.0,
        description: maps[i][columnDescription] ?? '',
        wikipedia: maps[i][columnWikipedia] ?? '',
        height: Height(
          feet: (maps[i][columnHeightFeet] as num?)?.toDouble() ?? 0.0,
          meters: ((maps[i][columnHeightFeet] as num?)?.toDouble() ?? 0.0) * 0.3048, // Convert feet to meters
        ),
        diameter: Diameter(
          feet: (maps[i][columnDiameterFeet] as num?)?.toDouble() ?? 0.0,
          meters: ((maps[i][columnDiameterFeet] as num?)?.toDouble() ?? 0.0) * 0.3048,
        ),
      );
    });
  }
}
