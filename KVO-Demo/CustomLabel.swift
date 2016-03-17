//
//  CustomLabel.swift
//  KVO-Demo
//
//  Created by Jeremie Bonsant on 2016-03-16.
//  Copyright © 2016 PetalMD. All rights reserved.
//


/* -----------------------------------
       Key-Value Observing
   ----------------------------------- */

//import UIKit
//
//class CustomLabel: UILabel {
//    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
//        
//        text = (object as! Car).name
//    }
//}

/* -----------------------------------
               Events
   ----------------------------------- */

//import UIKit
//
//class CustomLabel: UILabel {
//    func nameChanged(newValue: String) {
//        text = newValue
//    }
//}


/* -----------------------------------
          NotificationCenter
   ----------------------------------- */

//import UIKit
//
//class CustomLabel: UILabel {
//    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: "nameChanged:", name:"NameDidChange", object: nil)
//    }
//    
//    func nameChanged(notification: NSNotification) {
//        let newValue = notification.object as! String
//        text = newValue
//    }
//    
//}



/* -----------------------------------
                 Bond
   ----------------------------------- */

//import UIKit
//
//class CustomLabel: UILabel {
//    
//}
