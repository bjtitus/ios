//
//  IssuesContainerViewController.swift
//  FiveCalls
//
//  Created by Ben Scheirman on 2/1/17.
//  Copyright © 2017 5calls. All rights reserved.
//

import UIKit

class IssuesContainerViewController : UIViewController {
    @IBOutlet weak var headerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        let issuesVC = storyboard!.instantiateViewController(withIdentifier: "IssuesViewController") as! IssuesViewController
        addChildViewController(issuesVC)
        
        view.insertSubview(issuesVC.view, belowSubview: headerView)
        issuesVC.view.translatesAutoresizingMaskIntoConstraints = false
        issuesVC.tableView.contentInset.top = headerView.frame.size.height - 20 // status bar adjustment
        issuesVC.tableView.scrollIndicatorInsets.top = headerView.frame.size.height - 10
        
        NSLayoutConstraint.activate([
            issuesVC.view.topAnchor.constraint(equalTo: view.topAnchor),
            issuesVC.view.leftAnchor.constraint(equalTo: view.leftAnchor),
            issuesVC.view.rightAnchor.constraint(equalTo: view.rightAnchor),
            issuesVC.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
        
        issuesVC.didMove(toParentViewController: self)
    }
    
    @IBAction func setLocationTapped(_ sender: Any) {
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
