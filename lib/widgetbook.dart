import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:flutter_widgetbook_example/main.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      categories: [
        WidgetbookCategory(
          name: 'Widgets',
          widgets: [
            WidgetbookComponent(
              name: 'CustomButton',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => Center(
                    child: CustomButton(
                      onPressed: () {},
                      label: 'Default Button',
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Long Text',
                  builder: (context) => Center(
                    child: CustomButton(
                      onPressed: () {},
                      label: 'Button with a very long text',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
      themes: [
        WidgetbookTheme(name: 'Light', data: ThemeData.light()),
        WidgetbookTheme(name: 'Dark', data: ThemeData.dark()),
      ],
      appInfo: AppInfo(name: 'Flutter Widgetbook Example'),
    );
  }
}