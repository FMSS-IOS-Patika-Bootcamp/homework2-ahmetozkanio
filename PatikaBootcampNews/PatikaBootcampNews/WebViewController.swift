//
//  WebViewController.swift
//  PatikaBootcampNews
//
//  Created by Ahmet Ozkan on 17.09.2022.
//

import UIKit
import WebKit
class WebViewController: UIViewController {
    
    var webView: WKWebView!
    var newsItem: NewsModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //webview started
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
        
        //url from our model has been synchronized to webview
        let url = URL(string: newsItem?.url ?? "www.google.com")!
        
        //Request made to url
        webView.load(URLRequest(url: url))
        
        //clickable feature within the page
        webView.allowsBackForwardNavigationGestures = true
        
        
     
    }
   
}

extension WebViewController: WKNavigationDelegate{
    override func loadView() {
    }
}
