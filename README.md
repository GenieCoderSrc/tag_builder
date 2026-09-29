# tag_builder

A Flutter package to easily create different types of customizable tags, badges, or chips for your Flutter application.

This package provides multiple pre-designed tag widgets like PrimaryTag, OutLineTag, OfferTag, ChipTag, StatusTag, and more, to suit various UI needs with minimal setup.

## Features

- Multiple tag styles out of the box.
- Customizable icons and click actions.
- Supports light and dark themes.
- Minimalistic, responsive, and easy to integrate.

## Available Tag Types

- `PrimaryTag`
- `PrimaryIconTag`
- `OutLineTag`
- `StatusTag`
- `OfferTag`
- `GrayTag`
- `ChipTag`
- `RattingSmallTag`

## Getting Started

### Installation

Add this to your `pubspec.yaml`:

```yaml
resolution: workspace

dependencies:
  tag_builder: ^0.0.1  # Replace with latest version
```

Then run:

```bash
flutter pub get
```

### Import the package

```dart
import 'package:tag_builder/tag_builder.dart';
```

### Usage Example

```dart
import 'package:flutter/material.dart';
import 'package:tag_builder/tag_builder.dart';

class MyExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppTag(
          'Primary Tag',
          type: TagType.primary,
          onPressed: () {
            print('Tag pressed');
          },
        ),
      ),
    );
  }
}
```

You can easily switch between different tag styles using the `TagType` enum.

## Example for Primary Icon Tag

```dart
AppTag(
  'With Icon',
  type: TagType.primaryIcon,
  icon: Icon(Icons.star),
  onPressed: () {
    print('Icon Tag pressed');
  },
)
```

## Documentation

Each TagType corresponds to a customizable widget:

| Tag Type        | Widget           | Description |
|-----------------|------------------|-------------|
| primary         | PrimaryTag        | Filled elevated tag |
| primaryIcon     | PrimaryIconTag    | Tag with an icon |
| outLine         | OutLineTag        | Outlined button style tag |
| status          | StatusTag         | Rounded color-filled tag |
| offer           | OfferTag          | Offer styled rounded tag |
| gray            | GrayTag           | Gray colored tag |
| chip            | ChipTag           | Simple small chip tag |
| rateSmall       | RattingSmallTag   | Small rating style tag |

## Customization

You can provide an optional `icon`, `onPressed` callback, and customize the appearance further using your app's `ThemeData`.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for improvements or fixes.

## License

[MIT License](LICENSE)

---

**Maintained by:** Shohidul Islam

Feel free to suggest enhancements and report bugs. Happy coding! 📚

---

