
Pod::Spec.new do |spec|

  spec.name             = "HTTPKit-SwiftyJSONSupport.swift"
  spec.module_name      = "SwiftyJSONSupport"
  spec.version          = "1.0.2"
  spec.summary          = "`SwiftyJSON` support for `HTTPKit `"
  spec.swift_version    = "5.1"
  
  spec.description  = <<-DESC
                HTTPKit decode Data Support - SwiftyJSON
                   DESC

  spec.homepage     = "https://github.com/zevwings/HTTPKit-SwiftyJSONSupport"
  spec.license      = "Apache"
  spec.author       = { "zevwings" => "zev.wings@gmail.com" }
  spec.platform     = :ios, "10.0"
  spec.source       = { :git => "https://github.com/zevwings/HTTPKit-SwiftyJSONSupport.git", :tag => "#{spec.version}" }
  spec.requires_arc = true

  spec.default_subspecs = "Core"

  spec.subspec "Core" do |core|
    core.source_files  = "SwiftyJSONSupport/SwiftyJSONSupport.h", "SwiftyJSONSupport/**/*.swift"
    core.dependency "HTTPKit.swift"
    core.dependency "SwiftyJSON"
  end

  spec.subspec "RxSwift" do |rx|
    rx.source_files = "RxSwiftyJSONSupport/RxSwiftyJSONSupport.h", "RxSwiftyJSONSupport/**/*.swift"
    rx.dependency "HTTPKit-SwiftyJSONSupport.swift/Core"
    rx.dependency "RxSwift"
  end

end
