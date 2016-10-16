//
//  TrendingViewController.swift
//  ios_tumblr
//
//  Created by Kathryn Hastings on 10/15/16.
//  Copyright © 2016 Kathryn Hastings. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var trendingFeedImageView: UIImageView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Set scrollView content size
        scrollView.contentSize = CGSize(width: 375, height: 2260)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
}
