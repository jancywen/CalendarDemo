//
//  SecCalendarSecCalendarViewController.swift
//  GenerambaSwift
//
//  Created by wangwenjie on 20/04/2017.
//  Copyright © 2017 EWell. All rights reserved.
//

import UIKit
import FSCalendar
import SnapKit

class SecCalendarViewController: UIViewController, SecCalendarViewInput {

    var presenter: SecCalendarViewOutput!
    var viewModel: SecCalendarDataManager!
    
    
    
    var secCalendar:FSCalendar!
    var gregorian : NSCalendar?
    var currentPageDate:Date?
    
    var navView:CanlenderNavView!
    
    var scroView:UIScrollView!
    var tavList:UITableView!
    let kCellIdentifier:String! = "cellIdentifier"
    let kHeaderIdentifier:String! = "headerIdentifier"
    
    //
    var selectedSection: Int?
    //选中的列
    var selectedRank: Int?
    var numberOfRow: Int!
    
    //MARK: init
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?){
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.configure()
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.configure()
    }
    
    private func configure() {
        
        let presenter = SecCalendarPresenter()
        self.presenter = presenter
        let viewModel = SecCalendarViewModel()
        self.viewModel = viewModel
        presenter.view = self
    }

    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewIsReady()
        
        self.view.backgroundColor = UIColor.white
        self.title = "日历"
        
        configView()
        
    }
    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
        
    }

    // MARK: SecCalendarViewInput
    func setupInitialState() {
    }
}

//MARK: - config view
extension SecCalendarViewController {
    
        func configView () {
            
            self.gregorian = NSCalendar(identifier: NSCalendar.Identifier.gregorian)

            
            /// 日历
            let calendar = FSCalendar(frame: CGRect(x: 0, y: 64, width: MacroConst.HHBWIDTH, height: 300))
            calendar.appearance.caseOptions = FSCalendarCaseOptions.weekdayUsesSingleUpperCase
            calendar.scope = FSCalendarScope.week
            calendar.appearance.titleFont = UIFont.systemFont(ofSize: 12)
            calendar.appearance.weekdayFont = UIFont.systemFont(ofSize: 11)
            calendar.firstWeekday = 2
            calendar.appearance.headerMinimumDissolvedAlpha = 0
                    calendar.delegate = self
            //        calendar.dataSource = self
            self.view.addSubview(calendar)
            
            
            /// 日历顶部导航
            let  nav = CanlenderNavView(frame: CGRect(x: 0, y: 64, width: MacroConst.HHBWIDTH, height: 36))
            nav.delegate = self
            self.view.addSubview(nav)
            
            
            /// 底部scrollview
            let scroll = UIScrollView(frame: .zero)
            scroll.contentSize = CGSize(width: MacroConst.HHBWIDTH * 3, height: 0)
            scroll.contentOffset = CGPoint(x: MacroConst.HHBWIDTH, y: 0)
            scroll.showsHorizontalScrollIndicator = false
            scroll.isPagingEnabled = true
            scroll.delegate = self
            self.view.addSubview(scroll)
            scroll.snp.makeConstraints { (make) in
                make.top.equalToSuperview().offset(64 + 112.5)
                make.left.right.bottom.equalToSuperview()
            }

            
            /// 统计tableview
            let tav = UITableView(frame: .zero, style: .plain)
            tav.frame = CGRect(x: MacroConst.HHBWIDTH, y: 0, width: MacroConst.HHBWIDTH, height: MacroConst.HHBHEIGHT - (64 + 112.5))
            tav.delegate = self
            tav.dataSource = self
            tav.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: kCellIdentifier)
            tav.register(CanlenderHeaderFooterView.classForCoder(), forHeaderFooterViewReuseIdentifier: kHeaderIdentifier)
            
            scroll.addSubview(tav)
            
            self.scroView = scroll
            self.tavList = tav
            self.secCalendar = calendar
            self.navView = nav
            
            firtSetNavTitle()
        }

    
    //设置显示时间 2017.03.05～03.11
    
    /// 初始化第一次赋值日历顶部日期
    func firtSetNavTitle() {
        let todayDate = secCalendar.today
        let todayFormatter = DateFormatter()
        todayFormatter.dateFormat = "e"
        
        let todayInterval = todayDate?.timeIntervalSince1970
        
        let num = abs(Int(todayFormatter.string(from: todayDate!))! - 2)
        let firstInterval = todayInterval! - Double(24 * 60 * 60 * num)
        let lastInterval = firstInterval + Double(24 * 60 * 60 * 6)
        
        let firstFormatter = DateFormatter()
        firstFormatter.dateFormat = "yyyy.MM.dd"
        let firstString = firstFormatter.string(from: Date(timeIntervalSince1970: firstInterval))
        let lastFormatter = DateFormatter()
        lastFormatter.dateFormat = "MM.dd"
        let lastString = lastFormatter.string(from: Date(timeIntervalSince1970: lastInterval))
        
        navView.labDate.text = firstString + "~" + lastString
        
        self.currentPageDate = Date(timeIntervalSince1970: firstInterval)
        
    }
    
    /// 日历顶部日期
    func setNavTitle() {
        
        let fomatter = DateFormatter()
        fomatter.dateFormat = "yyyy.MM.dd"
        let  left = fomatter.string(from: secCalendar.currentPage)
        
        let leftInt = secCalendar.currentPage.timeIntervalSince1970
        let rightInt = leftInt + 24 * 60 * 60 * 6
        let rightDate = Date(timeIntervalSince1970: rightInt)
        
        let rightFomatter = DateFormatter()
        rightFomatter.dateFormat = "MM.dd"
        let right = rightFomatter.string(from: rightDate)
        
        let dateString = left + "~" + right
        
        navView.labDate.text = dateString
        
        
        self.currentPageDate = secCalendar.currentPage
        
    }
    
    
    
}

