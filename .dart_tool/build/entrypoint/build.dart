// ignore_for_file: directives_ordering
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:build_runner_core/build_runner_core.dart' as _i1;
import 'package:widgetbook_generator/builder.dart' as _i2;
import 'package:source_gen/builder.dart' as _i3;
import 'dart:isolate' as _i4;
import 'package:build_runner/build_runner.dart' as _i5;
import 'dart:io' as _i6;

final _builders = <_i1.BuilderApplication>[
  _i1.apply(
    r'widgetbook_generator:use_case_builder',
    [_i2.useCaseBuilder],
    _i1.toDependentsOf(r'widgetbook_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'widgetbook_generator:theme_resolver_builder',
    [_i2.themeResolverBuilder],
    _i1.toDependentsOf(r'widgetbook_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'widgetbook_generator:theme_builder',
    [_i2.themeBuilder],
    _i1.toDependentsOf(r'widgetbook_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'widgetbook_generator:text_scale_factor_builder',
    [_i2.textScaleFactorsBuilder],
    _i1.toDependentsOf(r'widgetbook_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'widgetbook_generator:story_builder',
    [_i2.storyBuilder],
    _i1.toDependentsOf(r'widgetbook_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'widgetbook_generator:scaffold_builder',
    [_i2.scaffoldBuilder],
    _i1.toDependentsOf(r'widgetbook_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'widgetbook_generator:localization_delegates_builder',
    [_i2.localizationDelegatesBuilder],
    _i1.toDependentsOf(r'widgetbook_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'widgetbook_generator:localization_builder',
    [_i2.localizationBuilder],
    _i1.toDependentsOf(r'widgetbook_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'widgetbook_generator:locales_builder',
    [_i2.localesBuilder],
    _i1.toDependentsOf(r'widgetbook_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'widgetbook_generator:devices_builder',
    [_i2.devicesBuilder],
    _i1.toDependentsOf(r'widgetbook_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'widgetbook_generator:device_frame_builder',
    [_i2.deviceFrameBuilder],
    _i1.toDependentsOf(r'widgetbook_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'widgetbook_generator:app_resolver_builder',
    [_i2.appResolverBuilder],
    _i1.toDependentsOf(r'widgetbook_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'widgetbook_generator:widgetbook_builder',
    [_i2.widgetbookBuilder],
    _i1.toDependentsOf(r'widgetbook_generator'),
    hideOutput: false,
  ),
  _i1.apply(
    r'source_gen:combining_builder',
    [_i3.combiningBuilder],
    _i1.toNoneByDefault(),
    hideOutput: false,
    appliesBuilders: const [r'source_gen:part_cleanup'],
  ),
  _i1.applyPostProcess(
    r'source_gen:part_cleanup',
    _i3.partCleanup,
  ),
];
void main(
  List<String> args, [
  _i4.SendPort? sendPort,
]) async {
  var result = await _i5.run(
    args,
    _builders,
  );
  sendPort?.send(result);
  _i6.exitCode = result;
}
