//
//  EWellDefine.swift
//  emdtfree
//
//  Created by wangwenjie on 2017/1/6.
//  Copyright © 2017年 EWEll. All rights reserved.
//

import Foundation

//MARK: - 屏幕宽高
let SCREEN_W:CGFloat = UIScreen.main.bounds.width
let SCREEN_H:CGFloat = UIScreen.main.bounds.height

/// 获得相对iphone6的等比例尺寸
/// - Parameter orginalValue: 原始尺寸
/// - Returns: 缩放后的尺寸
func SizeOfScale(orginalValue:CGFloat) -> CGFloat{
    return orginalValue * SCREEN_W/375
}


//MARK: - 判断手机号
func isTelNumber(num: String)->Bool
{
    let mobile = "^1(3[0-9]|5[0-35-9]|8[025-9])\\d{8}$"
    let  CM = "^1(34[0-8]|(3[5-9]|5[017-9]|8[278])\\d)\\d{7}$"
    let  CU = "^1(3[0-2]|5[256]|8[56])\\d{8}$"
    let  CT = "^1((33|53|8[09])[0-9]|349)\\d{7}$"
    let regextestmobile = NSPredicate(format: "SELF MATCHES %@",mobile)
    let regextestcm = NSPredicate(format: "SELF MATCHES %@",CM )
    let regextestcu = NSPredicate(format: "SELF MATCHES %@" ,CU)
    let regextestct = NSPredicate(format: "SELF MATCHES %@" ,CT)
    if ((regextestmobile.evaluate(with: num) == true)
        || (regextestcm.evaluate(with: num)  == true)
        || (regextestct.evaluate(with: num) == true)
        || (regextestcu.evaluate(with: num) == true))
    {
        return true
    }
    else
    {
        return false
    }
}


//MARK: - COLOR
func RGBA(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
    return UIColor.init(red: r, green: g, blue: b, alpha: a)
}
func RGB(r:CGFloat, g:CGFloat, b:CGFloat) -> UIColor {
    return UIColor.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
}

func RGBColor(_ r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
    return UIColor.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
}
func RandomColor() -> UIColor {
    //return RGBColor(CGFloat(arc4random_uniform(255)), g: CGFloat(arc4random_uniform(255)), b: CGFloat(arc4random_uniform(255)))
    return MacroConst.colorList[Int.init(arc4random() % 30)]
}

    //MARK: -  判断当前的iPhone设备/系统版本

//判断是否为iPhone
let IS_IPHONE = (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone) ? true : false
//判断是否为iPad
let IS_IPAD  = (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad) ? true : false
//判断是否为ipod
//let IS_IPOD ([[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"])
// 判断是否为 iPhone 5SE
let IS_SCREEN_5 = (UIScreen.main.bounds.size.width == 320.0 && UIScreen.main.bounds.size.height == 568.0) ? true:false
// 判断是否为iPhone 6/6s/7
let IS_SCREEN_6 = (UIScreen.main.bounds.size.width == 375.0 && UIScreen.main.bounds.size.height == 667.0) ? true:false
// 判断是否为iPhone 6Plus/6sPlus/7Plus
let IS_SCREEN_6P = (UIScreen.main.bounds.size.width == 414.0 && UIScreen.main.bounds.size.height == 736.0) ? true:false
//获取系统版本
let IOS_SYSTEM_VERSION =  Float(UIDevice.current.systemVersion)! //( Float(UIDevice.current.systemVersion).b >= 8.0 ) ? true : false
//判断 iOS 8 或更高的系统版本
let IOS_VERSION_8_OR_LATER = ( IOS_SYSTEM_VERSION >= Float(8.0) ) ? true : false
//判断 iOS 10 或更高的系统版本
let IOS_VERSION_10_OR_LATER = ( IOS_SYSTEM_VERSION >= Float(10.0)) ? true : false
