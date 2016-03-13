//
//  RecordedAudio.swift
//  Pitch Perfect
//
//  Created by Gabriele on 3/13/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import Foundation

class RecordedAudio: NSObject {
    var filePathUrl: NSURL!
    var title: String!
    
    init(filePathUrl: NSURL,title: String) {
        self.filePathUrl = filePathUrl
        self.title = title
    }
}