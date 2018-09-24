//
//  TimeLineCollectionViewCell.swift
//  APIClient+TimeLine
//
//  Created by haruta yamada on 2018/09/24.
//  Copyright © 2018年 terany. All rights reserved.
//

import UIKit
import AlamofireImage

class TimeLineCollectionViewCell: UICollectionViewCell {

    fileprivate let titleView: UILabel = {
        let titleView: UILabel = UILabel(frame: .zero)
        titleView.textAlignment = NSTextAlignment.center
        return titleView
    }()
    fileprivate let textView: UILabel = {
        let textView: UILabel = UILabel(frame: .zero)
        textView.textAlignment = NSTextAlignment.center
        return textView
    }()
    fileprivate let imageView: UIImageView = {
        let imageView: UIImageView = UIImageView(frame: .zero)
        return imageView
    }()
    
    var item:TimeLineCellObjectModel! {
        willSet{
            createViews()
        }
        didSet{
            setFrameViews()
            setItem()
        }
    }
    
    private let screenWidth: CGFloat = UIScreen.main.bounds.width
    private let screenHeight: CGFloat = UIScreen.main.bounds.height
    
    private func createViews(){
        self.contentView.backgroundColor = UIColor.white
        self.contentView.frame.size = UIScreen.main.bounds.size
        self.contentView.addSubview(titleView)
        self.contentView.addSubview(textView)
        self.contentView.addSubview(imageView)
    }
    private func setFrameViews(){
        self.titleView.frame = CGRect(x: 0, y: screenHeight * 0.1, width: screenWidth, height: screenHeight * 0.25)
        self.textView.frame = CGRect(x: 0, y: screenHeight * 0.3, width: screenWidth, height: screenHeight * 0.25)
        self.imageView.frame = CGRect(x: 0, y: screenHeight - screenWidth, width: screenWidth, height: screenWidth)
    }
    private func setItem(){
        self.titleView.text = item.title
        self.textView.text = item.text
        self.imageView.af_setImage(withURL: item.image, placeholderImage: #imageLiteral(resourceName: "Don'tShow.jpeg"))
    }

}
