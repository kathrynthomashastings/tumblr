//
//  ComposeViewController.swift
//  ios_tumblr
//
//  Created by Kathryn Hastings on 10/15/16.
//  Copyright © 2016 Kathryn Hastings. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var nevermindButton: UIButton!
    @IBOutlet weak var textImageView: UIImageView!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var quoteImageView: UIImageView!
    @IBOutlet weak var linkImageView: UIImageView!
    @IBOutlet weak var chatImageView: UIImageView!
    @IBOutlet weak var videoImageView: UIImageView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        textImageView.center.y  = view.bounds.height
        photoImageView.center.y  = view.bounds.height
        quoteImageView.center.y  = view.bounds.height
        linkImageView.center.y  = view.bounds.height
        chatImageView.center.y  = view.bounds.height
        videoImageView.center.y  = view.bounds.height
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 00.2, animations: {
            
            self.photoImageView.center.y = 210
            
        }) { (Bool) in
            
            UIView.animate(withDuration: 00.25, animations: {
            
                self.chatImageView.center.y = 350
            
            }) { (Bool) in
            
                UIView.animate(withDuration: 00.35, animations: {
                
                    self.quoteImageView.center.y = 210
                    
                }) { (Bool) in
                    
                    UIView.animate(withDuration: 00.4, animations: {
                        
                        self.textImageView.center.y = 210
                        
                    }) { (Bool) in
                        
                        UIView.animate(withDuration: 00.5, animations: {
                            
                            self.linkImageView.center.y = 350
                            
                        }) { (Bool) in
                            
                            UIView.animate(withDuration: 00.55, animations: {
                                
                                self.videoImageView.center.y = 350
                                
                            })
                        
                        }
                    
                    }
                    
                }
                
            }
                    
        }

    }
        
    
    
//    override func viewDidLoad(_ animated: Bool) {
//        
//        super.viewDidAppear(animated)
//        
//    }
    
    
    
    @IBAction func didPressNevermind(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
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
