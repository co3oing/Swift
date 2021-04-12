import UIKit

// Queue - Main, Global, Custom

// - Main
DispatchQueue.main.async {
    // UI update
    let view = UIView()
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
}

// - Clobal
DispatchQueue.global(qos: .userInteractive).async {
    // 진짜 중요, 지금 당장 해야 하는 것
}

DispatchQueue.global(qos: .userInitiated).async {
    // 거의 바로 해야 하는 것, 사용자가 결과를 기다린다.
}

DispatchQueue.global(qos: .default).async {
    // 굳이?
}

//DispatchQueue.global().async {
//    // 굳이?
//}

DispatchQueue.global(qos: .utility).async {
    // 시간이 좀 걸리는 일들, 사용자가 당장 기다리지 않는 것, 네트워킹, 큰파일 불러올때?
}

DispatchQueue.global(qos: .background).async {
    // 사용자한테 당장 인식할 필요가 없는것들, 뉴스데이터 미리 받기, 위치 업데이트, 영상 다운받는 등..
}

// - Custom (직접 만들어 쓸 수 있다 정도.)
let concurrentQueue = DispatchQueue(label: "concurrent", qos: .background, attributes: .concurrent)
let serialQueue = DispatchQueue(label: "serial", qos: .background)


// 복합적인 상황
func downloadImageFromServer() -> UIImage {
    // Heavy Task
    return UIImage()
}

func updateUI(image: UIImage){
    
}

DispatchQueue.global(qos: .background).async {
    // download
    let image = downloadImageFromServer()
    
    DispatchQueue.main.async {
        // update UI
        updateUI(image: image) // update 관련 작업들은 main으로 넘겨주자.
    }
}

// Sync, Async

// Async
DispatchQueue.global(qos: .background).sync {
    for i in 0...5 {
        print("😈 \(i)")
    }
}

DispatchQueue.global(qos: .userInteractive).async {
    for i in 0...5 {
        print("🌝 \(i)")
    }
}
