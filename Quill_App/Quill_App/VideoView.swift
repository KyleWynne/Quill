//
//  VideoView.swift
//  Quill_App
//
//  Created by Kyle Wynne on 12/6/23.
//

import Foundation
import WebKit
import SwiftUI
//object used to embed videos onto my views
struct YoutubeVideoView: UIViewRepresentable {
    //var for the ID of the video
    var youtubeVideoID: String
    //call WKWebView function which can view online resources
    func makeUIView(context: Context) -> WKWebView  {
        
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        //create a path with the ID and youtubes embed function
        let path = "https://www.youtube.com/embed/\(youtubeVideoID)"
        guard let url = URL(string: path) else { return }
        //show video on the users screen
        uiView.scrollView.isScrollEnabled = false
        uiView.load(.init(url: url))
    }
}
