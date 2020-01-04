# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'Calc' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Calc

  target 'CalcTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'CalcUITests' do
    # Pods for testing
  end

  def ui_test_pods
  pod 'EarlGrey'
  pod 'OHHTTPStubs/Swift'
end
target 'EarlGreyTests' do
  use_frameworks!
  inherit! :search_paths
  ui_test_pods
end
  
  
  
end
