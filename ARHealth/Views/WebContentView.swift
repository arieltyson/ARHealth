//
//  WebContentView.swift
//  ARHealth
//
//  Created by Ariel Tyson on 10/11/24.
//

import SwiftUI
import WebKit

struct WebContentView: UIViewRepresentable {
    let urlString: String

    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: urlString) else {
            return WKWebView()
        }
        let request = URLRequest(url: url)
        let webView = WKWebView()
        webView.load(request)
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

// MARK: - Preview

struct WebContentView_Previews: PreviewProvider {
    static var previews: some View {
        WebContentView(urlString: "https://www.apple.com")
            .edgesIgnoringSafeArea(.all)
            .previewLayout(.fixed(width: 375, height: 667))
    }
}
