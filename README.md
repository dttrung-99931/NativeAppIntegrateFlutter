## Integrate Fluter app into Native Android/iOS app
- Prerequisites:
  - Flutter app / Flutter module
  - Native android app / Native ios app
    
- Prepare Flutter module:
  - If you have a existing flutter project, you need to convert it into a flutter module by adding these lines into pubspec.yaml
    ```    
    module:  
      androidX: true  
      androidPackage: com.your_android_package_name 
      iosBundleIdentifier: com.your_ios_bundle_id  
    ```
  - Otherwise: create a flutter module by:  
    ```
    flutter create -t module --org com.your_org module_name
    ```    
     
- Integrate the flutter module into native Android app: [Complete guide](https://docs.flutter.dev/add-to-app/android/project-setup)
- Integrate the flutter module into native iOS app: [Complete guide](https://docs.flutter.dev/add-to-app/ios/project-setup)
  - [Config Podfile](https://docs.flutter.dev/add-to-app/ios/project-setup#set-local-network-privacy-permissions): Add these config to Podfile  
    ```
    flutter_application_path = '../flutter_app'
    load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')

    # Pods for ios flutter app
    install_all_flutter_pods(flutter_application_path)

    post_install do |installer|
      flutter_post_install(installer) if defined?(flutter_post_install)
    end
    ```
    The complete Podfile:
      
    <img width="725" alt="image" src="https://github.com/user-attachments/assets/dd415660-5ae2-4959-8853-104a70f78946">

  - Embed flutter module into ios app with Cocoapod:
     - cd to ios project folder
     - run `pod install`
       
  - [Edit Info-Debug.plist like below to enable debugging](https://docs.flutter.dev/add-to-app/ios/project-setup#set-local-network-privacy-permissions) the integrated Flutter app (via flutter attach).
    Note: don't edit in Info.plist (release). This config only need for debugging

    <img width="997" alt="image" src="https://github.com/user-attachments/assets/4495c529-e69a-49c1-b2bd-7451eabe94a1">
    
  - Add Flutter screen to ios app
    - [Create FlutterEngine](https://docs.flutter.dev/add-to-app/ios/add-flutter-screen#create-a-flutterengine) & inject into ContentView

      <img width="990" alt="image" src="https://github.com/user-attachments/assets/5532b02b-bf7d-480a-9565-fe1a79ae8313">
  - [Create Flutter view controller](https://docs.flutter.dev/add-to-app/ios/add-flutter-screen#show-a-flutterviewcontroller-with-your-flutterengine)

     <img width="1005" alt="image" src="https://github.com/user-attachments/assets/a942df0b-f076-4301-b48e-ee03d9d5a540">

  - Navigate to the Flutter screen from native ios screen

    <img width="990" alt="image" src="https://github.com/user-attachments/assets/6ba4d2e4-011c-40a9-bf06-35f274f5e1ca">


