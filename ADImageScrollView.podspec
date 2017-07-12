Pod::Spec.new do |s|

  s.name         = "ADImageScrollView"
  s.version      = "0.0.2"
  s.summary      = "ADImageScrollView is Image Scroll Kit."
  s.homepage     = "https://github.com/adronfan/ADImageScrollView"
  s.license      = "MIT"
  s.author       = {"Adron" => "adronfan@126.com"}
  s.source       = { :git => "git@github.com:adronfan/ADImageScrollView.git", :tag => s.version }
  s.source_files = "ADImageScrollView/*.{h,m}"
  s.requires_arc = true
  s.dependency   "Masonry",'1.0.2'
  s.ios.deployment_target = "8.0"
end
