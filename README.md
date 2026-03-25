# SLDSIcons

Salesforce Lightning Design System Icons for iOS.

## Overview

SLDSIcons provides SLDS icons from the [`@salesforce-ux/icons`](https://www.npmjs.com/package/@salesforce-ux/icons) npm package for iOS applications. Icons are stored as SVG files in `.xcassets` imagesets, preserving vector quality at any size.

### Features

- **Dynamic Categories**: All icon categories from the npm package are automatically discovered and included
- **Vector SVGs**: Icons maintain crisp quality at any size
- **Template Rendering**: Utility icons render as templates (tintable), others preserve original colors
- **SwiftUI Support**: Easy-to-use API for SwiftUI views

## Installation

### CocoaPods

Add SLDSIcons to your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/forcedotcom/SalesforceMobileSDK-iOS-Specs.git'

target 'YourApp' do
  pod 'SLDSIcons', '~> 1.0'
end
```

Then run:

```bash
pod install
```

### Swift Package Manager

Add SLDSIcons to your project using Swift Package Manager in Xcode:

1. Open your project in Xcode
2. Go to **File > Add Package Dependencies...**
3. Enter the repository URL: `https://github.com/salesforce/SLDSIcons-iOS`
4. Select the version you want to use
5. Click **Add Package**

Or add it to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/salesforce/SLDSIcons-iOS.git", from: "1.0.0")
]
```

## Usage

### SwiftUI

SLDSIcons provides two ways to access icons:

#### Option 1: Using `SLDSIcons.icon(path)`

Access icons using the full path format `"category/name"`:

```swift
import SLDSIcons

struct ContentView: View {
    var body: some View {
        VStack {
            // Basic usage - load icon by path
            SLDSIcons.icon("utility/add")

            // With tint color (works for utility icons set as template)
            SLDSIcons.icon("utility/close")
                .foregroundStyle(.red)

            // Standard icons preserve their original colors
            SLDSIcons.icon("standard/account")

            // Action icons
            SLDSIcons.icon("action/add_contact")
        }
    }
}
```

#### Option 2: Using Category-Specific Methods

Access icons directly from their category enum:

```swift
import SLDSIcons

struct ContentView: View {
    var body: some View {
        VStack {
            // Utility icons (template-rendered, tintable)
            SLDSIcons.Utility.icon("add")
            SLDSIcons.Utility.icon("close")
                .foregroundStyle(.red)

            // Standard icons (preserve original colors)
            SLDSIcons.Standard.icon("account")
            SLDSIcons.Standard.icon("contact")

            // Action icons
            SLDSIcons.Action.icon("add_contact")
            SLDSIcons.Action.icon("new_task")

            // Custom icons
            SLDSIcons.Custom.icon("custom1")

            // Doctype icons
            SLDSIcons.Doctype.icon("pdf")
        }
    }
}
```

### Available Categories

| Category | Accessor | Description |
|----------|----------|-------------|
| `action` | `SLDSIcons.Action.icon("name")` | Interactive elements like buttons and controls |
| `standard` | `SLDSIcons.Standard.icon("name")` | Object and entity representations |
| `utility` | `SLDSIcons.Utility.icon("name")` | General-purpose functional icons |
| `custom` | `SLDSIcons.Custom.icon("name")` | Salesforce-specific branded icons |
| `doctype` | `SLDSIcons.Doctype.icon("name")` | File type and document icons |

### Icon Path Format

When using `SLDSIcons.icon(path)`, icons are accessed using the format: `"category/icon_name"`

Examples:
- `SLDSIcons.icon("utility/add")` - Add icon from utility category
- `SLDSIcons.icon("standard/account")` - Account icon from standard category
- `SLDSIcons.icon("action/new_task")` - New task icon from action category
- `SLDSIcons.icon("doctype/pdf")` - PDF icon from doctype category
- `SLDSIcons.icon("custom/custom1")` - Custom icon 1

### Rendering Modes

| Category | Rendering Mode | Behavior |
|----------|---------------|----------|
| `utility` | Template | Tintable with `.foregroundStyle()` |
| `standard` | Original | Preserves built-in colors |
| `action` | Original | Preserves built-in colors |
| `custom` | Original | Preserves built-in colors |
| `doctype` | Original | Preserves built-in colors |

## Finding Available Icons

All icons from the [@salesforce-ux/icons](https://www.npmjs.com/package/@salesforce-ux/icons) npm package are included in this library.

### Browsing Icons

To find available icon names:

1. Visit [@salesforce-ux/icons on npm](https://www.npmjs.com/package/@salesforce-ux/icons)
2. Browse the package contents to see all available icons
3. Icons are organized in folders by category (`action/`, `standard/`, `utility/`, `custom/`, `doctype/`)

### Example Usage

Icons can be used as follows:

**Action Icons:**
- `action/add_contact`, `action/approval`, `action/new_task`, `action/email`

**Standard Icons:**
- `standard/account`, `standard/contact`, `standard/opportunity`, `standard/case`

**Utility Icons:**
- `utility/add`, `utility/close`, `utility/search`, `utility/settings`, `utility/delete`

**Doctype Icons:**
- `doctype/pdf`, `doctype/excel`, `doctype/word`, `doctype/image`

## Requirements

- iOS 17.0+
- Xcode 15.0+
- Swift 5.7+

## Troubleshooting

### Icons not loading

1. Ensure the package was properly added to your project
2. Verify you're using the correct API:
   - `SLDSIcons.icon("category/name")` - path format (no file extension)
   - `SLDSIcons.Category.icon("name")` - category-specific method
3. Make sure you're importing the module: `import SLDSIcons`

### Icons appear as solid color

- This is expected for `utility` icons (they're templates)
- Use `.foregroundStyle()` to set the desired color
- Other categories (standard, action, etc.) preserve their original colors

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to get started.

## Code of Conduct

Please follow our [Code of Conduct](CODE_OF_CONDUCT.md).

## License

SLDSIcons is available under the Apache 2.0 license. See the [LICENSE.txt](LICENSE.txt) file for more info.
