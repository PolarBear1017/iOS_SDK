import UIKit

// 用 AVPlayer 播音樂
import AVFoundation

let url = URL(string: "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview221/v4/68/d8/6d/68d86dde-7eb2-b75f-3a11-d7c8c8206733/mzaf_7547506640751628777.plus.aac.p.m4a")
let player = AVPlayer(url: url!)
player.play()
