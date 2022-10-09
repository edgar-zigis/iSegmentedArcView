Pod::Spec.new do |spec|
  spec.name         = "iSegmentedArcView"
  spec.version      = "1.0.0"
  spec.summary      = "Unique & beautiful segmented arc view with rich customisation options!"

  spec.homepage     = "https://github.com/edgar-zigis/iSegmentedArcView"
  spec.screenshots  = "https://raw.githubusercontent.com/edgar-zigis/SegmentedArcView/master/preview.png"

  spec.license      = { :type => 'MIT', :file => './LICENSE' }

  spec.author       = "Edgar Žigis"

  spec.platform     = :ios
  spec.ios.deployment_target = '11.0'
  spec.swift_version = '5.2'
  
  spec.source       = { :git => "https://github.com/edgar-zigis/iSegmentedArcView.git", :tag => "#{spec.version}" }

  spec.source_files  = "Sources/iSegmentedArcView/**/*.{swift}"
end
