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
    
    @IBOutlet weak var leftIconImage: UIImageView!
    
    @IBOutlet weak var rightIconImage: UIImageView!
    @IBOutlet weak var rescheduleImageView: UIImageView!
    
    // Variables
    var originalMessageCenter: CGPoint!
    let archiveIcon = #imageLiteral(resourceName: "archive_icon")
    let laterIcon = #imageLiteral(resourceName: "later_icon")
    let deleteIcon = #imageLiteral(resourceName: "delete_icon")
    let listIcon = #imageLiteral(resourceName: "list_icon")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rescheduleImageView.alpha = 0
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
                // whenever messageImageView goes, put the icon 20 away from the left hand side
                leftIconImage.center.x = messageImageView.frame.origin.x - 20
                leftIconImage.image = deleteIcon
            } else if translation.x > 60 {
                messageContainerView.backgroundColor = UIColor.green
                leftIconImage.center.x = messageImageView.frame.origin.x - 20
                leftIconImage.image = archiveIcon
            } else if translation.x < -200 {
                messageContainerView.backgroundColor = UIColor.brown
                rightIconImage.center.x = messageImageView.frame.size.width + 20
                rightIconImage.image = listIcon
            } else if translation.x < -60 {
                messageContainerView.backgroundColor = UIColor.yellow
                rightIconImage.center.x = messageImageView.frame.origin.x + 20
                rightIconImage.image = laterIcon
            } else {
                messageContainerView.backgroundColor = UIColor.lightGray
                leftIconImage.center.x = messageImageView.frame.origin.x - 20
                rightIconImage.center.x = messageImageView.frame.origin.x + 20
                
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
                //some x position off screen to the left
                UIView.animate(withDuration: 0.2, animations: {
                    self.messageImageView.frame.origin.x += -(self.view.frame.size.width)
                    self.rightIconImage.center.x += -(self.view.frame.size.width)
                    }, completion: { (Bool) in
                        UIView.animate(withDuration: 0.2, animations: {
                            self.rescheduleImageView.alpha = 1
                        })
                })
            }
            } else {
                // return to original center
                UIView.animate(withDuration: 0.2, animations: { 
                    self.messageImageView.center = self.originalMessageCenter
                })
            }
        }
        
    }
    
