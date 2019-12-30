//
//  ViewController.swift
//  Bassdrive Chat
//
//  Created by Bryan Henry on 12/27/19.
//  Copyright © 2019 n3wLife. All rights reserved.
//

// Import Frameworks
import UIKit
import WebKit
import MediaPlayer
import FRadioPlayer

// Initial Class
class ViewController: UIViewController, WKNavigationDelegate {
    let player: FRadioPlayer = FRadioPlayer.shared

    // IB UI
    @IBOutlet var webView: WKWebView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set Web View Page
        let url = URL(string: "https://n3wlife.com/chat")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
        // Set FRadioPlayer Station Location
        player.delegate = self as? FRadioPlayerDelegate
        player.radioURL = URL(string: "http://bassdrive.radioca.st:80/")
        player.isAutoPlay = false
    }
        
        @IBAction func playTap(_ sender: Any) {
            player.togglePlaying()
        }
        
}

