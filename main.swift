import Mobile
import Foundation

let osname = "THE OSNAME"
let config = MobileNewConfig()!

config.osName = osname

if config.osName != osname {
  fatalError("names don't match, got '\(config.osName)' expected '\(osname)'")
}

print("Success osName: \(config.osName)")

