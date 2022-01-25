# Messages_Extensions

A Swift Package that offers convenient code for logging to aid in understanding how the [`MSMessagesAppViewController`](https://developer.apple.com/documentation/messages/msmessagesappviewcontroller) event handlers work.

## Usage

To install using the [Swift Package Manager](https://swift.org/package-manager/), add the following package to the `dependencies` in your Package.swift file:

Add to your [`Package.Dependency`](https://developer.apple.com/documentation/swift_packages/package/dependency)

```swift
dependencies: [
  .package(url: "https://github.com/roblabs/Messages-Extensions.git", from: "1.0.0")
]
```

Add to your [`Target.Dependency`](https://developer.apple.com/documentation/swift_packages/target/dependency)

```swift
targets: [
  .target(
    name: "yourProduct",
    dependencies: [.product(name: "Messages-Extensions")]
  ),
]
```

Then add the following imports and calls in any Swift file in your module.

```swift
import Messages_Extensions
import OSLog

// Log an event
OSLog.logEvent(.event, "Creating MSMessage layout")

// Begin & end a signpost
OSLog.logEvent(.begin, "MSMessage")
// do something...
OSLog.logEvent(.end, "MSMessage")
```

## Example

Example output with default message showing method and line number.  And an example with passing in variables to be printed.

```console
[com.roblabs.log-Messages], viewDidLoad(), line: 162, 📝
[com.roblabs.log-Messages], viewWillLayoutSubviews(), line: 122, 📝
[com.roblabs.log-Messages], viewDidLayoutSubviews(), line: 117, 📝
[com.roblabs.log-Messages], viewWillAppear(_:), line: 137, 📝
[com.roblabs.log-Messages], collectionView(_:didSelectItemAt:), line: 260, message.summaryText: "New Message from iMessage App sent")
```
