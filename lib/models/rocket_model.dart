import 'package:json_annotation/json_annotation.dart';

part 'rocket_model.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class RocketModel {
  @JsonKey(name: 'height')
  final  Height? height;
  @JsonKey(name: 'diameter')
  final  Diameter? diameter;
  @JsonKey(name: 'mass')
  final  Mass? mass;
  @JsonKey(name: 'first_stage')
  final  FirstStage? firstStage;
  @JsonKey(name: 'second_stage')
  final  SecondStage? secondStage;
  @JsonKey(name: 'engines')
  final  Engines? engines;
  @JsonKey(name: 'landing_legs')
  final  LandingLegs? landingLegs;
  @JsonKey(name: 'payload_weights')
  final  List<PayloadWeight>? payloadWeights;
  @JsonKey(name: 'flickr_images')
  final  List<String>? flickrImages;
  @JsonKey(name: 'name')
  final  String? name;
  @JsonKey(name: 'type')
  final  String? type;
  @JsonKey(name: 'active')
  final  bool? active;
  @JsonKey(name: 'stages')
  final  double? stages;
  @JsonKey(name: 'boosters')
  final  double? boosters;
  @JsonKey(name: 'cost_per_launch')
  final  double? costPerLaunch;
  @JsonKey(name: 'success_rate_pct')
  final  double? successRatePct;
  @JsonKey(name: 'first_flight')
  final  String? firstFlight;
  @JsonKey(name: 'country')
  final  String? country;
  @JsonKey(name: 'company')
  final  String? company;
  @JsonKey(name: 'wikipedia')
  final  String? wikipedia;
  @JsonKey(name: 'description')
  final  String? description;
  @JsonKey(name: 'id')
  final  String? id;

  RocketModel({this.height, this.diameter, this.mass, this.firstStage, this.secondStage, this.engines, this.landingLegs, this.payloadWeights, this.flickrImages, this.name, this.type, this.active, this.stages, this.boosters, this.costPerLaunch, this.successRatePct, this.firstFlight, this.country, this.company, this.wikipedia, this.description, this.id});

   factory RocketModel.fromJson(Map<String, dynamic> json) => _$RocketModelFromJson(json);

   Map<String, dynamic> toJson() => _$RocketModelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Height {
  @JsonKey(name: 'meters')
  final  double? meters;
  @JsonKey(name: 'feet')
  final  double? feet;

  Height({this.meters, this.feet});

   factory Height.fromJson(Map<String, dynamic> json) => _$HeightFromJson(json);

   Map<String, dynamic> toJson() => _$HeightToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Diameter {
  @JsonKey(name: 'meters')
  final  double? meters;
  @JsonKey(name: 'feet')
  final  double? feet;

  Diameter({this.meters, this.feet});

   factory Diameter.fromJson(Map<String, dynamic> json) => _$DiameterFromJson(json);

   Map<String, dynamic> toJson() => _$DiameterToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Mass {
  @JsonKey(name: 'kg')
  final  double? kg;
  @JsonKey(name: 'lb')
  final  double? lb;

  Mass({this.kg, this.lb});

   factory Mass.fromJson(Map<String, dynamic> json) => _$MassFromJson(json);

   Map<String, dynamic> toJson() => _$MassToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class FirstStage {
  @JsonKey(name: 'thrust_sea_level')
  final  ThrustSeaLevel? thrustSeaLevel;
  @JsonKey(name: 'thrust_vacuum')
  final  ThrustVacuum? thrustVacuum;
  @JsonKey(name: 'reusable')
  final  bool? reusable;
  @JsonKey(name: 'engines')
  final  double? engines;
  @JsonKey(name: 'fuel_amount_tons')
  final  double? fuelAmountTons;
  @JsonKey(name: 'burn_time_sec')
  final  double? burnTimeSec;

  FirstStage({this.thrustSeaLevel, this.thrustVacuum, this.reusable, this.engines, this.fuelAmountTons, this.burnTimeSec});

   factory FirstStage.fromJson(Map<String, dynamic> json) => _$FirstStageFromJson(json);

   Map<String, dynamic> toJson() => _$FirstStageToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class ThrustSeaLevel {
  @JsonKey(name: 'kN')
  final  double? kN;
  @JsonKey(name: 'lbf')
  final  double? lbf;

  ThrustSeaLevel({this.kN, this.lbf});

   factory ThrustSeaLevel.fromJson(Map<String, dynamic> json) => _$ThrustSeaLevelFromJson(json);

   Map<String, dynamic> toJson() => _$ThrustSeaLevelToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class ThrustVacuum {
  @JsonKey(name: 'kN')
  final  double? kN;
  @JsonKey(name: 'lbf')
  final  double? lbf;

  ThrustVacuum({this.kN, this.lbf});

   factory ThrustVacuum.fromJson(Map<String, dynamic> json) => _$ThrustVacuumFromJson(json);

   Map<String, dynamic> toJson() => _$ThrustVacuumToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class SecondStage {
  @JsonKey(name: 'thrust')
  final  Thrust? thrust;
  @JsonKey(name: 'payloads')
  final  Payloads? payloads;
  @JsonKey(name: 'reusable')
  final  bool? reusable;
  @JsonKey(name: 'engines')
  final  double? engines;
  @JsonKey(name: 'fuel_amount_tons')
  final  double? fuelAmountTons;
  @JsonKey(name: 'burn_time_sec')
  final  double? burnTimeSec;

  SecondStage({this.thrust, this.payloads, this.reusable, this.engines, this.fuelAmountTons, this.burnTimeSec});

   factory SecondStage.fromJson(Map<String, dynamic> json) => _$SecondStageFromJson(json);

   Map<String, dynamic> toJson() => _$SecondStageToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Thrust {
  @JsonKey(name: 'kN')
  final  double? kN;
  @JsonKey(name: 'lbf')
  final  double? lbf;

  Thrust({this.kN, this.lbf});

   factory Thrust.fromJson(Map<String, dynamic> json) => _$ThrustFromJson(json);

   Map<String, dynamic> toJson() => _$ThrustToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Payloads {
  @JsonKey(name: 'composite_fairing')
  final  CompositeFairing? compositeFairing;
  @JsonKey(name: 'option_1')
  final  String? option_1;

  Payloads({this.compositeFairing, this.option_1});

   factory Payloads.fromJson(Map<String, dynamic> json) => _$PayloadsFromJson(json);

   Map<String, dynamic> toJson() => _$PayloadsToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class CompositeFairing {
  @JsonKey(name: 'height')
  final  Height? height;
  @JsonKey(name: 'diameter')
  final  Diameter? diameter;

  CompositeFairing({this.height, this.diameter});

   factory CompositeFairing.fromJson(Map<String, dynamic> json) => _$CompositeFairingFromJson(json);

   Map<String, dynamic> toJson() => _$CompositeFairingToJson(this);
}




@JsonSerializable(ignoreUnannotated: false)
class Engines {
  @JsonKey(name: 'isp')
  final  Isp? isp;
  @JsonKey(name: 'thrust_sea_level')
  final  ThrustSeaLevel? thrustSeaLevel;
  @JsonKey(name: 'thrust_vacuum')
  final  ThrustVacuum? thrustVacuum;
  @JsonKey(name: 'number')
  final  double? number;
  @JsonKey(name: 'type')
  final  String? type;
  @JsonKey(name: 'version')
  final  String? version;
  @JsonKey(name: 'layout')
  final  String? layout;
  @JsonKey(name: 'engine_loss_max')
  final  double? engineLossMax;
  @JsonKey(name: 'propellant_1')
  final  String? propellant_1;
  @JsonKey(name: 'propellant_2')
  final  String? propellant_2;
  @JsonKey(name: 'thrust_to_weight')
  final  double? thrustToWeight;

  Engines({this.isp, this.thrustSeaLevel, this.thrustVacuum, this.number, this.type, this.version, this.layout, this.engineLossMax, this.propellant_1, this.propellant_2, this.thrustToWeight});

   factory Engines.fromJson(Map<String, dynamic> json) => _$EnginesFromJson(json);

   Map<String, dynamic> toJson() => _$EnginesToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class Isp {
  @JsonKey(name: 'sea_level')
  final  double? seaLevel;
  @JsonKey(name: 'vacuum')
  final  double? vacuum;

  Isp({this.seaLevel, this.vacuum});

   factory Isp.fromJson(Map<String, dynamic> json) => _$IspFromJson(json);

   Map<String, dynamic> toJson() => _$IspToJson(this);
}





@JsonSerializable(ignoreUnannotated: false)
class LandingLegs {
  @JsonKey(name: 'number')
  final  double? number;

  LandingLegs({this.number});

   factory LandingLegs.fromJson(Map<String, dynamic> json) => _$LandingLegsFromJson(json);

   Map<String, dynamic> toJson() => _$LandingLegsToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class PayloadWeight {
  @JsonKey(name: 'id')
  final  String? id;
  @JsonKey(name: 'name')
  final  String? name;
  @JsonKey(name: 'kg')
  final  double? kg;
  @JsonKey(name: 'lb')
  final  double? lb;

  PayloadWeight({this.id, this.name, this.kg, this.lb});

   factory PayloadWeight.fromJson(Map<String, dynamic> json) => _$PayloadWeightFromJson(json);

   Map<String, dynamic> toJson() => _$PayloadWeightToJson(this);
}

