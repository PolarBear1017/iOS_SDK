import UIKit

//// 用 AVPlayer 播音樂
//import AVFoundation
//
//let url = URL(string: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview221/v4/68/d8/6d/68d86dde-7eb2-b75f-3a11-d7c8c8206733/mzaf_7547506640751628777.plus.aac.p.m4a")
//let player = AVPlayer(url: url!)
//player.play()


//// 用 AVPlayerViewController 播影片
//import AVKit
//import PlaygroundSupport
//
//let url = URL(string: "https://video-ssl.itunes.apple.com/apple-assets-us-std-000001/Video128/v4/ac/7c/62/ac7c6274-60ea-5b7c-4c99-f08d78bfe574/mzvf_484000410198456586.640x352.h264lc.U.p.m4v")
//let player = AVPlayer(url: url!)
//let controller = AVPlayerViewController()
//controller.player = player
//PlaygroundPage.current.liveView = controller
//player.play()


//// 利用 SFSafariViewController 顯示網頁
//import SafariServices
//import PlaygroundSupport
//
//let url = URL(string: "https://www.apple.com/")!
//let controller = SFSafariViewController(url: url)
//PlaygroundPage.current.liveView = controller


//// 利用 MKMapView 顯示地圖，設定顯示的內容範圍
//import MapKit
//import PlaygroundSupport
//
//let mapView = MKMapView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
//mapView.region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.71001, longitude: 139.81080), latitudinalMeters: 500, longitudinalMeters: 500)
//PlaygroundPage.current.liveView = mapView
//
//let tokyoSkyTreeAnnotation = MKPointAnnotation()
//tokyoSkyTreeAnnotation.title = "Tokyo SkyTree"
//tokyoSkyTreeAnnotation.coordinate = CLLocationCoordinate2D(latitude: 35.71001, longitude: 139.81080)
//tokyoSkyTreeAnnotation.subtitle = "東京晴空塔"
////mapView.addAnnotation(tokyoSkyTreeAnnotation)
//
////let sumidaAquarium = MKPointAnnotation()
////sumidaAquarium.title = "Sumida Aquarium"
////sumidaAquarium.coordinate = CLLocationCoordinate2D(latitude: 35.71001, longitude: 139.80983)
////sumidaAquarium.subtitle = "墨田水族館"
////mapView.addAnnotation(sumidaAquarium)
//
//let oshiageStation = MKPointAnnotation()
//oshiageStation.title = "Oshiage Station"
//oshiageStation.coordinate = CLLocationCoordinate2D(latitude: 35.70920, longitude: 139.81364)
//oshiageStation.subtitle = "押上駅"
//
//let annotations = [tokyoSkyTreeAnnotation, oshiageStation]
//mapView.addAnnotations(annotations)
//
//mapView.mapType = .satelliteFlyover
//
//mapView.pointOfInterestFilter = MKPointOfInterestFilter(including: [.cafe, .aquarium, .foodMarket]) // interesting point


//// 時間、日期
//import Foundation
//
//var time = Date()   // 現在時間
//print(time)
//
//let formatter = DateFormatter()
////formatter.timeZone = TimeZone(identifier: "Europe/London")    // 沒設定時區預設為使用者所在時區
//formatter.dateFormat = "yyyy/MM/dd HH:mm"   // 設定時間格式
//var dateString = formatter.string(from: time)
//print(dateString)
//
//time.addTimeInterval(13820) // 增加秒數
//print(time)
//
//let today = Date()
//let dateComponous = Calendar.current.dateComponents(in: .current, from: today)
//let month = dateComponous.month
//let day = dateComponous.day
//let year = dateComponous.year
//let weekday = dateComponous.weekday // Sunday: 1, Monday: 2, ...
//
//// iOS 13 的 RelativeDateTimeFormatter
//time = Date.now.advanced(by: -70)   // 70 seconds ago
//var relativeFormatter = RelativeDateTimeFormatter()
//dateString = relativeFormatter.string(for: time)!
//print(dateString)
//
//time = Calendar.current.date(byAdding: .day, value: -8, to: .now)!  // 8 days ago
//dateString = relativeFormatter.string(for: time)!
//print(dateString)
//
//time = Calendar.current.date(byAdding: .day, value: -32, to: .now)!
//dateString = relativeFormatter.string(for: time)!
//print(dateString)
//
//time = Calendar.current.date(byAdding: .day, value: -380, to: .now)!    // 380 days ago
//dateString = relativeFormatter.string(for: time)!
//print(dateString)
//
//time = Calendar.current.date(byAdding: .day, value: -8, to: .now)!
//let components = Calendar.current.dateComponents([.day], from: time, to: .now)
//if let day = components.day,
//   day > 7 {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .medium
//    formatter.timeZone = .none
//    dateString = formatter.string(for: time)!
//}
//else {
//    let formatter = RelativeDateTimeFormatter()
//    dateString = formatter.string(for: time)!
//}
//print(dateString)
//
//// iOS 15 的 relative(presentation:unitsStyle:)
//time = Calendar.current.date(byAdding: .day, value: -1, to: .now)!
//dateString = time.formatted(.relative(presentation: .numeric))  // 顯示為數字,ex: 1 day ago
//
////dateString = time.formatted(.relative(presentation: .named))  // 顯示為文字,ex: yesterday
//print(dateString)


//// 使用 AVSpeechSynthesizer 講話
//import AVFAudio
//
//let utterance = AVSpeechUtterance(string: "Hi every one")
////utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW") // 切換說話語言
//utterance.rate = 0.7  // 語速
//utterance.pitchMultiplier = 1 // 音調
//let synthesier = AVSpeechSynthesizer()
//synthesier.speak(utterance)
