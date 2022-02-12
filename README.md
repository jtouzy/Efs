# Efs

Efs, _as the pronounced plural of letter F (for function)_, is a simple mocking/stubing library for testing purpose.

[![Platform](https://img.shields.io/badge/Platform-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS-lightgrey)]()
[![Latest version](https://img.shields.io/badge/Latest-0.1.0-blue)]()
[![Dependencies](https://img.shields.io/badge/Dependencies-none-brightgreen)]()

## Kind of functions

### ✅ Passthrough functions

You can stub functions to just return simple values : in Efs, it's called Passthrough.

```swift
// Based on this kind of injection:
struct Dependencies {
  typealias SaveToDisk = (User) -> User.SaveStatus

  let saveToDisk: SaveToDisk
  
  init(saveToDisk: @escaping SaveToDisk) {
    self.saveToDisk = saveToDisk
  }
}
```

```swift
// Inject a simple passthrough stub:
let dependencies = Dependencies(
  saveToDisk: Efs.passthrough(.succeed)
)
dependencies.saveToDisk(user) // returns .succeed
```

### ❌ Failing functions

You can mock functions with automatic failing. It can alert you when some functions are called without intention of.

```swift
// Inject a simple failing stub:
let dependencies = Dependencies(
  saveToDisk: Efs.failing()
)
dependencies.saveToDisk(user) // will raise fatalError 
```
