//  RUN: %target-typecheck-verify-swift

// https://github.com/swiftlang/swift/issues/65500

@propertyWrapper
struct Wrapper { 
  var wrappedValue: Bool { true }
  init(wrappedValue: Bool, er: Void) {}

  var projectedValue: Bool { true }
  init(projectedValue: Bool) {}
}

func test(@Wrapper x: Bool) {} 
test(x:false) 
