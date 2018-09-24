//
//  TimeLineCellModel.swift
//  APIClient+TimeLine
//
//  Created by haruta yamada on 2018/09/24.
//  Copyright © 2018年 terany. All rights reserved.
//

import Foundation

class TimeLineCellModel: NSObject {
    var title: String
    var text: String
    var image: URL
    var userID: Int
    init(title: String,text: String,image: URL,userID: Int) {
        self.title = title
        self.text = text
        self.image = image
        self.userID = userID
    }
    static var Models: [TimeLineCellModel]{
        return [TimeLineCellModel(title: "hello",text: "明日学校めんどー",image: URL(string: "http://pic.prepics-cdn.com/arashi85/29622330.jpeg")!,userID: 2),
                TimeLineCellModel(title: "hello",text: "明日学校めんどー",image: URL(string: "http://pic.prepics-cdn.com/arashi85/29622330.jpeg")!,userID: 2),
                TimeLineCellModel(title: "hello",text: "明日学校めんどー",image: URL(string: "http://pic.prepics-cdn.com/arashi85/29622330.jpeg")!,userID: 2)]
    }
}

