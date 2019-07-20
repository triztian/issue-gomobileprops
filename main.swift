import Mobile
import Foundation

let osname = "THE OSNAME"
let label = "somelabel"
let config = MobileNewConfig()!

config.label = label

if config.label != label {
  fatalError("labels don't match, got '\(config.label)' expected '\(label)'")
}

config.osName = osname

if config.osName != osname {
  fatalError("names don't match, got '\(config.osName)' expected '\(osname)'")
}

print("Success osName: \(config.osName)")

