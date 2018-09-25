//
//  TimeLineViewController.swift
//  APIClient+TimeLine
//
//  Created by haruta yamada on 2018/09/24.
//  Copyright © 2018年 terany. All rights reserved.
//

import UIKit

final class TimeLineViewController: UIViewController {

    fileprivate let collectionView: UICollectionView = {
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.itemSize = UIScreen.main.bounds.size
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        let contentInsetAdjustmentBehavior: UIScrollViewContentInsetAdjustmentBehavior = .never
        let collectionView: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.contentOffset = CGPoint(x: 0, y: 0)
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        collectionView.isPagingEnabled = true
        return collectionView
    }()
    private var cellItems:[TimeLineCellObjectModel] = {
        return TimeLineCellObjectModel.Models
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(collectionView)
        
        self.collectionView.register(UINib(nibName: "TimeLineCollectionViewCell", bundle: nil),
                                     forCellWithReuseIdentifier: "Cell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
    }
    override func viewDidLayoutSubviews() {
        self.collectionView.frame = self.view.frame
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.edgesForExtendedLayout = UIRectEdge.all
    }
    
   


}

extension TimeLineViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! TimeLineCollectionViewCell
        cell.item = cellItems[indexPath.row]
        return cell
    }
    
}

extension TimeLineViewController: UICollectionViewDelegate {
    
}

