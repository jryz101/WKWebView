//  ViewController.swift
//  WKWebView
//  Created by Jerry Tan on 16/07/2019.
//  Copyright © 2019 Starknet Technologies®. All rights reserved.



import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    //Declare an object that displays interactive web content, such as for an in-app browser
    var webView: WKWebView!
    
    
    
    
    //You should never call this method directly. The view controller calls this method when its view property is requested but is currently nil. This method loads or creates a view and assigns it to the view property
    override func loadView() {
        
        //A collection of properties used to initialize a web view.
        let webConfuguration = WKWebViewConfiguration()
        
        //The 'zero' rectangle is equivalent to one created by calling CGRect(x: 0, y: 0, width: 0, height: 0)
        webView = WKWebView(frame: .zero, configuration: webConfuguration)
        
        //The web view's user interface delegate
        webView.uiDelegate = self
        
        //Set view equals to webView
        view = webView
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

