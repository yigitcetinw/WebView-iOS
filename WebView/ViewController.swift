import UIKit
import WebKit

class ViewController: UIViewController {
    var webView: WKWebView!

    override func loadView() {
        webView = WKWebView()
        webView.allowsBackForwardNavigationGestures = true // Kaydırarak Geri/İleri gitme aktif
        
        // Çentik ve saat alanını (Safe Area) yok sayıp tam ekran yapması için
        webView.scrollView.contentInsetAdjustmentBehavior = .never 
        
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Açılacak sitenin linki
        if let url = URL(string: "https://www.youtube.com") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}
