

Pod::Spec.new do |s|

  s.name         = "LimitButtonSelect"
  s.version      = "0.0.2"
  s.summary      = "A short description of LimitButtonSelect."


  s.description  = <<-DESC
Limited button Select, written in Swift 3. 
                      DESC
  s.homepage     = "https://github.com/kaskay/LimitButtonSelect"



  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  s.author             = { "jeasung.lee" => "wotjdzz1@naver.com" }

  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/kaskay/LimitButtonSelect.git", :tag => "#{s.version}" }

  s.source_files  = "LimitButtonSelect/**/*.swift"
  s.framework  = "UIKit"

  s.requires_arc = true


end
