//
//  MailboxViewController.swift
//  Mailbox
//
//  Created by Sophia KC on 31/10/2016.
//  Copyright © 2016 Sophia KC. All rights reserved.
//

import UIKit

class MailboxViewController: UIViewController {

    // Outlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var messageImageView: UIImageView!
    @IBOutlet weak var messageContainerView: UIView!
    
    
    // Variables
    var originalMessageCenter: CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 320, height: 1320)

        
    }

    @IBAction func didPanMessage(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: view)
        
        
        if sender.state == .began {
            // record the original center
            originalMessageCenter = messageImageView.center
            
        } else if sender.state == .changed {
            print (translation.x)
            // move the view by adding the translation.x to the original center x
            messageImageView.center.x = originalMessageCenter.x + translation.x
            
            // check how much translated and change color
            if translation.x > 200 {
                messageContainerView.backgroundColor = UIColor.red
                // working
            } else if translation.x > 60 {
                messageContainerView.backgroundColor = UIColor.green
                // working
            } else if translation.x < -200 {
                messageContainerView.backgroundColor = UIColor.brown
                //working
            } else if translation.x < -60 {
                messageContainerView.backgroundColor = UIColor.yellow
                //working
            } else {
                messageContainerView.backgroundColor = UIColor.lightGray
                
            }
        
        } else if sender.state == .ended {
            
            if translation.x > 60 {
                // pan to the right
                UIView.animate(withDuration: 0.2, animations: { 
                    //some x position off screen to the right
                    self.messageImageView.frame.origin.x = self.view.frame.size.width
                    })
            
            } else if translation.x < -60 {
                // pan to the left
                UIView.animate(withDuration: 0.2, animations: {
                    //some x position off screen to the left
                    self.messageImageView.frame.origin.x = -(self.view.frame.size.width)
                })
            } else {
                // return to original center
                UIView.animate(withDuration: 0.2, animations: { 
                    self.messageImageView.center = self.originalMessageCenter
                })
            }
        }
        
    }
    
}
