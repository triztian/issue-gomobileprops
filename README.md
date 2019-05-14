# Gomobile Props

A repo to illustrate and debug the following issue:

 * [x/mobile: Exported structs not retaining field values in Swift](https://github.com/golang/go/issues/32008)

## Building and running

To run it 

```
make run
```

you should see the following:

```
Fatal error: names don't match, got '' expected 'THE OSNAME': file main.swift, line 10
```


Complete output

```
gomobile bind -a -v -target=ios .
runtime/cgo
golang.org/x/mobile/internal/mobileinit
gobind
runtime/cgo
golang.org/x/mobile/internal/mobileinit
gobind
runtime/cgo
golang.org/x/mobile/internal/mobileinit
gobind
runtime/cgo
golang.org/x/mobile/internal/mobileinit
gobind
write Mobile.framework/Versions/A/Headers/Mobile.objc.h
write Mobile.framework/Versions/A/Headers/Universe.objc.h
write Mobile.framework/Versions/A/Headers/ref.h
write Mobile.framework/Versions/A/Headers/Mobile.h
write Mobile.framework/Resources/Info.plist
write Mobile.framework/Versions/A/Modules/module.modulemap
swiftc -F. main.swift
<module-includes>:2:9: note: in file included from <module-includes>:2:
#import "Headers/Mobile.objc.h"
        ^
/Users/tristian/go/src/github.com/triztian/gomobileprops/./Mobile.framework/Headers/Mobile.objc.h:21:1: warning: conflicting nullability specifier on return types, 'nullable' conflicts with existing specifier 'nonnull'
- (nullable instancetype)init;
^
/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/usr/include/objc/NSObject.h:63:1: note: previous declaration is here
- (instancetype)init
^
./main
Fatal error: names don't match, got '' expected 'THE OSNAME': file main.swift, line 10
```

