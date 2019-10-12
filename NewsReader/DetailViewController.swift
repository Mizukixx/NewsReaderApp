//
//  DetailViewController.swift
//  NewsReader
//
//  Created by Kozasa Mizuki on 2019/10/12.
//  Copyright © 2019 Kozasa Mizuki. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    var link: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: self.link) {
            let request = URLRequest(url: url)
            self.webView.load(request)
        }
    }
}
