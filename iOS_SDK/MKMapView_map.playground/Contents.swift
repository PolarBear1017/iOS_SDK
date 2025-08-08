import UIKit

// 利用 MKMapView 顯示地圖，設定顯示的內容範圍
import MapKit
import PlaygroundSupport

let mapView = MKMapView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
mapView.region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.71001, longitude: 139.81080), latitudinalMeters: 500, longitudinalMeters: 500)
PlaygroundPage.current.liveView = mapView

let tokyoSkyTreeAnnotation = MKPointAnnotation()
tokyoSkyTreeAnnotation.title = "Tokyo SkyTree"
tokyoSkyTreeAnnotation.coordinate = CLLocationCoordinate2D(latitude: 35.71001, longitude: 139.81080)
tokyoSkyTreeAnnotation.subtitle = "東京晴空塔"
//mapView.addAnnotation(tokyoSkyTreeAnnotation)

//let sumidaAquarium = MKPointAnnotation()
//sumidaAquarium.title = "Sumida Aquarium"
//sumidaAquarium.coordinate = CLLocationCoordinate2D(latitude: 35.71001, longitude: 139.80983)
//sumidaAquarium.subtitle = "墨田水族館"
//mapView.addAnnotation(sumidaAquarium)

let oshiageStation = MKPointAnnotation()
oshiageStation.title = "Oshiage Station"
oshiageStation.coordinate = CLLocationCoordinate2D(latitude: 35.70920, longitude: 139.81364)
oshiageStation.subtitle = "押上駅"

let annotations = [tokyoSkyTreeAnnotation, oshiageStation]
mapView.addAnnotations(annotations)

mapView.mapType = .satelliteFlyover

mapView.pointOfInterestFilter = MKPointOfInterestFilter(including: [.cafe, .aquarium, .foodMarket]) // interesting point
