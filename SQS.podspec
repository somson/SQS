

Pod::Spec.new do |s|

  s.name         = "SQS"
  s.version      = "0.1.0"
  s.summary      = "sqs"
  s.homepage     = "https://github.com/somson/SQS.git"
  s.license      = "MIT"
  s.author             = { "somson" => "1246071387@qq.com" }
  #s.social_media_url   = "http://twitter.com/instant125"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/somson/SQS.git", :tag => "0.1.0" }
  s.source_files  = “SQS/**/*”
  s.requires_arc = true
end
