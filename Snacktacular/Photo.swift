//
//  Photo.swift
//  Snacktacular
//
//  Created by Brandon Boey on 4/19/20.
//  Copyright © 2020 John Gallaugher. All rights reserved.
//

import Foundation
import Firebase

class Photo {
    var image: UIImage
    var description: String
    var postedBy: String
    var date: Timestamp
    var documentUUID: String
    
    init(image: UIImage, description: String, postedBy: String, date: Timestamp, documentUUID: String) {
        self.image = image
        self.description = description
        self.postedBy = postedBy
        self.date = date
        self.documentUUID = documentUUID
    }
    
    convenience init() {
        let postedBy = Auth.auth().currentUser?.email ?? "unknown user"
        self.init(image: UIImage(), description: "", postedBy: postedBy, date: Timestamp(), documentUUID: "")
    }
}
