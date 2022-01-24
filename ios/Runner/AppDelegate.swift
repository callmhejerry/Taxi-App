import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIKey("AIzaSyB7iQp_Yozs7u7NajxEruRkanbW6wrwW08")
    GMSPlacesClient.provideAPIKey("AIzaSyB7iQp_Yozs7u7NajxEruRkanbW6wrwW08")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
