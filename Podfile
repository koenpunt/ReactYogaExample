platform :ios, '10.0'

use_frameworks!

target 'ReactYogaExample' do
  
  pod 'React', path: './node_modules/react-native', subspecs: [
    'Core',
    'CxxBridge', # Include this for RN >= 0.47
    'DevSupport', # Include this to enable In-App Devmenu if RN >= 0.43
    'RCTText',
    'RCTNetwork',
    'RCTWebSocket' # needed for debugging
  ]
  pod 'ReactYoga', path: './node_modules/react-native/ReactCommon/yoga'
  
  # Third party deps podspec link
  pod 'DoubleConversion', podspec: './node_modules/react-native/third-party-podspecs/DoubleConversion.podspec'
  pod 'glog', podspec: './node_modules/react-native/third-party-podspecs/glog.podspec'
  pod 'Folly', podspec: './node_modules/react-native/third-party-podspecs/Folly.podspec'
end
