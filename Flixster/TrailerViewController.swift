//
//  TrailerViewController.swift
//  Flixster
//
//  Created by Henry Nguyen on 2/24/21.
//

import UIKit
import WebKit

class TrailerViewController: UIViewController, WKUIDelegate {
    var webView: WKWebView!
    var movie: [String:Any]!
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        var myURL = URL(string:"https://api.themoviedb.org/3/movie/297762/videos?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed")
        let baseUrl = "https://www.youtube.com/watch?v="
//        let posterKey = movie["key"] as! String
//        let newURL = URL(string: baseURL)
        
        
        let myRequest = URLRequest(url: myURL!)
           webView.load(myRequest)
        print(movie["id"])
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
}
