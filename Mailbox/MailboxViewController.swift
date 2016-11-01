//
//  MailboxViewController.swift
//  Mailbox
//
//  Created by Sophia KC on 31/10/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class MailboxViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 320, height: 1320)

        
    }

    @IBAction func didPanMessage(_ sender: UIPanGestureRecognizer) {
        
        
    }
    
}
