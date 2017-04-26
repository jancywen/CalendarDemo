//
//  MacroConst.swift
//  intelligentconsultation
//
//  Created by Niku on 17/3/22.
//  Copyright © 2017年 EWEll. All rights reserved.
//

import Foundation

import UIKit

struct MacroConst{
    
    static let HHBWIDTH = UIScreen.main.bounds.size.width
    static let HHBHEIGHT = UIScreen.main.bounds.size.height
    
    /////////////////////////////////////////////////////////////////////
    //颜色相关宏
    static func rgbaColor(_ r:CGFloat,_ g:CGFloat,_ b:CGFloat,_ a:CGFloat) -> UIColor{
        return UIColor(red: (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: a)
    }
    static func rgbColor(_ r:CGFloat,_ g:CGFloat,_ b:CGFloat) -> UIColor{
        return UIColor(red: (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: 1.0)
    }
    //主文字颜色
    static func BLACKTitleColor() -> UIColor{
        return UIColor(red: 81.0/255.0, green: 81.0/255.0, blue: 81.0/255.0, alpha: 1.0)
    }
    //蓝色文字
    static func BLUETitleColor() -> UIColor{
        return UIColor(red: 0x55/255.0, green: 0x55/255.0, blue: 0x55/255.0, alpha: 1.0)
    }
    //辅助文字颜色
    static func GRAYTitleColor() -> UIColor{
        return UIColor(red: 165.0/255.0, green: 165.0/255.0, blue: 165.0/255.0, alpha: 1.0)
    }
    //导航条背景颜色
    static func NavigationBGColor() -> UIColor{
        return UIColor(red: 0x55/255.0, green: 0xA3/255.0, blue: 0xE6/255.0, alpha: 1.0)
    }
    //背景色
    static func SELFBGColor() -> UIColor{
        return UIColor(red: 236.0/255.0, green: 241.0/255.0, blue: 242.0/255.0, alpha: 1.0)
    }
    static func VERYGRAYTitleColor() -> UIColor{
        return UIColor(red: 205.0/255.0, green: 205.0/255.0, blue: 205.0/255.0, alpha: 1.0)
    }
    
    //床号背景色
    //有疑问
    static func doubtBedNameColor() -> UIColor{
        return UIColor(red: 0xFF/255.0, green: 0x7C/255.0, blue: 0x7A/255.0, alpha: 1.0)
    }
    //空床
    static func emptyBedNameColor() -> UIColor{
        return UIColor(red: 0xC7/255.0, green: 0xC7/255.0, blue: 0xCC/255.0, alpha: 1.0)
    }
    //新入院
    static func newBedNameColor() -> UIColor{
        return UIColor(red: 0xA2/255.0, green: 0xDD/255.0, blue: 0x78/255.0, alpha: 1.0)
    }
    //正常
    static func normalBedNameColor() -> UIColor{
        return UIColor(red: 0x54/255.0, green: 0xC7/255.0, blue: 0xFC/255.0, alpha: 1.0)
    }
    
    static func getStaticRef() -> NSDictionary {
        var staticRef : NSDictionary
        staticRef = [
            "aqua" : "#00FFFF",
            "black" : "#000000",
            "blue" : "#0000FF",
            "fuchsia" : "#FF00FF",
            "gray" : "#808080",
            "green" : "#008000",
            "lime" : "#00FF00",
            "maroon" : "#800000",
            "navy" : "#000080",
            "olive" : "#808000",
            "orange" : "#FFA500",
            "purple" : "#800080",
            "red" : "#FF0000",
            "silver" : "#C0C0C0",
            "teal" : "#008080",
            "white" : "#FFFFFF",
            "yellow" : "#FFFF00",
            "clear" : "#00000000"
        ]
        return staticRef
        
    }
    static func RGBInt32(_ colorRgb: UInt32, a: CGFloat) -> UIColor {
        return UIColor.init(red: CGFloat((colorRgb & 0xFF0000) >> 16) / 255, green: CGFloat((colorRgb & 0x00FF00) >> 8) / 255, blue: CGFloat(colorRgb & 0x0000FF) / 255, alpha: a)
    }
    
    static func RGBInt32(_ colorRgb: UInt32) -> UIColor {
        return UIColor.init(red: CGFloat((colorRgb & 0xFF0000) >> 16) / 255, green: CGFloat((colorRgb & 0x00FF00) >> 8) / 255, blue: CGFloat(colorRgb & 0x0000FF) / 255, alpha: 1)
    }
    
    //按钮不可点击的背景颜色和文字颜色
    static let kBtnNotClickBGColor:UIColor = RGBInt32(0xEBEBF0)
    static let kBtnNotClickTitleBGColor:UIColor = RGBInt32(0xD2D2D2)
    
    /////////////////////////////////////////////////////////////////////
    //字体相关宏
    static func fontSize(_ size:CGFloat) -> UIFont{
        return UIFont.systemFont(ofSize: CGFloat(size))
    }
    static let kFontScale:CGFloat  = UIScreen.main.bounds.size.width / 375.0
    
    
    
    //一些简写约定
    /*
     lItem = leftItem rItem = rightItem  lFlap = leftFlap  rFlap = rightFlap uFlap = upFlap dFlap = downFlap
     rBtn = rightBtn  lTilte = leftTitle uTitle = upTitle rContent = rightContent dContent = downContent
     lImage = leftImage rChoiceBtn = rightChoiceBtn   uMargin = upMargin dMargin = downMargin
     */
    //01分辨率
    //基础规范1.0分辨率是按照iphone5的分辨率作为设计标准（@2x 640*1136）
    //公共宏模块
    static let line_height:CGFloat       = 1
    static let mainBtn_font:UIFont       = fontsize_T2
    static let PingFangSC_Regular:String = "PingFangSC-Regular" //默认字体
    static let PingFangSC_Light:String   = "PingFangSC-Light" //默认字体
    static let menuBarView_height:CGFloat = 49 //底部menu bar 高度
    static let border_line_color:UIColor  = RGBInt32(0xE5E5E5)
    static let top_nav_bar_height:CGFloat = 64 //顶部导航栏高度
    //背景色
    static func view_bgcolor() -> UIColor{
        return UIColor(red: 236.0/255.0, green: 241.0/255.0, blue: 242.0/255.0, alpha: 1.0)
    }
    
    
    //02主色调
    //此规范以举例下面的蓝色为主色调，其他各个app可自行选择合适的颜色
    //蓝色系 用于护理，护士
    static let blue_color:UIColor = RGBInt32(0x50ABF2)
    //粉色系 用于儿保，妇幼，婴儿，急诊
    static let pink_color:UIColor = RGBInt32(0xFF7373)
    //深蓝色（偏紫色）用于睡眠，医院
    static let deep_blue_color:UIColor = RGBInt32(0x4D65C4)
    //绿色系 用于医院，呵护相关婴儿，社区养老
    static let green_color:UIColor     = RGBInt32(0x65D566)
    
    
    
    //03字体
    //字体应用规范，定义字体尺寸，颜色，选用字体等细节。在具体的UI中，参考字体的规范选择合适的字体
    //注H5规范字体使用系统默认字体，ios默认 中文字体：苹方（PingFangSC）英文字体：SF UI Display 数字字体： Avenir Next LT-pro;安卓使用黑体
    //字体适配规则，除了5.5寸的其他都是标准的， 适配规则  标准对应（5.5寸）：20（38），24（44），28（48），32（52），36（54）
    //用于titlebar,主次按钮的字体大小
    //static let IS_SCREEN_5:Bool = (UIScreen.main.bounds.size.width == 320.0 && UIScreen.main.bounds.size.height == 568.0) ? true:false
    static func systemFontOfPixelSize(_ pxSize: Int) -> UIFont {
        return systemFontOfPixelSize(_:pxSize, withFontFace: "")
    }
    static func systemFontOfPixelSize(_ pxSize: Int, withFontFace fontFace: String) -> UIFont {
        var fontName = fontFace
        if fontFace.isEmpty{
            fontName = PingFangSC_Regular
        }
        
        var tmp: CGFloat = CGFloat(pxSize)*2.0
//        if IS_SCREEN_5 {
//            if pxSize == 20 {
//                tmp = 38
//            }
//            else if pxSize == 24 {
//                tmp = 44
//            }
//            else if pxSize == 28 {
//                tmp = 48
//            }
//            else if pxSize == 32 {
//                tmp = 52
//            }
//            else if pxSize == 36 {
//                tmp = 54
//            }
//            else if pxSize == 40 {
//                tmp = 80
//            }
//            else {
//                tmp = kFontScale * CGFloat(pxSize)
//            }
//        }
        let fontSize: CGFloat = tmp / 4.0
        let font = UIFont.init(name: fontName, size: fontSize)
        if font != nil {
            return font!
        }
        return UIFont.systemFont(ofSize: fontSize)
        
        
    }
    static let fontsize_T1:UIFont = systemFontOfPixelSize(36) //36px
    //一级标题，暗提示，产品名称，警示按钮文字，通栏按钮文字，情感化空白页面说明文字
    static let fontsize_T2:UIFont = systemFontOfPixelSize(32) //32px
    //卡片标题，标题栏两边按钮位子，正文内容，二级tab,副标题和说明提示
    static let fontsize_T3:UIFont = systemFontOfPixelSize(28) //28px
    //图表辅助文字，备注文字，线框小按钮文字
    static let fontsize_T4:UIFont = systemFontOfPixelSize(24) //24px
    //底部标签文字，辅助文字里特别不重要的建议使用20px
    static let fontsize_T5:UIFont = systemFontOfPixelSize(20) //20px
    
    //font_face @"PingFangSC-Light"
    static let fontsize_T1_light:UIFont = systemFontOfPixelSize(36, withFontFace: PingFangSC_Light) //36px
    static let fontsize_T2_light:UIFont = systemFontOfPixelSize(32, withFontFace: PingFangSC_Light) //32px
    static let fontsize_T3_light:UIFont = systemFontOfPixelSize(28, withFontFace: PingFangSC_Light) //28px
    static let fontsize_T4_light:UIFont = systemFontOfPixelSize(24, withFontFace: PingFangSC_Light) //24px
    static let fontsize_T5_light:UIFont = systemFontOfPixelSize(20, withFontFace: PingFangSC_Light) //20px
    static let fontsize_T6_light:UIFont = systemFontOfPixelSize(40, withFontFace: PingFangSC_Light) //40px
    
    //字体颜色
    /// 0xffffff
    static let fontcolor_C1:UIColor = RGBInt32(0xffffff) //仅用于标题，按钮和深色背景中 白色
    /// 0x333333
    static let fontcolor_C2:UIColor = RGBInt32(0x333333) //标题，标签，输入内容，正文文本
    /// 0x666666
    static let fontcolor_C3:UIColor = RGBInt32(0x666666) //tab未选文字，次要辅助文本
    /// a5a5a5
    static let fontcolor_C4:UIColor = RGBInt32(0xa5a5a5) //说明，备注，辅助文本
    /// 0x50ABF2
    static let fontcolor_C5:UIColor = RGBInt32(0x50ABF2) //可点链接色，tab已选颜色，主色调
    /// 0xFF8208
    static let fontcolor_C6:UIColor = RGBInt32(0xFF8208) //重点提示色，可根据业务自行使用
    /// 0xFF513C
    static let fontcolor_C7:UIColor = RGBInt32(0xFF513C) //用于警示，错误，高危危险状态
    /// 0xec4a78
    static let fontcolor_C8:UIColor = RGBInt32(0xec4a78) //科室颜色
    /// 0xeb6161
    static let fontcolor_C9:UIColor = RGBInt32(0xeb6161) //状态颜色 红色
    /// 0x468fff
    static let fontcolor_C10:UIColor = RGBInt32(0x468fff) //状态颜色 蓝色
    static let fontcolor_C11:UIColor = RGBInt32(0x2dcc98) //状态颜色 绿色
    static let fontcolor_C12:UIColor = RGBInt32(0x909090) //状态颜色 院内地址
    static let fontcolor_C13:UIColor = RGBInt32(0xff6368) //未读标记
    static let fontcolor_C14:UIColor = RGBInt32(0xf1f1f1) //sectioncellheader 背景色
    static let fontcolor_C15:UIColor = RGBInt32(0xededed) //table 背景色
    static let fontcolor_C16:UIColor = RGBInt32(0xc8c8c8) //说明，备注，辅助文本
    
    //04导航栏－深底色 【暂无使用，用系统自带的】
    static let navi_deep_left_xPos: CGFloat    = 15                    //返回按钮距离最左边的间距
    static let navi_deep_left_rMargin: CGFloat = 5                  //返回按钮与文字的间距
    static let navi_deep_btns_margin: CGFloat  = 8                   //返回文字与其它item的间距
    static let navi_deep_title_font:UIFont    = fontsize_T1_light    //导航条标题文字的字号
    static let navi_deep_title_color:UIColor  = fontcolor_C1        //导航条标题文字颜色
    static let navi_deep_rItem_rMargin: CGFloat = 15                //导航条上右边item距离最右边的间距
    static let navi_deep_rItem_dMargin: CGFloat = 13                //导航条上右边item距离导航栏底部间距
    static let navi_deep_rItem_width: CGFloat   = 18                  //item的宽
    static let navi_deep_rItem_height: CGFloat  = 18                 //item的高
    static let navi_deep_imgBtn_Margin: CGFloat = 15                //右边图像按钮间距离
    
    
    //05 导航栏－拓展导航栏
    /*
     初始化的时候传入大小，将第二个参数的bool值设置为NO
     区分06中导航栏－浅底色中的拓展导航栏
     
     */
    // HuNavigationBarExpand文件 只需要将bool值为NO
    
    //06 导航栏－浅色底 【暂时没有用到】
    //06.1 常规导航栏使用场景: item之间的间距和大小都与深底色(04)的一样
    static let navi_light_leftBtn_titleColor:UIColor = fontcolor_C5   //返回按钮上文字的颜色
    static let navi_light_leftBtn_font:UIFont        = fontsize_T3_light    //返回按钮文字的大小
    static let navi_light_title_font:UIFont          = fontsize_T1_light      //常规导航条标题文字的字号
    static let navi_light_title_color:UIColor        = fontcolor_C2          //常规导航条标题文字颜色
    static let navi_light_rItem_fillColor:UIColor    = fontcolor_C5
    
    
    
    //06.2 拓展导航栏：item之间的间距和大小与(05)一样，只不过文字的颜色选用主色调
    // HuNavigationBarExpand文件 只需要将bool值为YES
    
    //07标签栏
    // HuTabBarViewController文件
    
    //08 搜索Search<app基础规范>  [暂无做成控件] 注意：部分宏不起作用，原因是系统自己适配了。
    static let search_bar_xPos: CGFloat           = 15
    static let search_bar_yPos: CGFloat           = 15
    static let search_bar_width_has_rBtn: CGFloat = (HHBWIDTH - 50 - search_bar_xPos) //右边含按钮的大小
    static let search_bar_height: CGFloat         = 29
    static let search_bar_round_corner: CGFloat   = 4
    static let search_bar_corner_color: UIColor   = RGBInt32(0xCCCCCC)
    static let search_bar_icon_xPos: CGFloat      = 5
    static let search_bar_icon_width: CGFloat     = 14
    static let search_bar_icon_yPos: CGFloat      = (search_bar_height - search_bar_icon_width) / 2.0
    static let search_bar_font: UIFont           = fontsize_T3
    static let search_bar_content_xPos: CGFloat   = (40 - search_bar_xPos) //通过放置一个空白视图（该值也是空白视图的宽度），使文字在指定位置输出
    
    //09 tab切换
    static let tab_select_title_color:UIColor = fontcolor_C5
    static let tab_title_font:UIFont          = fontsize_T3
    static let tab_title_color:UIColor        = RGBInt32(0x666666)
    static let tab_switch_view_height:CGFloat = 40
    static let tab_select_line_heigth:CGFloat = 1.5             //选中时下划线的高度
    static let tab_select_line_color:UIColor  = fontcolor_C5     //选中时下划线的颜色
    static let tab_line_height:CGFloat        = line_height
    static let tab_normal_line_color:UIColor  = border_line_color
    // HuSliderTabBarView 文件
    
    //10按钮
    //HuButton 文件
    static let btn_width_big:CGFloat         = 290
    static let btn_width:CGFloat             = 137.5
    static let btn_height:CGFloat            = 42
    static let btn_round_conner:CGFloat      = 5.0
    static let mainBtn_bgColor:UIColor       = RGBInt32(0x59AFF2)
    static let mainBtn_press_bgColor:UIColor = RGBInt32(0x2689d6)
    static let mainBtn_title_color:UIColor   = fontcolor_C1
    static let secBtn_bgColor:UIColor        = fontcolor_C1   //次按钮
    static let secBtn_border_line_color:UIColor = RGBInt32(0xdddddd)
    static let secBtn_press_bgColor:UIColor     = RGBInt32(0xf8f8f8)
    static let secBtn_press_border_line_color:UIColor = RGBInt32(0xd8d8d8)
    static let secBtn_title_color:UIColor      = fontcolor_C3
    static let unableBtn_title_color:UIColor   = RGBInt32(0xd2d2d2) //不可点击按钮
    static let unableBtn_bgColor:UIColor       = RGBInt32(0xEBEBF0)
    //11底部按钮（通栏）
    //HuButton 文件
    static let bottomBtn_height:CGFloat = 43
    static let bottomBtn_warnStatus_title_color:UIColor   = RGBInt32(0xFF513C)
    static let bottomBtn_nowarnStatus_title_color:UIColor = fontcolor_C2
    static let bottomBtn_border_line_color:UIColor        = secBtn_border_line_color
    
    //12线框按钮
    static let wireFrameBtn_round_conner:CGFloat = 4.0
    static let wireFrameBtn_border_color:UIColor = RGBInt32(0x00AAEE)
    static let wireFrameBtn_2word_width:CGFloat  = 44
    static let wireFrameBtn_3word_width:CGFloat  = 56
    static let wireFrameBtn_4word_width:CGFloat  = 68
    static let wireFrameBtn_height:CGFloat       = 25
    static let wireFrameBtn_title_color:UIColor  = RGBInt32(0x00AAEE)
    
    //13行动操作 【暂时用系统自带的】
    
    //14 页边间距 【暂无使用】
    //统一app里面所有内容与页边的间距
    static let common_margin:CGFloat = 15
    static let table_margin:CGFloat  = 5
    
    //15 间距 【暂无使用】
    static let navi_section_margin:CGFloat    = 15  //标题栏到section距离
    static let section_section_margin:CGFloat = 20  //section之间的距离
    static let section_button_margin:CGFloat  = 30  //section到button之间的距离
    static let button_button_margin:CGFloat   = 20  //button到button之间的距离
    
    //16 间距  【暂无使用】
    static let navi_head_margin:CGFloat                = 15 //标题文字到标题栏距离
    static let sectionTitle_sectionCell_margin:CGFloat = 10 //标题文字到section之间距离
    static let hintTitle_button_margin:CGFloat         = 20 //说明文字到按钮之间距离
    static let sectionCell_warnBtn_margin:CGFloat      = 20 //section到警示按钮之间的距离
    
    //17单行列表 Single list 【暂无定义成控件】
    //单行列表主要由一行标题文字组成的列表，其样式有如下几种
    //17.1 单行标题文字  左标题文字有内容 标题文字加开关
    static let list_padding_lMargin:CGFloat    = 15
    static let list_padding_rMargin:CGFloat    = 15
    static let list_borderLine_height:CGFloat  = line_height
    static let list_borderLine_color:UIColor   = border_line_color
    static let list_title_font:UIFont          = fontsize_T2
    static let list_title_color:UIColor        = fontcolor_C2
    static let list_redNumImage_yPos:CGFloat   = 4
    static let list_redNumImage_width:CGFloat  = 14
    static let list_redNumImage_height:CGFloat = 14
    static let list_redNumImage_font:UIFont    = fontsize_T5
    static let list_redNumImage_color:UIColor  = fontcolor_C1
    
    static let single_list_lTitle_xPos:CGFloat    = list_padding_lMargin
    static let single_list_lTitle_rMargin:CGFloat = 10
    static let single_list_title_font:UIFont      = list_title_font
    static let single_lsit_title_color:UIColor    = list_title_color
    
    static let single_list_rContent_rMargin:CGFloat = list_padding_rMargin
    static let single_list_rContent_font:UIFont     = fontsize_T3
    static let single_list_rContent_color:UIColor   = fontcolor_C4
    
    static let single_list_sectionTitle_xPos:CGFloat    = list_padding_lMargin
    static let single_list_sectionTitle_bMargin:CGFloat = 10
    static let single_list_sectionTitle_font:UIFont     = fontsize_T4
    static let single_list_sectionTitle_color:UIColor   = fontcolor_C4
    
    static let single_list_cellHeight:CGFloat        = 43
    static let single_list_borderLine_height:CGFloat = line_height
    static let single_list_borderLine_color:UIColor  = list_borderLine_color
    //17.2 图片加标题文字，图片加标题文字加内容
    static let single_list_lImage_xPos:CGFloat   = 15
    static let single_list_lImage_width:CGFloat  = 29
    static let single_list_lImage_height:CGFloat = 29
    
    
    //18双行列表 Double line list  【暂无定义成控件】
    //双行列表主要由上下两行文字组成的列表
    //18.1上标题+下辅助文字
    static let double_list_cellHeight:CGFloat       = 65
    static let double_list_uTitle_yPos:CGFloat      = 13
    static let double_list_uTitle_width:CGFloat     = 256
    static let double_list_dContent_uMargin:CGFloat = 3.5
    
    
    //18.2 图片+标题+辅助文字   图片+标题+辅助文字+按钮
    static let double_list_lImage_width:CGFloat  = 45
    static let double_list_lImage_height:CGFloat = 45
    static let double_list_redNumImage_yPos:CGFloat   = list_redNumImage_yPos
    static let double_list_redNumImage_width:CGFloat  = list_redNumImage_width
    static let double_list_redNumImage_height:CGFloat = list_redNumImage_height
    static let double_list_redNumImage_font:UIFont    = list_redNumImage_font
    static let double_list_redNumImage_color:UIColor  = list_redNumImage_color
    static let double_list_content_width_has_rBtn:CGFloat      = 172.5
    static let double_list_content_width_has_rArrowBtn:CGFloat = 205
    
    
    //19三行列表Three line list 【暂无定义成控件】
    //相比于双行列表，主要是内容多了一行
    static let three_list_cellHeight:CGFloat     = 85
    static let three_list_content_width:CGFloat  = 268.5
    static let three_list_lImage_width:CGFloat   = 45
    static let three_list_lImage_height:CGFloat  = 71
    static let three_list_lImage_rMargin:CGFloat = 10
    
    
    //20列表展开 List expand
    //用于场景出现点击展开的样式
    static let list_expand_childContent_xPos:CGFloat  = 30
    static let list_expand_childContent_font:UIFont   = fontsize_T2
    static let list_expand_childContent_color:UIColor = fontcolor_C3
    
    //21列表选择 List select
    //列表选择控件大致和单，双行控件一只，跟进业务场景多了勾选状态
    static let list_select_rChoiceBtn_width:CGFloat   = 15
    static let list_select_rChoiceBtn_height:CGFloat  = 15
    static let list_select_rChoiceBtn_rMargin:CGFloat = 15
    
    
    //22开关 系统自带的即可
    //开关组件包含三种状态，Off/On,Dim
    
    //23删除 左滑删除 【暂时用系统】
    //主要用来删除单个内容和多个内容
    
    //24删除 选中删除 【暂无使用】
    //用来删除单个内容和多个内容
    static let selected_image_width:CGFloat   = 24
    static let selected_image_height:CGFloat  = 24
    static let selected_image_xPos:CGFloat    = 10
    static let selected_image_rMargin:CGFloat = 10  //右边距
    
    
    //25基础提示框 【暂无使用】
    //提示框是提醒用户在当前页面操作后得反馈提示，位于页面的中间
    static let alertView_title_font:UIFont   = systemFontOfPixelSize(28)
    static let alertView_title_color:UIColor = fontcolor_C1
    static let alertView_radius:CGFloat      = 4
    
    
    //26更多
    //他是一个native的容器，分别有iOS和安卓的容器决定，会根据不同的平台变化。
    
    //27输入框 【暂无使用】
    //主要有标题，输入内容，图标等元素组成。
    static let input_height:CGFloat        = 43
    static let input_label_lmargin:CGFloat = 15
    static let input_text_font:UIFont      = fontsize_T3
    static let input_text_color:UIColor    = fontcolor_C2
    
    static let input_hintLabel_font:UIFont   = fontsize_T2
    static let input_hintLabel_color:UIColor = fontcolor_C2
    
    static let input_dark_hintLabel_font:UIFont        = fontsize_T3
    static let input_dark_hintLabel_color:UIColor      = RGBInt32(0xcccccc)
    static let input_dark_hintLabel_xPos:CGFloat       = 94
    static let input_dark_hintLabel_large_xPos:CGFloat = 110
    
    
    //28文本 【暂无使用】 一般用于tableview列表的自定义cell单元
    //由于某些使用场景，导致文本不可控，因此推出几个文本样式以供选择。
    //28.1 第一种cell 标题+内容+更多 [多内容cell]
    static let multiContentCell_width:CGFloat         = 203
    static let mulitContentCell_title_font:UIFont     = fontsize_T4
    static let multiContentCell_title_color:UIColor   = fontcolor_C3
    static let multiContentCell_title_xPos:CGFloat    = 15
    static let multiContentCell_title_uMargin:CGFloat = 15
    static let multiContentCell_title_dMargin:CGFloat = 10
    
    static let mulitContentCell_subtitle_font:UIFont     = fontsize_T2
    static let multiContentCell_subtitle_color:UIColor   = RGBInt32(0x000000)
    static let multiContentCell_subtitle_uMargin:CGFloat = 15
    
    static let multiContentCell_content_font:UIFont       = fontsize_T3
    static let multiContentCell_content_color:UIColor      = fontcolor_C3
    static let multiContentCell_content_uMargin:CGFloat    = 6.5
    static let multiContentCell_content_row_margin:CGFloat = 8
    
    static let multiContentCell_datetime_font:UIFont    = fontsize_T4
    static let multiContentCell_datetime_color:UIColor   = fontcolor_C4
    static let multiContentCell_datetime_uMargin:CGFloat = 15
    
    static let multiContenCell_moreLinkBtn_font:UIFont    = fontsize_T3
    static let multiContenCell_moreLinkBtn_color:UIColor   = fontcolor_C5
    static let multiContenCell_moreLinkBtn_uMargin:CGFloat = 15
    static let multiContenCell_moreLinkBtn_dMargin:CGFloat = 15
    
    //28.2 第二种cell （标题+日期+图片+内容+文字链）  [富文本图片cell]
    static let richTextImageCell_title_font:UIFont    = fontsize_T1
    static let richTextImageCell_title_color:UIColor   = RGBInt32(0x000000)
    static let richTextImageCell_title_xPos:CGFloat    = 15
    static let richTextImageCell_title_uMargin:CGFloat = 20
    
    static let richTextImageCell_datetime_font:UIFont    = fontsize_T4
    static let richTextImageCell_datetime_color:UIColor   = fontcolor_C4
    static let richTextImageCell_datetime_uMargin:CGFloat = 3.5
    
    static let richTextImageCell_image_width:CGFloat   = 290
    static let richTextImageCell_image_uMargin:CGFloat = 20
    
    static let richTextImageCell_content_uMargin:CGFloat = 20
    
    static let richTextIamgeCell_wordLink_font:UIFont     = fontsize_T3
    static let richTextImageCell_wordLink_color:UIColor   = fontcolor_C5
    static let richTextImageCell_wordLink_uMargin:CGFloat = 15
    
    //29情感化空白页面设计 Emotional blank page
    //插画能够更生动的展示页面应用场景和说明内页。建议插画内容在270*270以内，重要功能空白页面，有主按钮页面设计
    static let blank_page_image_width:CGFloat  = 135
    static let blank_page_image_height:CGFloat = 135
    
    static let blank_page_image_hasBtn_yPos:CGFloat    = 75
    static let blank_page_image_hasBtn_dMargin:CGFloat = 25
    static let blank_page_btn_uMargin:CGFloat          = 40
    static let blank_page_text_font:UIFont             = fontsize_T2
    static let blank_page_text_color:UIColor           = fontcolor_C4
    static let blank_page_text_row_margin:CGFloat      = 8
    
    //30情感化空白页设计
    //插画能够更生动的展示页面应用场景和说明内页。次级空白页面使用次级按钮，无需按钮有如右图设计方式
    static let blank_page_image_yPos:CGFloat = 120
    
    
    //31插画弹层（单按钮）  Illustration layer
    //插画弹层样式有两种，单按钮加插画或双按钮加插画，能够让页面更生动有趣。
    static let illustration_layer_width:CGFloat  = 270
    static let illustration_layer_height:CGFloat = 315
    
    static let illustration_layer_topRight_cancelBtn_width:CGFloat   = 24
    static let illustration_layer_topRight_cancelBtn_height:CGFloat  = 24
    static let illustration_layer_topRight_cancelBtn_dMargin:CGFloat = 15
    
    static let illustration_layer_image_yPos:CGFloat   = 30
    static let illustration_layer_image_width:CGFloat  = 240
    static let illustration_layer_image_height:CGFloat = 160
    
    static let illustration_layer_text_uMargin:CGFloat    = 15
    static let illustration_layer_text_dMargin:CGFloat    = 15
    static let illustration_layer_text_row_margin:CGFloat = 8
    static let illustration_layer_text_font:UIFont        = fontsize_T3
    static let illustration_layer_text_color:UIColor     = RGBInt32(0xaaaaaa)
    static let illustration_layer_mainBtn_width:CGFloat  = 240
    static let illustration_layer_mainBtn_height:CGFloat = 43
    
    static let mask_layer_color:UIColor   = RGBInt32(0x000000) //黑色
    static let mask_layer_opacity:CGFloat = 0.5   //半透明
    
    //32插画弹层（双按钮） Illustration layer two button
    //插画弹层样式有两种，单按钮加插画或双按钮加插画，能够让页面更生动有趣。
    static let illustration_layer_twoBtn_height:CGFloat       = 290
    static let illustration_layer_twoBtn_text_dMargin:CGFloat = 20
    static let illustration_layer_dividing_line_color:UIColor = RGBInt32(0xafafbc)
    static let illustration_layer_verticalLine_height:CGFloat = 50  //竖线
    static let illustration_layer_mainBtn_font:UIFont         = mainBtn_font
    static let illustration_layer_mainBtn_color:UIColor       = fontcolor_C5
    static let illustration_layer_secondaryBtn_color:UIColor  = fontcolor_C3
    
    //33文字弹层 Text layer
    //文字弹层样色有两种，单按钮加文案和双按钮加文案。
    static let text_layer_title_yPos:CGFloat    = 20
    static let text_layer_title_dMargin:CGFloat = 10
    static let text_layer_title_font:UIFont     = fontsize_T2
    static let text_layer_title_color:UIColor   = fontcolor_C2
    
    static let text_layer_content_xPos:CGFloat = 20
    static let text_layer_content_rMargin:CGFloat = 20
    static let text_layer_content_dMargin:CGFloat = 20
    static let text_layer_content_color:UIColor = RGBInt32(0xaaaaaa)
    
    //其他自定义消息
    //IM自定义消息
    static let msg_title_height:CGFloat = 18
    static let msg_title_width:CGFloat  = 160
    static let msg_title_font:UIFont    = fontsize_T2
    static let msg_title_color:UIColor  = fontcolor_C1
    static let msg_subTitle_height:CGFloat  = 16
    static let msg_subTitle_font:UIFont     = fontsize_T4
    static let msg_subTitle_color:UIColor   = fontcolor_C1
    static let msg_imageView_height:CGFloat = 35
    static let msg_imageView_width:CGFloat  = 35
    static let msg_followUp_image:String     = "msg_flowup"
    static let msg_satisfaction_image:String = "msg_satisfaction"
    
    //测试题目底部按钮
    static let bottom_btn_width:CGFloat = (HHBWIDTH / 2.0)
    static let bottom_btn_height:CGFloat = 49
    static let practicePage_bgView_height:CGFloat = 4
    static let practicePage_contentView_uMargin:CGFloat = 11
    static let practicePage_contentView_yPos:CGFloat = (practicePage_contentView_uMargin + practicePage_bgView_height)
    //static let practicePage_contentView_height:CGFloat = (HHBHEIGHT - bottom_btn_height - top_nav_bar_height - prccticePage_contentView_yPos)  //测试题库
    
    static let exercise_height:CGFloat        = 221
    static let exercise_title_height:CGFloat  = 45  //1行的高度
    static let exercise_title_uMargin:CGFloat = 11
    static let exercise_title_dMargin:CGFloat = 11
    static let exercise_choice_height:CGFloat = (exercise_height - exercise_title_height)
    
    static let choice_icon_width:CGFloat    = 19
    static let choice_icon_height:CGFloat   = 19
    static let choice_title_uMargin:CGFloat = 10
    static let choice_title_dMargin:CGFloat = 10
    static let choice_title_xPos:CGFloat    = 64
    static let choice_xPos:CGFloat          = 30
    static let choice_height :CGFloat       = 40
    
    //护理培训课程搜索
    static let NT_searchCell_height:CGFloat          = (130 / 3.0)
    static let NT_searchCell_icon_width:CGFloat      = 12 //(NT  Nurse Trainning 简写)
    static let NT_searchCell_icon_height:CGFloat     = 12
    static let NT_searchCell_content_lMargin:CGFloat = 12
    static let NT_seatchCell_content_color:UIColor   = RGBInt32(0x151515)
    static let NT_searchViewController_tableview_height:CGFloat = (HHBHEIGHT - top_nav_bar_height)
    
    
    //测试成绩
    static let practice_result_image_width:CGFloat   = 145
    static let practice_result_image_height:CGFloat  = 57
    static let practice_result_image_uMargin:CGFloat = 15
    
    static let practice_summary_text_yPos:CGFloat   = 75
    static let practice_summary_text_height:CGFloat = 22
    static let practice_summaryView_height:CGFloat  = 120
    
    static let practice_testRecordTextView_height:CGFloat = 38
    static let practice_testRecordText_height:CGFloat     = 17
    static let practice_testRecordText_width:CGFloat      = 48
    
    static let practice_filterView_height:CGFloat  = 42
    static let practice_filter_text_height:CGFloat = 22
    static let filterBtn_width:CGFloat  = 9
    static let filterBtn_height:CGFloat = 5
    
    static let practice_tableview_yPos:CGFloat   = (practice_summaryView_height + practice_testRecordTextView_height + practice_filterView_height)
    static let practice_tableview_height:CGFloat = (HHBHEIGHT - top_nav_bar_height)
    
    static let practice_tableviewcell_height:CGFloat = (461 / 7.0)
    static let cell_title_uMargin:CGFloat = 9
    static let cell_title_dMargin:CGFloat = 9
    static let practice_cell_icon_lMargin:CGFloat    = 16
    static let practice_cell_content_lMargin:CGFloat = 10
    static let practice_cell_content_height:CGFloat  = 44
    static let practice_cell_content_rMargin:CGFloat = 14
    static let practice_cell_content_xPos:CGFloat  = (practice_cell_icon_lMargin + choice_icon_width + practice_cell_content_lMargin)
    static let practice_cell_content_width:CGFloat = (HHBWIDTH - practice_cell_content_xPos - practice_cell_content_rMargin)
    
    static let pratice_bgcolor:UIColor = RGBInt32(0xf4f4f8)
    
    //自定义控件相关宏定义
    //通用拨盘控件
    static let pickerViewSheet_titleBar_height:CGFloat    = 44
    static let pickerViewSheet_contentView_height:CGFloat = 216
    static let pickerViewSheet_height:CGFloat = (pickerViewSheet_titleBar_height + pickerViewSheet_contentView_height)
    
    
    
    //后期加
    //检索框背景
    static let searchBar_background_color:UIColor = RGBInt32(0xf4f4f4)
    static let searchBar_border_color:UIColor     = RGBInt32(0xdfdfdf)
    //app背景颜色
    /// f4f4f4
    static let app_backgroud_color_1:UIColor = RGBInt32(0xf4f4f4)
    /// cccccc
    static let app_backgroud_color_2:UIColor = RGBInt32(0xcccccc)
    /// 468fff
    static let app_backgroud_color_3:UIColor = RGBInt32(0x468fff)
    /// ff513c
    static let app_backgroud_color_4:UIColor = RGBInt32(0xff513c)
    /// 2dcc98
    static let app_backgroud_color_5:UIColor = RGBInt32(0x2dcc98)
    
    
    //MARK: - 颜色列表
    // 首页未完成渐变颜色用于治疗组框和会诊日历
    /// 具体颜色对照UI效果图色彩表
    static let colorList = [RGBInt32(0x0057e6),
                            RGBInt32(0x0077e6),
                            RGBInt32(0x0093e6),
                            RGBInt32(0x00aee6),
                            RGBInt32(0x00c5da),
                            RGBInt32(0x00d1ce),
                            RGBInt32(0x11cd9b),
                            RGBInt32(0x12c255),
                            RGBInt32(0x63c700),
                            RGBInt32(0xa2d000),
                            RGBInt32(0xd0c900),
                            RGBInt32(0xd0ac00),
                            RGBInt32(0xdc9000),
                            RGBInt32(0xe37900),
                            RGBInt32(0xff802c),
                            RGBInt32(0xee6a6a),
                            RGBInt32(0xf56b8f),
                            RGBInt32(0xec4a78),
                            RGBInt32(0xf368c5),
                            RGBInt32(0xcd68f3),
                            RGBInt32(0xd153bc),
                            RGBInt32(0xc866e0),
                            RGBInt32(0xa93ee2),
                            RGBInt32(0x9657f1),
                            RGBInt32(0x7e57f1),
                            RGBInt32(0x6a62fa),
                            RGBInt32(0x414ad1),
                            RGBInt32(0x4450fc),
                            RGBInt32(0x2f51a5),
                            RGBInt32(0x4167dd)]
    
    
    static func color(_ index:Int) -> UIColor {
        let ind = index % colorList.count
        return colorList[ind]
    }
    
    static func scaleConvert(_ len: CGFloat) -> CGFloat {
        return len * HHBWIDTH / 375.0
    }
    
}
