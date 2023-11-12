// ignore_for_file: always_specify_types
// ignore_for_file: camel_case_types
// ignore_for_file: non_constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// Bindings for `../greet_rs/greet_rs_gen.h`.
///
/// Regenerate bindings with `flutter pub run ffigen --config ffigen.yaml`.
///
class GreetFlutterBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  GreetFlutterBindings(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  GreetFlutterBindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  /// # Safety
  ///
  /// The return value should be deallocated after use.
  ffi.Pointer<ffi.Char> greet(
    ffi.Pointer<ffi.Char> c_someone,
  ) {
    return _greet(
      c_someone,
    );
  }

  late final _greetPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>)>>('greet');
  late final _greet = _greetPtr
      .asFunction<ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Char>)>();
}