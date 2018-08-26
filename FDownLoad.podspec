Pod::Spec.new do |s|
  s.name         = "FDownLoad"
  s.version      = "0.0.1"
  s.summary      = "FDownLoad断点下载"
  s.homepage     = "https://github.com/AllisonWangJiaoJiao/FDownLoad"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "AllisonWangJiaoJiao" => "email@address.com" }
  # s.platform     = :ios
    s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/AllisonWangJiaoJiao/FDownLoad.git", :tag => "#{s.version}" }
  s.source_files  = "FDownLoadDemo", "FDownLoadDemo/Tools/*.{h,m}"
  s.requires_arc = true
end
