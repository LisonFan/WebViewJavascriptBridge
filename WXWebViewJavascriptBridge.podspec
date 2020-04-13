Pod::Spec.new do |s|
  s.name = "WXWebViewJavascriptBridge"
  s.version = "7.0.2"
  s.summary = "An iOS & OSX bridge for sending messages between Obj-C/Swift and JavaScript in WKWebViews, UIWebViews & WebViews."
  s.homepage = "https://github.com/marcuswestin/WebViewJavascriptBridge"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "marcuswestin" => "marcus.westin@gmail.com" }
  s.source = { :git => "https://github.com/LisonFan/WebViewJavascriptBridge.git", :tag => "v" + s.version.to_s }
  s.platforms = { :ios => "9.0" }
  s.requires_arc = true

  s.ios.source_files = "WebViewJavascriptBridge/*.{h,m}"
  s.ios.private_header_files = "WebViewJavascriptBridge/WebViewJavascriptBridge_JS.h"
  s.osx.source_files = "WebViewJavascriptBridge/*.{h,m}"
  s.osx.private_header_files = "WebViewJavascriptBridge/WebViewJavascriptBridge_JS.h"

  s.frameworks = "WebKit"
  s.ios.frameworks = "UIKit", "WebKit"
end
