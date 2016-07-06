//
//  User.swift
//  TwitterMirror
//
//  Created by zach lee on 7/5/16.
//  Copyright © 2016 zach lee. All rights reserved.
//

import UIKit

class User: NSObject {
    
    var name: NSString?
    var userdescription: NSString?
    var screenName: NSString?
    var profileURL: NSURL?
    
    init(dictionary: NSDictionary){
        
        name = dictionary["name"] as? String
        userdescription = dictionary["description"] as? String
        screenName = dictionary["screen_name"] as? String
        let profileURLString = dictionary["profile_image_url_https"] as? String
        if let profileURLString = profileURLString{
            
        }
    }

}
