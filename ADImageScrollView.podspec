Pod::Spec.new do |s|

  s.name         = "ADImageScrollView"
  s.version      = "0.0.9"
  s.summary      = "ADImageScrollView is Image Scroll Kit."
  s.homepage     = "https://github.com/yigegongjiang/ADImageScrollView"
  s.license      = "MIT"
  s.author       = {"一个工匠" => "one.gongjiang@gmail.com"}
  s.source       = { :git => "https://github.com/yigegongjiang/ADImageScrollView.git", :tag => s.version }
  s.source_files = "TestForScrollImage/ADImageScrollView/*.{h,m}"
  s.requires_arc = true
  s.dependency   "SDWebImage", "4.0.0"
  s.ios.deployment_target = "8.0"
end
