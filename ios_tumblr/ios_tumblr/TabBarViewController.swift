//
//  TabBarViewController.swift
//  ios_tumblr
//
//  Created by Kathryn Hastings on 10/15/16.
//  Copyright © 2016 Kathryn Hastings. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var composeButton: UIButton!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Create a reference to the the appropriate storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Instantiate each ViewController
        homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
        searchViewController = storyboard.instantiateViewController(withIdentifier: "SearchViewController")
        accountViewController = storyboard.instantiateViewController(withIdentifier: "AccountViewController")
        trendingViewController = storyboard.instantiateViewController(withIdentifier: "TrendingViewController")
        
        // Add each ViewController to your viewControllers array
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        // Within the viewDidLoad method, near the bottom, set the button state and call the didPressTab method. We will plug in buttons[selectedIndex] as arguments in the didPressTab method to specify the initial button, since we haven't actually "tapped" a button yet and there is no sender to access.
        buttons[selectedIndex].isSelected = true
        didPressTab(buttons[selectedIndex])
        
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

    @IBAction func didPressTab(_ sender: UIButton) {
        
        // Access previous and current tab button.
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        
        // Remove the previous view controller.
        
        // Access your previous button and set it to the non-selected state.
        buttons[previousIndex].isSelected = false
        
        // Access the previous ViewController from the viewControllers array.
        let previousVC = viewControllers[previousIndex]
        
        // Remove the previous ViewController
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        // Access your current selected button and set it to the selected state.
        sender.isSelected = true
        
        // Access the current ViewController from the viewControllers array.
        let vc = viewControllers[selectedIndex]
        
        // Add the new ViewController.
        addChildViewController(vc)
        
        // Adjust the size of the ViewController view you are adding to match the contentView of your tabBarViewController and add it as a subView of the contentView.
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        // Call the viewDidAppear method of the ViewController you are adding using didMove(toParentViewController: self).
        vc.didMove(toParentViewController: self)

    }
    
    
    @IBAction func didPressCompose(_ sender: UIButton) {
        
        
        
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
