//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TypeInfo {
  /// Returns a new [TypeInfo] instance.
  TypeInfo({
    this.name,
    this.customAttributes = const [],
    this.isCollectible,
    this.metadataToken,
    this.isInterface,
    this.memberType,
    this.namespace,
    this.assemblyQualifiedName,
    this.fullName,
    this.assembly,
    this.module,
    this.isNested,
    this.declaringType,
    this.declaringMethod,
    this.reflectedType,
    this.underlyingSystemType,
    this.isTypeDefinition,
    this.isArray,
    this.isByRef,
    this.isPointer,
    this.isConstructedGenericType,
    this.isGenericParameter,
    this.isGenericTypeParameter,
    this.isGenericMethodParameter,
    this.isGenericType,
    this.isGenericTypeDefinition,
    this.isSZArray,
    this.isVariableBoundArray,
    this.isByRefLike,
    this.isFunctionPointer,
    this.isUnmanagedFunctionPointer,
    this.hasElementType,
    this.genericTypeArguments = const [],
    this.genericParameterPosition,
    this.genericParameterAttributes,
    this.attributes,
    this.isAbstract,
    this.isImport,
    this.isSealed,
    this.isSpecialName,
    this.isClass,
    this.isNestedAssembly,
    this.isNestedFamANDAssem,
    this.isNestedFamily,
    this.isNestedFamORAssem,
    this.isNestedPrivate,
    this.isNestedPublic,
    this.isNotPublic,
    this.isPublic,
    this.isAutoLayout,
    this.isExplicitLayout,
    this.isLayoutSequential,
    this.isAnsiClass,
    this.isAutoClass,
    this.isUnicodeClass,
    this.isCOMObject,
    this.isContextful,
    this.isEnum,
    this.isMarshalByRef,
    this.isPrimitive,
    this.isValueType,
    this.isSignatureType,
    this.isSecurityCritical,
    this.isSecuritySafeCritical,
    this.isSecurityTransparent,
    this.structLayoutAttribute,
    this.typeInitializer,
    this.typeHandle,
    this.guid,
    this.baseType,
    this.isSerializable,
    this.containsGenericParameters,
    this.isVisible,
    this.genericTypeParameters = const [],
    this.declaredConstructors = const [],
    this.declaredEvents = const [],
    this.declaredFields = const [],
    this.declaredMembers = const [],
    this.declaredMethods = const [],
    this.declaredNestedTypes = const [],
    this.declaredProperties = const [],
    this.implementedInterfaces = const [],
  });

  String? name;

  List<CustomAttributeData>? customAttributes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isCollectible;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? metadataToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isInterface;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MemberTypes? memberType;

  String? namespace;

  String? assemblyQualifiedName;

  String? fullName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Assembly? assembly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Module? module;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isNested;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type? declaringType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MethodBase? declaringMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type? reflectedType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type? underlyingSystemType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isTypeDefinition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isArray;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isByRef;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPointer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isConstructedGenericType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGenericParameter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGenericTypeParameter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGenericMethodParameter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGenericType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isGenericTypeDefinition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSZArray;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isVariableBoundArray;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isByRefLike;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isFunctionPointer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isUnmanagedFunctionPointer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasElementType;

  List<Type>? genericTypeArguments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? genericParameterPosition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GenericParameterAttributes? genericParameterAttributes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TypeAttributes? attributes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAbstract;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isImport;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSealed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSpecialName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isClass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isNestedAssembly;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isNestedFamANDAssem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isNestedFamily;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isNestedFamORAssem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isNestedPrivate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isNestedPublic;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isNotPublic;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPublic;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAutoLayout;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isExplicitLayout;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isLayoutSequential;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAnsiClass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isAutoClass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isUnicodeClass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isCOMObject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isContextful;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isEnum;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isMarshalByRef;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPrimitive;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isValueType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSignatureType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSecurityCritical;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSecuritySafeCritical;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSecurityTransparent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StructLayoutAttribute? structLayoutAttribute;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConstructorInfo? typeInitializer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RuntimeTypeHandle? typeHandle;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? guid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Type? baseType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSerializable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? containsGenericParameters;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isVisible;

  List<Type>? genericTypeParameters;

  List<ConstructorInfo>? declaredConstructors;

  List<EventInfo>? declaredEvents;

  List<FieldInfo>? declaredFields;

  List<MemberInfo>? declaredMembers;

  List<MethodInfo>? declaredMethods;

  List<TypeInfo>? declaredNestedTypes;

  List<PropertyInfo>? declaredProperties;

  List<Type>? implementedInterfaces;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TypeInfo &&
    other.name == name &&
    _deepEquality.equals(other.customAttributes, customAttributes) &&
    other.isCollectible == isCollectible &&
    other.metadataToken == metadataToken &&
    other.isInterface == isInterface &&
    other.memberType == memberType &&
    other.namespace == namespace &&
    other.assemblyQualifiedName == assemblyQualifiedName &&
    other.fullName == fullName &&
    other.assembly == assembly &&
    other.module == module &&
    other.isNested == isNested &&
    other.declaringType == declaringType &&
    other.declaringMethod == declaringMethod &&
    other.reflectedType == reflectedType &&
    other.underlyingSystemType == underlyingSystemType &&
    other.isTypeDefinition == isTypeDefinition &&
    other.isArray == isArray &&
    other.isByRef == isByRef &&
    other.isPointer == isPointer &&
    other.isConstructedGenericType == isConstructedGenericType &&
    other.isGenericParameter == isGenericParameter &&
    other.isGenericTypeParameter == isGenericTypeParameter &&
    other.isGenericMethodParameter == isGenericMethodParameter &&
    other.isGenericType == isGenericType &&
    other.isGenericTypeDefinition == isGenericTypeDefinition &&
    other.isSZArray == isSZArray &&
    other.isVariableBoundArray == isVariableBoundArray &&
    other.isByRefLike == isByRefLike &&
    other.isFunctionPointer == isFunctionPointer &&
    other.isUnmanagedFunctionPointer == isUnmanagedFunctionPointer &&
    other.hasElementType == hasElementType &&
    _deepEquality.equals(other.genericTypeArguments, genericTypeArguments) &&
    other.genericParameterPosition == genericParameterPosition &&
    other.genericParameterAttributes == genericParameterAttributes &&
    other.attributes == attributes &&
    other.isAbstract == isAbstract &&
    other.isImport == isImport &&
    other.isSealed == isSealed &&
    other.isSpecialName == isSpecialName &&
    other.isClass == isClass &&
    other.isNestedAssembly == isNestedAssembly &&
    other.isNestedFamANDAssem == isNestedFamANDAssem &&
    other.isNestedFamily == isNestedFamily &&
    other.isNestedFamORAssem == isNestedFamORAssem &&
    other.isNestedPrivate == isNestedPrivate &&
    other.isNestedPublic == isNestedPublic &&
    other.isNotPublic == isNotPublic &&
    other.isPublic == isPublic &&
    other.isAutoLayout == isAutoLayout &&
    other.isExplicitLayout == isExplicitLayout &&
    other.isLayoutSequential == isLayoutSequential &&
    other.isAnsiClass == isAnsiClass &&
    other.isAutoClass == isAutoClass &&
    other.isUnicodeClass == isUnicodeClass &&
    other.isCOMObject == isCOMObject &&
    other.isContextful == isContextful &&
    other.isEnum == isEnum &&
    other.isMarshalByRef == isMarshalByRef &&
    other.isPrimitive == isPrimitive &&
    other.isValueType == isValueType &&
    other.isSignatureType == isSignatureType &&
    other.isSecurityCritical == isSecurityCritical &&
    other.isSecuritySafeCritical == isSecuritySafeCritical &&
    other.isSecurityTransparent == isSecurityTransparent &&
    other.structLayoutAttribute == structLayoutAttribute &&
    other.typeInitializer == typeInitializer &&
    other.typeHandle == typeHandle &&
    other.guid == guid &&
    other.baseType == baseType &&
    other.isSerializable == isSerializable &&
    other.containsGenericParameters == containsGenericParameters &&
    other.isVisible == isVisible &&
    _deepEquality.equals(other.genericTypeParameters, genericTypeParameters) &&
    _deepEquality.equals(other.declaredConstructors, declaredConstructors) &&
    _deepEquality.equals(other.declaredEvents, declaredEvents) &&
    _deepEquality.equals(other.declaredFields, declaredFields) &&
    _deepEquality.equals(other.declaredMembers, declaredMembers) &&
    _deepEquality.equals(other.declaredMethods, declaredMethods) &&
    _deepEquality.equals(other.declaredNestedTypes, declaredNestedTypes) &&
    _deepEquality.equals(other.declaredProperties, declaredProperties) &&
    _deepEquality.equals(other.implementedInterfaces, implementedInterfaces);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (customAttributes == null ? 0 : customAttributes!.hashCode) +
    (isCollectible == null ? 0 : isCollectible!.hashCode) +
    (metadataToken == null ? 0 : metadataToken!.hashCode) +
    (isInterface == null ? 0 : isInterface!.hashCode) +
    (memberType == null ? 0 : memberType!.hashCode) +
    (namespace == null ? 0 : namespace!.hashCode) +
    (assemblyQualifiedName == null ? 0 : assemblyQualifiedName!.hashCode) +
    (fullName == null ? 0 : fullName!.hashCode) +
    (assembly == null ? 0 : assembly!.hashCode) +
    (module == null ? 0 : module!.hashCode) +
    (isNested == null ? 0 : isNested!.hashCode) +
    (declaringType == null ? 0 : declaringType!.hashCode) +
    (declaringMethod == null ? 0 : declaringMethod!.hashCode) +
    (reflectedType == null ? 0 : reflectedType!.hashCode) +
    (underlyingSystemType == null ? 0 : underlyingSystemType!.hashCode) +
    (isTypeDefinition == null ? 0 : isTypeDefinition!.hashCode) +
    (isArray == null ? 0 : isArray!.hashCode) +
    (isByRef == null ? 0 : isByRef!.hashCode) +
    (isPointer == null ? 0 : isPointer!.hashCode) +
    (isConstructedGenericType == null ? 0 : isConstructedGenericType!.hashCode) +
    (isGenericParameter == null ? 0 : isGenericParameter!.hashCode) +
    (isGenericTypeParameter == null ? 0 : isGenericTypeParameter!.hashCode) +
    (isGenericMethodParameter == null ? 0 : isGenericMethodParameter!.hashCode) +
    (isGenericType == null ? 0 : isGenericType!.hashCode) +
    (isGenericTypeDefinition == null ? 0 : isGenericTypeDefinition!.hashCode) +
    (isSZArray == null ? 0 : isSZArray!.hashCode) +
    (isVariableBoundArray == null ? 0 : isVariableBoundArray!.hashCode) +
    (isByRefLike == null ? 0 : isByRefLike!.hashCode) +
    (isFunctionPointer == null ? 0 : isFunctionPointer!.hashCode) +
    (isUnmanagedFunctionPointer == null ? 0 : isUnmanagedFunctionPointer!.hashCode) +
    (hasElementType == null ? 0 : hasElementType!.hashCode) +
    (genericTypeArguments == null ? 0 : genericTypeArguments!.hashCode) +
    (genericParameterPosition == null ? 0 : genericParameterPosition!.hashCode) +
    (genericParameterAttributes == null ? 0 : genericParameterAttributes!.hashCode) +
    (attributes == null ? 0 : attributes!.hashCode) +
    (isAbstract == null ? 0 : isAbstract!.hashCode) +
    (isImport == null ? 0 : isImport!.hashCode) +
    (isSealed == null ? 0 : isSealed!.hashCode) +
    (isSpecialName == null ? 0 : isSpecialName!.hashCode) +
    (isClass == null ? 0 : isClass!.hashCode) +
    (isNestedAssembly == null ? 0 : isNestedAssembly!.hashCode) +
    (isNestedFamANDAssem == null ? 0 : isNestedFamANDAssem!.hashCode) +
    (isNestedFamily == null ? 0 : isNestedFamily!.hashCode) +
    (isNestedFamORAssem == null ? 0 : isNestedFamORAssem!.hashCode) +
    (isNestedPrivate == null ? 0 : isNestedPrivate!.hashCode) +
    (isNestedPublic == null ? 0 : isNestedPublic!.hashCode) +
    (isNotPublic == null ? 0 : isNotPublic!.hashCode) +
    (isPublic == null ? 0 : isPublic!.hashCode) +
    (isAutoLayout == null ? 0 : isAutoLayout!.hashCode) +
    (isExplicitLayout == null ? 0 : isExplicitLayout!.hashCode) +
    (isLayoutSequential == null ? 0 : isLayoutSequential!.hashCode) +
    (isAnsiClass == null ? 0 : isAnsiClass!.hashCode) +
    (isAutoClass == null ? 0 : isAutoClass!.hashCode) +
    (isUnicodeClass == null ? 0 : isUnicodeClass!.hashCode) +
    (isCOMObject == null ? 0 : isCOMObject!.hashCode) +
    (isContextful == null ? 0 : isContextful!.hashCode) +
    (isEnum == null ? 0 : isEnum!.hashCode) +
    (isMarshalByRef == null ? 0 : isMarshalByRef!.hashCode) +
    (isPrimitive == null ? 0 : isPrimitive!.hashCode) +
    (isValueType == null ? 0 : isValueType!.hashCode) +
    (isSignatureType == null ? 0 : isSignatureType!.hashCode) +
    (isSecurityCritical == null ? 0 : isSecurityCritical!.hashCode) +
    (isSecuritySafeCritical == null ? 0 : isSecuritySafeCritical!.hashCode) +
    (isSecurityTransparent == null ? 0 : isSecurityTransparent!.hashCode) +
    (structLayoutAttribute == null ? 0 : structLayoutAttribute!.hashCode) +
    (typeInitializer == null ? 0 : typeInitializer!.hashCode) +
    (typeHandle == null ? 0 : typeHandle!.hashCode) +
    (guid == null ? 0 : guid!.hashCode) +
    (baseType == null ? 0 : baseType!.hashCode) +
    (isSerializable == null ? 0 : isSerializable!.hashCode) +
    (containsGenericParameters == null ? 0 : containsGenericParameters!.hashCode) +
    (isVisible == null ? 0 : isVisible!.hashCode) +
    (genericTypeParameters == null ? 0 : genericTypeParameters!.hashCode) +
    (declaredConstructors == null ? 0 : declaredConstructors!.hashCode) +
    (declaredEvents == null ? 0 : declaredEvents!.hashCode) +
    (declaredFields == null ? 0 : declaredFields!.hashCode) +
    (declaredMembers == null ? 0 : declaredMembers!.hashCode) +
    (declaredMethods == null ? 0 : declaredMethods!.hashCode) +
    (declaredNestedTypes == null ? 0 : declaredNestedTypes!.hashCode) +
    (declaredProperties == null ? 0 : declaredProperties!.hashCode) +
    (implementedInterfaces == null ? 0 : implementedInterfaces!.hashCode);

  @override
  String toString() => 'TypeInfo[name=$name, customAttributes=$customAttributes, isCollectible=$isCollectible, metadataToken=$metadataToken, isInterface=$isInterface, memberType=$memberType, namespace=$namespace, assemblyQualifiedName=$assemblyQualifiedName, fullName=$fullName, assembly=$assembly, module=$module, isNested=$isNested, declaringType=$declaringType, declaringMethod=$declaringMethod, reflectedType=$reflectedType, underlyingSystemType=$underlyingSystemType, isTypeDefinition=$isTypeDefinition, isArray=$isArray, isByRef=$isByRef, isPointer=$isPointer, isConstructedGenericType=$isConstructedGenericType, isGenericParameter=$isGenericParameter, isGenericTypeParameter=$isGenericTypeParameter, isGenericMethodParameter=$isGenericMethodParameter, isGenericType=$isGenericType, isGenericTypeDefinition=$isGenericTypeDefinition, isSZArray=$isSZArray, isVariableBoundArray=$isVariableBoundArray, isByRefLike=$isByRefLike, isFunctionPointer=$isFunctionPointer, isUnmanagedFunctionPointer=$isUnmanagedFunctionPointer, hasElementType=$hasElementType, genericTypeArguments=$genericTypeArguments, genericParameterPosition=$genericParameterPosition, genericParameterAttributes=$genericParameterAttributes, attributes=$attributes, isAbstract=$isAbstract, isImport=$isImport, isSealed=$isSealed, isSpecialName=$isSpecialName, isClass=$isClass, isNestedAssembly=$isNestedAssembly, isNestedFamANDAssem=$isNestedFamANDAssem, isNestedFamily=$isNestedFamily, isNestedFamORAssem=$isNestedFamORAssem, isNestedPrivate=$isNestedPrivate, isNestedPublic=$isNestedPublic, isNotPublic=$isNotPublic, isPublic=$isPublic, isAutoLayout=$isAutoLayout, isExplicitLayout=$isExplicitLayout, isLayoutSequential=$isLayoutSequential, isAnsiClass=$isAnsiClass, isAutoClass=$isAutoClass, isUnicodeClass=$isUnicodeClass, isCOMObject=$isCOMObject, isContextful=$isContextful, isEnum=$isEnum, isMarshalByRef=$isMarshalByRef, isPrimitive=$isPrimitive, isValueType=$isValueType, isSignatureType=$isSignatureType, isSecurityCritical=$isSecurityCritical, isSecuritySafeCritical=$isSecuritySafeCritical, isSecurityTransparent=$isSecurityTransparent, structLayoutAttribute=$structLayoutAttribute, typeInitializer=$typeInitializer, typeHandle=$typeHandle, guid=$guid, baseType=$baseType, isSerializable=$isSerializable, containsGenericParameters=$containsGenericParameters, isVisible=$isVisible, genericTypeParameters=$genericTypeParameters, declaredConstructors=$declaredConstructors, declaredEvents=$declaredEvents, declaredFields=$declaredFields, declaredMembers=$declaredMembers, declaredMethods=$declaredMethods, declaredNestedTypes=$declaredNestedTypes, declaredProperties=$declaredProperties, implementedInterfaces=$implementedInterfaces]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.customAttributes != null) {
      json[r'customAttributes'] = this.customAttributes;
    } else {
      json[r'customAttributes'] = null;
    }
    if (this.isCollectible != null) {
      json[r'isCollectible'] = this.isCollectible;
    } else {
      json[r'isCollectible'] = null;
    }
    if (this.metadataToken != null) {
      json[r'metadataToken'] = this.metadataToken;
    } else {
      json[r'metadataToken'] = null;
    }
    if (this.isInterface != null) {
      json[r'isInterface'] = this.isInterface;
    } else {
      json[r'isInterface'] = null;
    }
    if (this.memberType != null) {
      json[r'memberType'] = this.memberType;
    } else {
      json[r'memberType'] = null;
    }
    if (this.namespace != null) {
      json[r'namespace'] = this.namespace;
    } else {
      json[r'namespace'] = null;
    }
    if (this.assemblyQualifiedName != null) {
      json[r'assemblyQualifiedName'] = this.assemblyQualifiedName;
    } else {
      json[r'assemblyQualifiedName'] = null;
    }
    if (this.fullName != null) {
      json[r'fullName'] = this.fullName;
    } else {
      json[r'fullName'] = null;
    }
    if (this.assembly != null) {
      json[r'assembly'] = this.assembly;
    } else {
      json[r'assembly'] = null;
    }
    if (this.module != null) {
      json[r'module'] = this.module;
    } else {
      json[r'module'] = null;
    }
    if (this.isNested != null) {
      json[r'isNested'] = this.isNested;
    } else {
      json[r'isNested'] = null;
    }
    if (this.declaringType != null) {
      json[r'declaringType'] = this.declaringType;
    } else {
      json[r'declaringType'] = null;
    }
    if (this.declaringMethod != null) {
      json[r'declaringMethod'] = this.declaringMethod;
    } else {
      json[r'declaringMethod'] = null;
    }
    if (this.reflectedType != null) {
      json[r'reflectedType'] = this.reflectedType;
    } else {
      json[r'reflectedType'] = null;
    }
    if (this.underlyingSystemType != null) {
      json[r'underlyingSystemType'] = this.underlyingSystemType;
    } else {
      json[r'underlyingSystemType'] = null;
    }
    if (this.isTypeDefinition != null) {
      json[r'isTypeDefinition'] = this.isTypeDefinition;
    } else {
      json[r'isTypeDefinition'] = null;
    }
    if (this.isArray != null) {
      json[r'isArray'] = this.isArray;
    } else {
      json[r'isArray'] = null;
    }
    if (this.isByRef != null) {
      json[r'isByRef'] = this.isByRef;
    } else {
      json[r'isByRef'] = null;
    }
    if (this.isPointer != null) {
      json[r'isPointer'] = this.isPointer;
    } else {
      json[r'isPointer'] = null;
    }
    if (this.isConstructedGenericType != null) {
      json[r'isConstructedGenericType'] = this.isConstructedGenericType;
    } else {
      json[r'isConstructedGenericType'] = null;
    }
    if (this.isGenericParameter != null) {
      json[r'isGenericParameter'] = this.isGenericParameter;
    } else {
      json[r'isGenericParameter'] = null;
    }
    if (this.isGenericTypeParameter != null) {
      json[r'isGenericTypeParameter'] = this.isGenericTypeParameter;
    } else {
      json[r'isGenericTypeParameter'] = null;
    }
    if (this.isGenericMethodParameter != null) {
      json[r'isGenericMethodParameter'] = this.isGenericMethodParameter;
    } else {
      json[r'isGenericMethodParameter'] = null;
    }
    if (this.isGenericType != null) {
      json[r'isGenericType'] = this.isGenericType;
    } else {
      json[r'isGenericType'] = null;
    }
    if (this.isGenericTypeDefinition != null) {
      json[r'isGenericTypeDefinition'] = this.isGenericTypeDefinition;
    } else {
      json[r'isGenericTypeDefinition'] = null;
    }
    if (this.isSZArray != null) {
      json[r'isSZArray'] = this.isSZArray;
    } else {
      json[r'isSZArray'] = null;
    }
    if (this.isVariableBoundArray != null) {
      json[r'isVariableBoundArray'] = this.isVariableBoundArray;
    } else {
      json[r'isVariableBoundArray'] = null;
    }
    if (this.isByRefLike != null) {
      json[r'isByRefLike'] = this.isByRefLike;
    } else {
      json[r'isByRefLike'] = null;
    }
    if (this.isFunctionPointer != null) {
      json[r'isFunctionPointer'] = this.isFunctionPointer;
    } else {
      json[r'isFunctionPointer'] = null;
    }
    if (this.isUnmanagedFunctionPointer != null) {
      json[r'isUnmanagedFunctionPointer'] = this.isUnmanagedFunctionPointer;
    } else {
      json[r'isUnmanagedFunctionPointer'] = null;
    }
    if (this.hasElementType != null) {
      json[r'hasElementType'] = this.hasElementType;
    } else {
      json[r'hasElementType'] = null;
    }
    if (this.genericTypeArguments != null) {
      json[r'genericTypeArguments'] = this.genericTypeArguments;
    } else {
      json[r'genericTypeArguments'] = null;
    }
    if (this.genericParameterPosition != null) {
      json[r'genericParameterPosition'] = this.genericParameterPosition;
    } else {
      json[r'genericParameterPosition'] = null;
    }
    if (this.genericParameterAttributes != null) {
      json[r'genericParameterAttributes'] = this.genericParameterAttributes;
    } else {
      json[r'genericParameterAttributes'] = null;
    }
    if (this.attributes != null) {
      json[r'attributes'] = this.attributes;
    } else {
      json[r'attributes'] = null;
    }
    if (this.isAbstract != null) {
      json[r'isAbstract'] = this.isAbstract;
    } else {
      json[r'isAbstract'] = null;
    }
    if (this.isImport != null) {
      json[r'isImport'] = this.isImport;
    } else {
      json[r'isImport'] = null;
    }
    if (this.isSealed != null) {
      json[r'isSealed'] = this.isSealed;
    } else {
      json[r'isSealed'] = null;
    }
    if (this.isSpecialName != null) {
      json[r'isSpecialName'] = this.isSpecialName;
    } else {
      json[r'isSpecialName'] = null;
    }
    if (this.isClass != null) {
      json[r'isClass'] = this.isClass;
    } else {
      json[r'isClass'] = null;
    }
    if (this.isNestedAssembly != null) {
      json[r'isNestedAssembly'] = this.isNestedAssembly;
    } else {
      json[r'isNestedAssembly'] = null;
    }
    if (this.isNestedFamANDAssem != null) {
      json[r'isNestedFamANDAssem'] = this.isNestedFamANDAssem;
    } else {
      json[r'isNestedFamANDAssem'] = null;
    }
    if (this.isNestedFamily != null) {
      json[r'isNestedFamily'] = this.isNestedFamily;
    } else {
      json[r'isNestedFamily'] = null;
    }
    if (this.isNestedFamORAssem != null) {
      json[r'isNestedFamORAssem'] = this.isNestedFamORAssem;
    } else {
      json[r'isNestedFamORAssem'] = null;
    }
    if (this.isNestedPrivate != null) {
      json[r'isNestedPrivate'] = this.isNestedPrivate;
    } else {
      json[r'isNestedPrivate'] = null;
    }
    if (this.isNestedPublic != null) {
      json[r'isNestedPublic'] = this.isNestedPublic;
    } else {
      json[r'isNestedPublic'] = null;
    }
    if (this.isNotPublic != null) {
      json[r'isNotPublic'] = this.isNotPublic;
    } else {
      json[r'isNotPublic'] = null;
    }
    if (this.isPublic != null) {
      json[r'isPublic'] = this.isPublic;
    } else {
      json[r'isPublic'] = null;
    }
    if (this.isAutoLayout != null) {
      json[r'isAutoLayout'] = this.isAutoLayout;
    } else {
      json[r'isAutoLayout'] = null;
    }
    if (this.isExplicitLayout != null) {
      json[r'isExplicitLayout'] = this.isExplicitLayout;
    } else {
      json[r'isExplicitLayout'] = null;
    }
    if (this.isLayoutSequential != null) {
      json[r'isLayoutSequential'] = this.isLayoutSequential;
    } else {
      json[r'isLayoutSequential'] = null;
    }
    if (this.isAnsiClass != null) {
      json[r'isAnsiClass'] = this.isAnsiClass;
    } else {
      json[r'isAnsiClass'] = null;
    }
    if (this.isAutoClass != null) {
      json[r'isAutoClass'] = this.isAutoClass;
    } else {
      json[r'isAutoClass'] = null;
    }
    if (this.isUnicodeClass != null) {
      json[r'isUnicodeClass'] = this.isUnicodeClass;
    } else {
      json[r'isUnicodeClass'] = null;
    }
    if (this.isCOMObject != null) {
      json[r'isCOMObject'] = this.isCOMObject;
    } else {
      json[r'isCOMObject'] = null;
    }
    if (this.isContextful != null) {
      json[r'isContextful'] = this.isContextful;
    } else {
      json[r'isContextful'] = null;
    }
    if (this.isEnum != null) {
      json[r'isEnum'] = this.isEnum;
    } else {
      json[r'isEnum'] = null;
    }
    if (this.isMarshalByRef != null) {
      json[r'isMarshalByRef'] = this.isMarshalByRef;
    } else {
      json[r'isMarshalByRef'] = null;
    }
    if (this.isPrimitive != null) {
      json[r'isPrimitive'] = this.isPrimitive;
    } else {
      json[r'isPrimitive'] = null;
    }
    if (this.isValueType != null) {
      json[r'isValueType'] = this.isValueType;
    } else {
      json[r'isValueType'] = null;
    }
    if (this.isSignatureType != null) {
      json[r'isSignatureType'] = this.isSignatureType;
    } else {
      json[r'isSignatureType'] = null;
    }
    if (this.isSecurityCritical != null) {
      json[r'isSecurityCritical'] = this.isSecurityCritical;
    } else {
      json[r'isSecurityCritical'] = null;
    }
    if (this.isSecuritySafeCritical != null) {
      json[r'isSecuritySafeCritical'] = this.isSecuritySafeCritical;
    } else {
      json[r'isSecuritySafeCritical'] = null;
    }
    if (this.isSecurityTransparent != null) {
      json[r'isSecurityTransparent'] = this.isSecurityTransparent;
    } else {
      json[r'isSecurityTransparent'] = null;
    }
    if (this.structLayoutAttribute != null) {
      json[r'structLayoutAttribute'] = this.structLayoutAttribute;
    } else {
      json[r'structLayoutAttribute'] = null;
    }
    if (this.typeInitializer != null) {
      json[r'typeInitializer'] = this.typeInitializer;
    } else {
      json[r'typeInitializer'] = null;
    }
    if (this.typeHandle != null) {
      json[r'typeHandle'] = this.typeHandle;
    } else {
      json[r'typeHandle'] = null;
    }
    if (this.guid != null) {
      json[r'guid'] = this.guid;
    } else {
      json[r'guid'] = null;
    }
    if (this.baseType != null) {
      json[r'baseType'] = this.baseType;
    } else {
      json[r'baseType'] = null;
    }
    if (this.isSerializable != null) {
      json[r'isSerializable'] = this.isSerializable;
    } else {
      json[r'isSerializable'] = null;
    }
    if (this.containsGenericParameters != null) {
      json[r'containsGenericParameters'] = this.containsGenericParameters;
    } else {
      json[r'containsGenericParameters'] = null;
    }
    if (this.isVisible != null) {
      json[r'isVisible'] = this.isVisible;
    } else {
      json[r'isVisible'] = null;
    }
    if (this.genericTypeParameters != null) {
      json[r'genericTypeParameters'] = this.genericTypeParameters;
    } else {
      json[r'genericTypeParameters'] = null;
    }
    if (this.declaredConstructors != null) {
      json[r'declaredConstructors'] = this.declaredConstructors;
    } else {
      json[r'declaredConstructors'] = null;
    }
    if (this.declaredEvents != null) {
      json[r'declaredEvents'] = this.declaredEvents;
    } else {
      json[r'declaredEvents'] = null;
    }
    if (this.declaredFields != null) {
      json[r'declaredFields'] = this.declaredFields;
    } else {
      json[r'declaredFields'] = null;
    }
    if (this.declaredMembers != null) {
      json[r'declaredMembers'] = this.declaredMembers;
    } else {
      json[r'declaredMembers'] = null;
    }
    if (this.declaredMethods != null) {
      json[r'declaredMethods'] = this.declaredMethods;
    } else {
      json[r'declaredMethods'] = null;
    }
    if (this.declaredNestedTypes != null) {
      json[r'declaredNestedTypes'] = this.declaredNestedTypes;
    } else {
      json[r'declaredNestedTypes'] = null;
    }
    if (this.declaredProperties != null) {
      json[r'declaredProperties'] = this.declaredProperties;
    } else {
      json[r'declaredProperties'] = null;
    }
    if (this.implementedInterfaces != null) {
      json[r'implementedInterfaces'] = this.implementedInterfaces;
    } else {
      json[r'implementedInterfaces'] = null;
    }
    return json;
  }

  /// Returns a new [TypeInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TypeInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TypeInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TypeInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TypeInfo(
        name: mapValueOfType<String>(json, r'name'),
        customAttributes: CustomAttributeData.listFromJson(json[r'customAttributes']),
        isCollectible: mapValueOfType<bool>(json, r'isCollectible'),
        metadataToken: mapValueOfType<int>(json, r'metadataToken'),
        isInterface: mapValueOfType<bool>(json, r'isInterface'),
        memberType: MemberTypes.fromJson(json[r'memberType']),
        namespace: mapValueOfType<String>(json, r'namespace'),
        assemblyQualifiedName: mapValueOfType<String>(json, r'assemblyQualifiedName'),
        fullName: mapValueOfType<String>(json, r'fullName'),
        assembly: Assembly.fromJson(json[r'assembly']),
        module: Module.fromJson(json[r'module']),
        isNested: mapValueOfType<bool>(json, r'isNested'),
        declaringType: Type.fromJson(json[r'declaringType']),
        declaringMethod: MethodBase.fromJson(json[r'declaringMethod']),
        reflectedType: Type.fromJson(json[r'reflectedType']),
        underlyingSystemType: Type.fromJson(json[r'underlyingSystemType']),
        isTypeDefinition: mapValueOfType<bool>(json, r'isTypeDefinition'),
        isArray: mapValueOfType<bool>(json, r'isArray'),
        isByRef: mapValueOfType<bool>(json, r'isByRef'),
        isPointer: mapValueOfType<bool>(json, r'isPointer'),
        isConstructedGenericType: mapValueOfType<bool>(json, r'isConstructedGenericType'),
        isGenericParameter: mapValueOfType<bool>(json, r'isGenericParameter'),
        isGenericTypeParameter: mapValueOfType<bool>(json, r'isGenericTypeParameter'),
        isGenericMethodParameter: mapValueOfType<bool>(json, r'isGenericMethodParameter'),
        isGenericType: mapValueOfType<bool>(json, r'isGenericType'),
        isGenericTypeDefinition: mapValueOfType<bool>(json, r'isGenericTypeDefinition'),
        isSZArray: mapValueOfType<bool>(json, r'isSZArray'),
        isVariableBoundArray: mapValueOfType<bool>(json, r'isVariableBoundArray'),
        isByRefLike: mapValueOfType<bool>(json, r'isByRefLike'),
        isFunctionPointer: mapValueOfType<bool>(json, r'isFunctionPointer'),
        isUnmanagedFunctionPointer: mapValueOfType<bool>(json, r'isUnmanagedFunctionPointer'),
        hasElementType: mapValueOfType<bool>(json, r'hasElementType'),
        genericTypeArguments: Type.listFromJson(json[r'genericTypeArguments']),
        genericParameterPosition: mapValueOfType<int>(json, r'genericParameterPosition'),
        genericParameterAttributes: GenericParameterAttributes.fromJson(json[r'genericParameterAttributes']),
        attributes: TypeAttributes.fromJson(json[r'attributes']),
        isAbstract: mapValueOfType<bool>(json, r'isAbstract'),
        isImport: mapValueOfType<bool>(json, r'isImport'),
        isSealed: mapValueOfType<bool>(json, r'isSealed'),
        isSpecialName: mapValueOfType<bool>(json, r'isSpecialName'),
        isClass: mapValueOfType<bool>(json, r'isClass'),
        isNestedAssembly: mapValueOfType<bool>(json, r'isNestedAssembly'),
        isNestedFamANDAssem: mapValueOfType<bool>(json, r'isNestedFamANDAssem'),
        isNestedFamily: mapValueOfType<bool>(json, r'isNestedFamily'),
        isNestedFamORAssem: mapValueOfType<bool>(json, r'isNestedFamORAssem'),
        isNestedPrivate: mapValueOfType<bool>(json, r'isNestedPrivate'),
        isNestedPublic: mapValueOfType<bool>(json, r'isNestedPublic'),
        isNotPublic: mapValueOfType<bool>(json, r'isNotPublic'),
        isPublic: mapValueOfType<bool>(json, r'isPublic'),
        isAutoLayout: mapValueOfType<bool>(json, r'isAutoLayout'),
        isExplicitLayout: mapValueOfType<bool>(json, r'isExplicitLayout'),
        isLayoutSequential: mapValueOfType<bool>(json, r'isLayoutSequential'),
        isAnsiClass: mapValueOfType<bool>(json, r'isAnsiClass'),
        isAutoClass: mapValueOfType<bool>(json, r'isAutoClass'),
        isUnicodeClass: mapValueOfType<bool>(json, r'isUnicodeClass'),
        isCOMObject: mapValueOfType<bool>(json, r'isCOMObject'),
        isContextful: mapValueOfType<bool>(json, r'isContextful'),
        isEnum: mapValueOfType<bool>(json, r'isEnum'),
        isMarshalByRef: mapValueOfType<bool>(json, r'isMarshalByRef'),
        isPrimitive: mapValueOfType<bool>(json, r'isPrimitive'),
        isValueType: mapValueOfType<bool>(json, r'isValueType'),
        isSignatureType: mapValueOfType<bool>(json, r'isSignatureType'),
        isSecurityCritical: mapValueOfType<bool>(json, r'isSecurityCritical'),
        isSecuritySafeCritical: mapValueOfType<bool>(json, r'isSecuritySafeCritical'),
        isSecurityTransparent: mapValueOfType<bool>(json, r'isSecurityTransparent'),
        structLayoutAttribute: StructLayoutAttribute.fromJson(json[r'structLayoutAttribute']),
        typeInitializer: ConstructorInfo.fromJson(json[r'typeInitializer']),
        typeHandle: RuntimeTypeHandle.fromJson(json[r'typeHandle']),
        guid: mapValueOfType<String>(json, r'guid'),
        baseType: Type.fromJson(json[r'baseType']),
        isSerializable: mapValueOfType<bool>(json, r'isSerializable'),
        containsGenericParameters: mapValueOfType<bool>(json, r'containsGenericParameters'),
        isVisible: mapValueOfType<bool>(json, r'isVisible'),
        genericTypeParameters: Type.listFromJson(json[r'genericTypeParameters']),
        declaredConstructors: ConstructorInfo.listFromJson(json[r'declaredConstructors']),
        declaredEvents: EventInfo.listFromJson(json[r'declaredEvents']),
        declaredFields: FieldInfo.listFromJson(json[r'declaredFields']),
        declaredMembers: MemberInfo.listFromJson(json[r'declaredMembers']),
        declaredMethods: MethodInfo.listFromJson(json[r'declaredMethods']),
        declaredNestedTypes: TypeInfo.listFromJson(json[r'declaredNestedTypes']),
        declaredProperties: PropertyInfo.listFromJson(json[r'declaredProperties']),
        implementedInterfaces: Type.listFromJson(json[r'implementedInterfaces']),
      );
    }
    return null;
  }

  static List<TypeInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TypeInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TypeInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TypeInfo> mapFromJson(dynamic json) {
    final map = <String, TypeInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TypeInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TypeInfo-objects as value to a dart map
  static Map<String, List<TypeInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TypeInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TypeInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

