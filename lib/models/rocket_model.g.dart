// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RocketModel _$RocketModelFromJson(Map<String, dynamic> json) => RocketModel(
      height: json['height'] == null
          ? null
          : Height.fromJson(json['height'] as Map<String, dynamic>),
      diameter: json['diameter'] == null
          ? null
          : Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
      mass: json['mass'] == null
          ? null
          : Mass.fromJson(json['mass'] as Map<String, dynamic>),
      firstStage: json['first_stage'] == null
          ? null
          : FirstStage.fromJson(json['first_stage'] as Map<String, dynamic>),
      secondStage: json['second_stage'] == null
          ? null
          : SecondStage.fromJson(json['second_stage'] as Map<String, dynamic>),
      engines: json['engines'] == null
          ? null
          : Engines.fromJson(json['engines'] as Map<String, dynamic>),
      landingLegs: json['landing_legs'] == null
          ? null
          : LandingLegs.fromJson(json['landing_legs'] as Map<String, dynamic>),
      payloadWeights: (json['payload_weights'] as List<dynamic>?)
          ?.map((e) => PayloadWeight.fromJson(e as Map<String, dynamic>))
          .toList(),
      flickrImages: (json['flickr_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      active: json['active'] as bool?,
      stages: (json['stages'] as num?)?.toDouble(),
      boosters: (json['boosters'] as num?)?.toDouble(),
      costPerLaunch: (json['cost_per_launch'] as num?)?.toDouble(),
      successRatePct: (json['success_rate_pct'] as num?)?.toDouble(),
      firstFlight: json['first_flight'] as String?,
      country: json['country'] as String?,
      company: json['company'] as String?,
      wikipedia: json['wikipedia'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$RocketModelToJson(RocketModel instance) =>
    <String, dynamic>{
      'height': instance.height,
      'diameter': instance.diameter,
      'mass': instance.mass,
      'first_stage': instance.firstStage,
      'second_stage': instance.secondStage,
      'engines': instance.engines,
      'landing_legs': instance.landingLegs,
      'payload_weights': instance.payloadWeights,
      'flickr_images': instance.flickrImages,
      'name': instance.name,
      'type': instance.type,
      'active': instance.active,
      'stages': instance.stages,
      'boosters': instance.boosters,
      'cost_per_launch': instance.costPerLaunch,
      'success_rate_pct': instance.successRatePct,
      'first_flight': instance.firstFlight,
      'country': instance.country,
      'company': instance.company,
      'wikipedia': instance.wikipedia,
      'description': instance.description,
      'id': instance.id,
    };

Height _$HeightFromJson(Map<String, dynamic> json) => Height(
      meters: (json['meters'] as num?)?.toDouble(),
      feet: (json['feet'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$HeightToJson(Height instance) => <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

Diameter _$DiameterFromJson(Map<String, dynamic> json) => Diameter(
      meters: (json['meters'] as num?)?.toDouble(),
      feet: (json['feet'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DiameterToJson(Diameter instance) => <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

Mass _$MassFromJson(Map<String, dynamic> json) => Mass(
      kg: (json['kg'] as num?)?.toDouble(),
      lb: (json['lb'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MassToJson(Mass instance) => <String, dynamic>{
      'kg': instance.kg,
      'lb': instance.lb,
    };

FirstStage _$FirstStageFromJson(Map<String, dynamic> json) => FirstStage(
      thrustSeaLevel: json['thrust_sea_level'] == null
          ? null
          : ThrustSeaLevel.fromJson(
              json['thrust_sea_level'] as Map<String, dynamic>),
      thrustVacuum: json['thrust_vacuum'] == null
          ? null
          : ThrustVacuum.fromJson(
              json['thrust_vacuum'] as Map<String, dynamic>),
      reusable: json['reusable'] as bool?,
      engines: (json['engines'] as num?)?.toDouble(),
      fuelAmountTons: (json['fuel_amount_tons'] as num?)?.toDouble(),
      burnTimeSec: (json['burn_time_sec'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$FirstStageToJson(FirstStage instance) =>
    <String, dynamic>{
      'thrust_sea_level': instance.thrustSeaLevel,
      'thrust_vacuum': instance.thrustVacuum,
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuel_amount_tons': instance.fuelAmountTons,
      'burn_time_sec': instance.burnTimeSec,
    };

ThrustSeaLevel _$ThrustSeaLevelFromJson(Map<String, dynamic> json) =>
    ThrustSeaLevel(
      kN: (json['kN'] as num?)?.toDouble(),
      lbf: (json['lbf'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ThrustSeaLevelToJson(ThrustSeaLevel instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

ThrustVacuum _$ThrustVacuumFromJson(Map<String, dynamic> json) => ThrustVacuum(
      kN: (json['kN'] as num?)?.toDouble(),
      lbf: (json['lbf'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ThrustVacuumToJson(ThrustVacuum instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

SecondStage _$SecondStageFromJson(Map<String, dynamic> json) => SecondStage(
      thrust: json['thrust'] == null
          ? null
          : Thrust.fromJson(json['thrust'] as Map<String, dynamic>),
      payloads: json['payloads'] == null
          ? null
          : Payloads.fromJson(json['payloads'] as Map<String, dynamic>),
      reusable: json['reusable'] as bool?,
      engines: (json['engines'] as num?)?.toDouble(),
      fuelAmountTons: (json['fuel_amount_tons'] as num?)?.toDouble(),
      burnTimeSec: (json['burn_time_sec'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SecondStageToJson(SecondStage instance) =>
    <String, dynamic>{
      'thrust': instance.thrust,
      'payloads': instance.payloads,
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuel_amount_tons': instance.fuelAmountTons,
      'burn_time_sec': instance.burnTimeSec,
    };

Thrust _$ThrustFromJson(Map<String, dynamic> json) => Thrust(
      kN: (json['kN'] as num?)?.toDouble(),
      lbf: (json['lbf'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ThrustToJson(Thrust instance) => <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

Payloads _$PayloadsFromJson(Map<String, dynamic> json) => Payloads(
      compositeFairing: json['composite_fairing'] == null
          ? null
          : CompositeFairing.fromJson(
              json['composite_fairing'] as Map<String, dynamic>),
      option_1: json['option_1'] as String?,
    );

Map<String, dynamic> _$PayloadsToJson(Payloads instance) => <String, dynamic>{
      'composite_fairing': instance.compositeFairing,
      'option_1': instance.option_1,
    };

CompositeFairing _$CompositeFairingFromJson(Map<String, dynamic> json) =>
    CompositeFairing(
      height: json['height'] == null
          ? null
          : Height.fromJson(json['height'] as Map<String, dynamic>),
      diameter: json['diameter'] == null
          ? null
          : Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompositeFairingToJson(CompositeFairing instance) =>
    <String, dynamic>{
      'height': instance.height,
      'diameter': instance.diameter,
    };

Engines _$EnginesFromJson(Map<String, dynamic> json) => Engines(
      isp: json['isp'] == null
          ? null
          : Isp.fromJson(json['isp'] as Map<String, dynamic>),
      thrustSeaLevel: json['thrust_sea_level'] == null
          ? null
          : ThrustSeaLevel.fromJson(
              json['thrust_sea_level'] as Map<String, dynamic>),
      thrustVacuum: json['thrust_vacuum'] == null
          ? null
          : ThrustVacuum.fromJson(
              json['thrust_vacuum'] as Map<String, dynamic>),
      number: (json['number'] as num?)?.toDouble(),
      type: json['type'] as String?,
      version: json['version'] as String?,
      layout: json['layout'] as String?,
      engineLossMax: (json['engine_loss_max'] as num?)?.toDouble(),
      propellant_1: json['propellant_1'] as String?,
      propellant_2: json['propellant_2'] as String?,
      thrustToWeight: (json['thrust_to_weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$EnginesToJson(Engines instance) => <String, dynamic>{
      'isp': instance.isp,
      'thrust_sea_level': instance.thrustSeaLevel,
      'thrust_vacuum': instance.thrustVacuum,
      'number': instance.number,
      'type': instance.type,
      'version': instance.version,
      'layout': instance.layout,
      'engine_loss_max': instance.engineLossMax,
      'propellant_1': instance.propellant_1,
      'propellant_2': instance.propellant_2,
      'thrust_to_weight': instance.thrustToWeight,
    };

Isp _$IspFromJson(Map<String, dynamic> json) => Isp(
      seaLevel: (json['sea_level'] as num?)?.toDouble(),
      vacuum: (json['vacuum'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$IspToJson(Isp instance) => <String, dynamic>{
      'sea_level': instance.seaLevel,
      'vacuum': instance.vacuum,
    };

LandingLegs _$LandingLegsFromJson(Map<String, dynamic> json) => LandingLegs(
      number: (json['number'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LandingLegsToJson(LandingLegs instance) =>
    <String, dynamic>{
      'number': instance.number,
    };

PayloadWeight _$PayloadWeightFromJson(Map<String, dynamic> json) =>
    PayloadWeight(
      id: json['id'] as String?,
      name: json['name'] as String?,
      kg: (json['kg'] as num?)?.toDouble(),
      lb: (json['lb'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PayloadWeightToJson(PayloadWeight instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kg': instance.kg,
      'lb': instance.lb,
    };
