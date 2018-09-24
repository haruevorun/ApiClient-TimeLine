//
//  TimeLineModel.swift
//  APIClient+TimeLine
//
//  Created by haruta yamada on 2018/09/24.
//  Copyright © 2018年 terany. All rights reserved.
//

import Foundation

class TimeLineModel {
    static func TimeLineCellObjectModelsRequest() -> [TimeLineCellObjectModel]{
        //本当ならAPI叩いてJsonかxmlのデータを持ってきてパースして返す
        //今回はダミーデータでlol
        return TimeLineCellObjectModel.Models
    }
}
