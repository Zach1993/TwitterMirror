//
//  LoginViewController.swift
//  TwitterMirror
//
//  Created by zach lee on 7/4/16.
//  Copyright © 2016 zach lee. All rights reserved.
//

import UIKit
import BDBOAuth1Manager


class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButtonLogin(sender: AnyObject) {
        let twitterClient = BDBOAuth1SessionManager(baseURL: NSURL(string: "https://api.twitter.com/"), consumerKey: 	"CpFxCpe3GkyqzbS8VFY239p1U", consumerSecret: 	"UzBr9MYF5gBOFnM0ls42PXV9CCubfclsEwcEFISjcwtfQ5oamC")
        
        twitterClient.deauthorize()
        twitterClient.fetchRequestTokenWithPath("oauth/request_token", method: "GET", callbackURL: NSURL(string:"TwitterMirrorApp://oauth"), scope: nil, success: { (requestToken:
            BDBOAuth1Credential!)-> Void in
            
            let url = NSURL(string: "https://api.twitter.com/oauth/authorize?oauth_token=\(requestToken.token)")!
            UIApplication.sharedApplication().openURL(url)
            print("I got a token")
            
        })  {(error: NSError!)-> Void in
            print("error: \(error.localizedDescription)")
    }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