//MARK: - delegate
extension SecCalendarViewController: UITableViewDelegate, UITableViewDataSource,CanlenderHeaderFooterViewDelegate, UIScrollViewDelegate,CanlenderNavViewDelegate ,FSCalendarDelegate{
    //MARK: FSCalendarDelegate
    func calendarCurrentPageDidChange(_ calendar: FSCalendar) {
//        print(calendar.currentPage)
        if self.currentPageDate! > calendar.currentPage {
            //向左
            scroView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
        }else {
            //向右
            scroView.setContentOffset(CGPoint(x: MacroConst.HHBWIDTH * 2, y: 0), animated: true)
        }
        
         setNavTitle()
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
//        print(date)
        let fomttar = DateFormatter()
        fomttar.dateFormat = "e"
        let str = fomttar.string(from: date)
        self.selectedRank = abs(Int(str)! - 2)
        self.selectedSection = nil
        self.tavList.reloadData()
    }
    
    
    //MARK:    CanlenderNavViewDelegate
    func scrollCanlender(_ direction : Int) {
        if direction == 1 {
            let currentWeek = self.secCalendar?.currentPage
            let lastWeek = self.gregorian?.date(byAdding: NSCalendar.Unit.weekdayOrdinal, value: -1, to: currentWeek! as Date, options: NSCalendar.Options.matchFirst)
            self.secCalendar?.setCurrentPage(lastWeek!, animated: true)
            
            scroView.setContentOffset(CGPoint(x: 0 , y: 0), animated: true)
            
        }else {
            let currentWeek = self.secCalendar?.currentPage
            let nextWeek = self.gregorian?.date(byAdding: NSCalendar.Unit.weekdayOrdinal, value: 1, to: currentWeek! as Date, options: NSCalendar.Options.matchFirst)
            self.secCalendar?.setCurrentPage(nextWeek!, animated: true)
            
            scroView.setContentOffset(CGPoint(x: MacroConst.HHBWIDTH * 2 , y: 0), animated: true)
        }
        
        setNavTitle()
    }

    
    //MAKR: - scroll view delegate
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        if scrollView == self.tavList {
            return
        }
        if scrollView.contentOffset.x > MacroConst.HHBWIDTH && scrollView.contentOffset.x != MacroConst.HHBWIDTH{
            scrollCanlender(2)
        }else
            if scrollView.contentOffset.x < MacroConst.HHBWIDTH && scrollView.contentOffset.x != MacroConst.HHBWIDTH{
            scrollCanlender(1)
        }
        scroView.setContentOffset(CGPoint(x: MacroConst.HHBWIDTH, y: 0), animated: false)
        reconventTavList()
    }
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        if scrollView == self.tavList {
            return
        }
        scroView.setContentOffset(CGPoint(x: MacroConst.HHBWIDTH, y: 0), animated: false)
        
        reconventTavList()
    }
    
    
    //复原tableView
    func reconventTavList() {
        self.selectedRank = nil
        self.selectedSection = nil
        self.tavList.reloadData()
    }
    
    
    //MARK: - table view delegete and datasource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.selectedSection !=  nil {
            if section ==  self.selectedSection! {
                return self.numberOfRow
            }
        }
        return 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: kCellIdentifier, for: indexPath)
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return MacroConst.scaleConvert(50)
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view: CanlenderHeaderFooterView = tableView.dequeueReusableHeaderFooterView(withIdentifier: kHeaderIdentifier) as! CanlenderHeaderFooterView
        view.delegate = self
        view.section = section
        view.selectedRank = self.selectedRank
        
        var list = [Ojb?]()
        for i in 0..<7 {
            if i % 2 != 0 {
                let obj = Ojb()
                obj.count = String(i)
                obj.dept = "瑞金第" + String(section) + "科室"
                list.append(obj)
            }else {
                list.append(nil)
            }
        }
    
        view.updateList(list)
        return view
    }
    
    
    //MARK: - canlender header footer view delegate
    func successSelectedRank(_ section: Int?,_ rank:Int?, _ count:Int?) {
        self.selectedSection = section
        self.selectedRank = rank
        self.numberOfRow = count ?? 0
        self.tavList.reloadData()
        
        let fomatter = DateFormatter()
        fomatter.dateFormat = "yyyy.MM.dd"
        let leftInt = secCalendar.currentPage.timeIntervalSince1970
        let rightInt = leftInt + Double(24 * 60 * 60 * rank!)
        let rightDate = Date(timeIntervalSince1970: rightInt)
        
        secCalendar.select(rightDate)
    }

}



