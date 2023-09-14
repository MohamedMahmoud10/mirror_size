// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_product_mapper.dart';

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: require_trailing_commas, unnecessary_const
// ignore_for_file: unnecessary_lambdas, unnecessary_parenthesis
// ignore_for_file: unnecessary_raw_strings

/// {@template package:mirror_size/app/feat/custom_products/data/mapper/custom_product_mapper.dart}
/// Available mappings:
/// - `CustomProductsResponseModel` → `CustomProductsResponseEntity`.
/// - `PrefrencesResponseModel` → `PrefrencesResponseEntity`.
/// - `MeasurementMappingResponseModel` → `MeasurementMappingResponseEntity`.
/// - `FabricResponseModel` → `FabricResponseEntity`.
/// - `ValuesResponseModel` → `ValuesResponseEntity`.
/// - `MaterialModel` → `MaterialEntity`.
/// - `MaterialsModel` → `MaterialsEntity`.
/// {@endtemplate}
class $CustomProductDataMapper implements AutoMapprInterface {
  const $CustomProductDataMapper();

  Type _typeOf<T>() => T;
  List<AutoMapprInterface> get _modules => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:mirror_size/app/feat/custom_products/data/mapper/custom_product_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<CustomProductsResponseModel>() ||
            sourceTypeOf == _typeOf<CustomProductsResponseModel?>()) &&
        (targetTypeOf == _typeOf<CustomProductsResponseEntity>() ||
            targetTypeOf == _typeOf<CustomProductsResponseEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<PrefrencesResponseModel>() ||
            sourceTypeOf == _typeOf<PrefrencesResponseModel?>()) &&
        (targetTypeOf == _typeOf<PrefrencesResponseEntity>() ||
            targetTypeOf == _typeOf<PrefrencesResponseEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<MeasurementMappingResponseModel>() ||
            sourceTypeOf == _typeOf<MeasurementMappingResponseModel?>()) &&
        (targetTypeOf == _typeOf<MeasurementMappingResponseEntity>() ||
            targetTypeOf == _typeOf<MeasurementMappingResponseEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<FabricResponseModel>() ||
            sourceTypeOf == _typeOf<FabricResponseModel?>()) &&
        (targetTypeOf == _typeOf<FabricResponseEntity>() ||
            targetTypeOf == _typeOf<FabricResponseEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<ValuesResponseModel>() ||
            sourceTypeOf == _typeOf<ValuesResponseModel?>()) &&
        (targetTypeOf == _typeOf<ValuesResponseEntity>() ||
            targetTypeOf == _typeOf<ValuesResponseEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<MaterialModel>() ||
            sourceTypeOf == _typeOf<MaterialModel?>()) &&
        (targetTypeOf == _typeOf<MaterialEntity>() ||
            targetTypeOf == _typeOf<MaterialEntity?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<MaterialsModel>() ||
            sourceTypeOf == _typeOf<MaterialsModel?>()) &&
        (targetTypeOf == _typeOf<MaterialsEntity>() ||
            targetTypeOf == _typeOf<MaterialsEntity?>())) {
      return true;
    }
    if (recursive) {
      for (final mappr in _modules) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:mirror_size/app/feat/custom_products/data/mapper/custom_product_mapper.dart}
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:mirror_size/app/feat/custom_products/data/mapper/custom_product_mapper.dart}
  @override
  TARGET? tryConvert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(
        model,
        canReturnNull: true,
      );
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(model);
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:mirror_size/app/feat/custom_products/data/mapper/custom_product_mapper.dart}
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:mirror_size/app/feat/custom_products/data/mapper/custom_product_mapper.dart}
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
      Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>((item) => _convert(item, canReturnNull: true));
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:mirror_size/app/feat/custom_products/data/mapper/custom_product_mapper.dart}
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:mirror_size/app/feat/custom_products/data/mapper/custom_product_mapper.dart}
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:mirror_size/app/feat/custom_products/data/mapper/custom_product_mapper.dart}
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:mirror_size/app/feat/custom_products/data/mapper/custom_product_mapper.dart}
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _modules) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<CustomProductsResponseModel>() ||
            sourceTypeOf == _typeOf<CustomProductsResponseModel?>()) &&
        (targetTypeOf == _typeOf<CustomProductsResponseEntity>() ||
            targetTypeOf == _typeOf<CustomProductsResponseEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__CustomProductsResponseModel__To__CustomProductsResponseEntity(
          (model as CustomProductsResponseModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<PrefrencesResponseModel>() ||
            sourceTypeOf == _typeOf<PrefrencesResponseModel?>()) &&
        (targetTypeOf == _typeOf<PrefrencesResponseEntity>() ||
            targetTypeOf == _typeOf<PrefrencesResponseEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__PrefrencesResponseModel__To__PrefrencesResponseEntity(
          (model as PrefrencesResponseModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<MeasurementMappingResponseModel>() ||
            sourceTypeOf == _typeOf<MeasurementMappingResponseModel?>()) &&
        (targetTypeOf == _typeOf<MeasurementMappingResponseEntity>() ||
            targetTypeOf == _typeOf<MeasurementMappingResponseEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__MeasurementMappingResponseModel__To__MeasurementMappingResponseEntity(
          (model as MeasurementMappingResponseModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<FabricResponseModel>() ||
            sourceTypeOf == _typeOf<FabricResponseModel?>()) &&
        (targetTypeOf == _typeOf<FabricResponseEntity>() ||
            targetTypeOf == _typeOf<FabricResponseEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__FabricResponseModel__To__FabricResponseEntity(
          (model as FabricResponseModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<ValuesResponseModel>() ||
            sourceTypeOf == _typeOf<ValuesResponseModel?>()) &&
        (targetTypeOf == _typeOf<ValuesResponseEntity>() ||
            targetTypeOf == _typeOf<ValuesResponseEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__ValuesResponseModel__To__ValuesResponseEntity(
          (model as ValuesResponseModel?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<MaterialModel>() ||
            sourceTypeOf == _typeOf<MaterialModel?>()) &&
        (targetTypeOf == _typeOf<MaterialEntity>() ||
            targetTypeOf == _typeOf<MaterialEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__MaterialModel__To__MaterialEntity((model as MaterialModel?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<MaterialsModel>() ||
            sourceTypeOf == _typeOf<MaterialsModel?>()) &&
        (targetTypeOf == _typeOf<MaterialsEntity>() ||
            targetTypeOf == _typeOf<MaterialsEntity?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__MaterialsModel__To__MaterialsEntity(
          (model as MaterialsModel?)) as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  CustomProductsResponseEntity
      _map__CustomProductsResponseModel__To__CustomProductsResponseEntity(
          CustomProductsResponseModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping CustomProductsResponseModel → CustomProductsResponseEntity failed because CustomProductsResponseModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<CustomProductsResponseModel, CustomProductsResponseEntity> to handle null values during mapping.');
    }
    return CustomProductsResponseEntity(
      objectId: model.objectId,
      name: model.name,
      gender: model.gender,
      createdAt: model.createdAt,
      image: model.image,
      updatedAt: model.updatedAt,
      color: model.color,
      fabric: model.fabric
          ?.map<FabricResponseEntity>(
              _map__FabricResponseModel__To__FabricResponseEntity)
          .toList(),
      material: model.material
          ?.map<MaterialEntity>(_map__MaterialModel__To__MaterialEntity)
          .toList(),
      prefrences: model.prefrences
          ?.map<PrefrencesResponseEntity>(
              _map__PrefrencesResponseModel__To__PrefrencesResponseEntity)
          .toList(),
      measurementMapping: model.measurementMapping
          ?.map<MeasurementMappingResponseEntity>(
              _map__MeasurementMappingResponseModel__To__MeasurementMappingResponseEntity)
          .toList(),
    );
  }

  PrefrencesResponseEntity
      _map__PrefrencesResponseModel__To__PrefrencesResponseEntity(
          PrefrencesResponseModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping PrefrencesResponseModel → PrefrencesResponseEntity failed because PrefrencesResponseModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<PrefrencesResponseModel, PrefrencesResponseEntity> to handle null values during mapping.');
    }
    return PrefrencesResponseEntity(
      name: model.name,
      type: model.type,
      values: model.values
          ?.map<ValuesResponseEntity>(
              _map__ValuesResponseModel__To__ValuesResponseEntity)
          .toList(),
      labelAR: model.labelAR,
      labelEN: model.labelEN,
    );
  }

  MeasurementMappingResponseEntity
      _map__MeasurementMappingResponseModel__To__MeasurementMappingResponseEntity(
          MeasurementMappingResponseModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MeasurementMappingResponseModel → MeasurementMappingResponseEntity failed because MeasurementMappingResponseModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MeasurementMappingResponseModel, MeasurementMappingResponseEntity> to handle null values during mapping.');
    }
    return MeasurementMappingResponseEntity(
      name: model.name,
      equation: model.equation,
    );
  }

  FabricResponseEntity _map__FabricResponseModel__To__FabricResponseEntity(
      FabricResponseModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping FabricResponseModel → FabricResponseEntity failed because FabricResponseModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<FabricResponseModel, FabricResponseEntity> to handle null values during mapping.');
    }
    return FabricResponseEntity(
      name: model.name,
      image: model.image,
    );
  }

  ValuesResponseEntity _map__ValuesResponseModel__To__ValuesResponseEntity(
      ValuesResponseModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ValuesResponseModel → ValuesResponseEntity failed because ValuesResponseModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ValuesResponseModel, ValuesResponseEntity> to handle null values during mapping.');
    }
    return ValuesResponseEntity(
      valueEn: model.valueEn,
      valueAr: model.valueAr,
      def: model.def,
    );
  }

  MaterialEntity _map__MaterialModel__To__MaterialEntity(MaterialModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MaterialModel → MaterialEntity failed because MaterialModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MaterialModel, MaterialEntity> to handle null values during mapping.');
    }
    return MaterialEntity(
      name: model.name,
      image: model.image,
      objectId: model.objectId,
      materials: model.materials
          ?.map<MaterialsEntity>(_map__MaterialsModel__To__MaterialsEntity)
          .toList(),
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  MaterialsEntity _map__MaterialsModel__To__MaterialsEntity(
      MaterialsModel? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping MaterialsModel → MaterialsEntity failed because MaterialsModel was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<MaterialsModel, MaterialsEntity> to handle null values during mapping.');
    }
    return MaterialsEntity(
      name: model.name,
      value: model.value,
    );
  }
}
