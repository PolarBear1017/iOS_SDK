import UIKit

// 使用 AVSpeechSynthesizer 講話
import AVFAudio

let utterance = AVSpeechUtterance(string: "Hi every one")
//utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW") // 切換說話語言
utterance.rate = 0.7  // 語速
utterance.pitchMultiplier = 1 // 音調
let synthesier = AVSpeechSynthesizer()
synthesier.speak(utterance)
