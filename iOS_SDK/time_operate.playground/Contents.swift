import UIKit

// 時間、日期
import Foundation

var time = Date()   // 現在時間
print(time)

let formatter = DateFormatter()
//formatter.timeZone = TimeZone(identifier: "Europe/London")    // 沒設定時區預設為使用者所在時區
formatter.dateFormat = "yyyy/MM/dd HH:mm"   // 設定時間格式
var dateString = formatter.string(from: time)
print(dateString)

time.addTimeInterval(13820) // 增加秒數
print(time)

let today = Date()
let dateComponous = Calendar.current.dateComponents(in: .current, from: today)
let month = dateComponous.month
let day = dateComponous.day
let year = dateComponous.year
let weekday = dateComponous.weekday // Sunday: 1, Monday: 2, ...

// iOS 13 的 RelativeDateTimeFormatter
time = Date.now.advanced(by: -70)   // 70 seconds ago
var relativeFormatter = RelativeDateTimeFormatter()
dateString = relativeFormatter.string(for: time)!
print(dateString)

time = Calendar.current.date(byAdding: .day, value: -8, to: .now)!  // 8 days ago
dateString = relativeFormatter.string(for: time)!
print(dateString)

time = Calendar.current.date(byAdding: .day, value: -32, to: .now)!
dateString = relativeFormatter.string(for: time)!
print(dateString)

time = Calendar.current.date(byAdding: .day, value: -380, to: .now)!    // 380 days ago
dateString = relativeFormatter.string(for: time)!
print(dateString)

time = Calendar.current.date(byAdding: .day, value: -8, to: .now)!
let components = Calendar.current.dateComponents([.day], from: time, to: .now)
if let day = components.day,
   day > 7 {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeZone = .none
    dateString = formatter.string(for: time)!
}
else {
    let formatter = RelativeDateTimeFormatter()
    dateString = formatter.string(for: time)!
}
print(dateString)

// iOS 15 的 relative(presentation:unitsStyle:)
time = Calendar.current.date(byAdding: .day, value: -1, to: .now)!
dateString = time.formatted(.relative(presentation: .numeric))  // 顯示為數字,ex: 1 day ago

//dateString = time.formatted(.relative(presentation: .named))  // 顯示為文字,ex: yesterday
print(dateString)
