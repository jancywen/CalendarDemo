//
//  CanlenderDateView.swift
//  FSCalendarDemo
//
//  Created by wangwenjie on 2017/4/20.
//  Copyright © 2017年 Roo. All rights reserved.
//

import UIKit


protocol CanlenderDateViewDelegate:class {
    func touchCanlenderDate(tag:Int)
}

class CanlenderDateView: UIView {

    var bgView:UIView!
    var labCount:UILabel!
    var labDept:UILabel!
    
    weak var delegate:CanlenderDateViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func configView() {
        let width = self.bounds.size.width
        let height = self.bounds.size.height
        
        let bg = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        self.addSubview(bg)
        
        let count = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: height/2))
        count.textAlignment = .center
        count.font = MacroConst.fontsize_T4
        self.addSubview(count)
        
        let dept = UILabel(frame: CGRect(x: 0, y: height/3, width: width, height: height))
        dept.numberOfLines = 0
        dept.textAlignment = .center
        dept.font = MacroConst.fontsize_T4
        self.addSubview(dept)
        
        bgView = bg
        labCount = count
        labDept = dept
        
        //添加手势
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(touchUpInside))
        self.addGestureRecognizer(tapGesture)
        
    }
    
    
    @objc fileprivate func touchUpInside() {
        self.delegate?.touchCanlenderDate(tag: self.tag - 1000)
    }
}
