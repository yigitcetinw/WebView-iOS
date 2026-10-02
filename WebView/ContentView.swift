import SwiftUI

struct ContentView: View {
    var body: some View {
        // Açılacak site linki
        WebView(url: URL(string: "https://www.youtube.com")!)
            .ignoresSafeArea() // Üstteki saat/pil çentiğini ve alttaki çizgiyi gizleyip tam ekran yapar
    }
}
