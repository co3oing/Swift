import UIKit


// URL
let urlString = "https://itunes.apple.com/search?media=music&entity=song&term=aespa"
let url = URL(string: urlString)

url?.absoluteString
url?.scheme // 네트워킹 방식
url?.host
url?.path
url?.query
url?.baseURL

let baseURL = URL(string: "https://itunes.apple.com")
let relativeURL = URL(string: "search?media=music&entity=song&term=aespa", relativeTo: baseURL)

url?.absoluteString
url?.scheme // 네트워킹 방식
url?.host
url?.path
url?.query
url?.baseURL


// URLComponents
var urlComponents = URLComponents(string: "https://itunes.apple.com/search?")
let mediaQuery = URLQueryItem(name: "media", value: "music")
let entityQuery = URLQueryItem(name: "entity", value: "song")
let termQuery = URLQueryItem(name: "term", value: "aespa") // 한글도 다 인코딩 해준다.

urlComponents?.queryItems?.append(mediaQuery)
urlComponents?.queryItems?.append(entityQuery)
urlComponents?.queryItems?.append(termQuery)

urlComponents?.url?.host
urlComponents?.string
urlComponents?.queryItems?.last?.value
