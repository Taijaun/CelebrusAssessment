//
//  WebView.swift
//  Celebrus_Assessment
//
//  Created by Tai Pitt on 26/11/2023.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    typealias UIViewType = WKWebView
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
    
    
    
    

}

//#Preview {
//    WebView()
//}
