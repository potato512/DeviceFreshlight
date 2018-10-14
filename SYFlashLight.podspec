Pod::Spec.new do |s|
  s.name         = "SYFlashLight"
  s.version      = "1.1.0"
  s.summary      = "SYFlashLight used to turn on or off flash."
  s.homepage     = "https://github.com/potato512/SYFlashLight"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "herman" => "zhangsy757@163.com" }
  s.platform     = :ios, "5.0"
  s.source       = { :git => "https://github.com/potato512/SYFlashLight.git", :tag => "#{s.version}" }
  s.source_files  = "SYFlashLight/**/*.{h,m}"
  s.framework  = "AVFoundation"
  s.requires_arc = true

end
