Pod::Spec.new do |s|
  s.name         = "WCQuick"
  s.version      = "0.0.4"
  s.summary      = "WCQuick is a easier way to set UIKit class properties, it also has some useful functions"
  s.homepage     = "https://github.com/HaloWang/WCQuick"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author     = { "王策" => "634692517@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/HaloWang/WCQuick.git", :tag => "0.0.4" }
  s.source_files  = "WCQuick/*.{swift}"
  s.frameworks = "UIKit"
  s.requires_arc = true
  s.dependency "WCLayout"
end
