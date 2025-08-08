import UIKit

// 利用 SFSafariViewController 顯示網頁
import SafariServices
import PlaygroundSupport

let url = URL(string: "https://www.apple.com/")!
let controller = SFSafariViewController(url: url)
PlaygroundPage.current.liveView = controller
