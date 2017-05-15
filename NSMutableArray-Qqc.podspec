Pod::Spec.new do |s|

  s.license      = "MIT"
  s.author       = { "qqc" => "20599378@qq.com" }
  s.platform     = :ios, "8.0"
  s.requires_arc  = true

  s.name         = "NSMutableArray-Qqc"
  s.version      = "1.0.10"
  s.summary      = "NSMutableArray-Qqc"
  s.homepage     = "https://github.com/xukiki/NSMutableArray-Qqc"
  s.source       = { :git => "https://github.com/xukiki/NSMutableArray-Qqc.git", :tag => "#{s.version}" }
  
  s.source_files  = ["NSMutableArray-Qqc/*.{h,m}"]

end
