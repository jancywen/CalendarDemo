//
//  CanlenderNavView.swift
//  FSCalendarDemo
//
//  Created by wangwenjie on 2017/4/20.
//  Copyright © 2017年 Roo. All rights reserved.
//

import UIKit
import SnapKit

protocol CanlenderNavViewDelegate:class {
    func scrollCanlender(_ direction : Int)
}

class CanlenderNavView: UIView {

    
    var labDate: UILabel!
    
    weak var delegate:CanlenderNavViewDelegate?

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        configView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configView() {
        let leftBtn = UIButton(frame: .zero)
        leftBtn.backgroundColor = UIColor.white
        leftBtn.addTarget(self, action: #selector(btn_touchUpInside(_:)), for: .touchUpInside)
        leftBtn.tag = 1
        leftBtn.setImage(#imageLiteral(resourceName: "btn_left_arrow"), for: .normal)
        self.addSubview(leftBtn)
        leftBtn.snp.makeConstraints { (make) in
            make.left.top.bottom.equalToSuperview()
            make.width.equalTo(MacroConst.HHBWIDTH/4)
        }
        
        let rightBtn = UIButton(frame: .zero)
        rightBtn.backgroundColor = UIColor.white
        rightBtn.addTarget(self, action: #selector(btn_touchUpInside(_:)), for: .touchUpInside)
        rightBtn.tag = 2
        rightBtn.setImage(#imageLiteral(resourceName: "btn_right_arrow"), for: .normal)
        self.addSubview(rightBtn)
        rightBtn.snp.makeConstraints { (make) in
            make.top.right.bottom.equalToSuperview()
            make.width.equalTo(MacroConst.HHBWIDTH/4)
        }
        
        let date = UILabel(frame: .zero)
        date.textAlignment = .center
        date.textColor = MacroConst.color(0x333333)
        date.font = MacroConst.fontSize(14)
        self.addSubview(date)
        date.snp.makeConstraints { (make) in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(leftBtn.snp.right)
            make.right.equalTo(rightBtn.snp.left)
        }
        self.labDate = date
    }
    
    
    
   @objc fileprivate func btn_touchUpInside(_ sender: UIButton) {
        self.delegate?.scrollCanlender( sender.tag)
    }
}
