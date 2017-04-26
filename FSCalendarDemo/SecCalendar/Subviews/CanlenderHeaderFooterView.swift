//
//  CanlenderHeaderFooterView.swift
//  FSCalendarDemo
//
//  Created by wangwenjie on 2017/4/20.
//  Copyright © 2017年 Roo. All rights reserved.
//

import UIKit


 protocol CanlenderHeaderFooterViewDelegate:class {
     func successSelectedRank(_ section: Int?,_ rank:Int?, _ count:Int?)
}

class CanlenderHeaderFooterView: UITableViewHeaderFooterView, CanlenderDateViewDelegate {

    
    //数据
   lazy var consulList:Array<Ojb?> = [Ojb?]()
    
    //选中的列
    var selectedRank:Int?
    //
    var section:Int!
    
    //代理
    weak var delegate: CanlenderHeaderFooterViewDelegate?
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func updateList(_ list: Array<Ojb?>) {
        
        self.consulList.removeAll()
        self.consulList.append(contentsOf: list)
        
        configView(list)
    }
    
    
    func configView (_ list: Array<Ojb?>) {
        
        for view in contentView.subviews {
            view.removeFromSuperview()
        }
        
        let btn_W = MacroConst.HHBWIDTH / 7
        let btn_H = MacroConst.scaleConvert(50)
        let color = MacroConst.color(section)
        for i in 0..<7 {
            
            let dateView = CanlenderDateView(frame: CGRect(x: CGFloat(i) * btn_W, y: 0, width: btn_W, height: btn_H))
            dateView.tag = i + 1000
            dateView.delegate = self
            
            
            let obj = list[i]
            if  obj != nil {
                
                dateView.layer.borderColor = color.cgColor
                dateView.layer.borderWidth = 0.3

                dateView.bgView.backgroundColor = color
                dateView.bgView.alpha = 0.1
                dateView.labCount.text = obj?.count
                dateView.labCount.textColor = color
                dateView.labDept.text = obj?.dept
                dateView.labDept.textColor = color
            }
            
            if selectedRank != nil {
                if i == selectedRank! {
                    dateView.bgView.alpha = 1.0
                    dateView.labDept.textColor = UIColor.white
                    dateView.labCount.textColor = UIColor.white
                }
            }

            
            self.contentView.addSubview(dateView)
        }
    }
    
//    @objc fileprivate func btn_touchUpInside(_ sender: UIButton) {
//        let rank = sender.tag - 1000
//        let obj = self.consulList[rank]
//        self.delegate?.successSelectedRank(self.section, rank, Int(obj!.count!)!)
//    }
//
//    
//    @objc fileprivate func btn_touchUpInsideWithNothing(_ sender: UIButton) {
//        self.delegate?.successSelectedRank(self.section, nil, nil)
//    }
    
    func touchCanlenderDate(tag:Int) {
        let obj = self.consulList[tag]
        if obj != nil {
            self.delegate?.successSelectedRank(self.section, tag, Int(obj!.count!) )
        }else {
            self.delegate?.successSelectedRank(self.section, tag, nil)
        }
    }
    
}

class Ojb: NSObject {
    var dept: String?
    var count: String?
}

