//
//  HMPopupAttribute.swift
//  stick_ios
//
//  Created by CNCEMN188807 on 2023/12/22.
//

import UIKit

/// 弹出框尺寸
public enum PopupSize {
    
    /// 固定宽高
    case size(width: CGFloat, height: CGFloat)
    
    /// 约束布局自动撑开
    case layoutFit(width: CGFloat)
}

/// 弹框配置属性
public class PopupAttribute {
    
    /// 弹出框名称 为nil隐藏时消失所有type一致的弹框
    public var name: String?
    
    /// 点击背景是否消失 默认消失
    public var dismissWhenTapMask: Bool = true
    /// 点击背景消失回调
    public var dismissHandlerWhenTapMask: (() -> Void)?
    
    /// 弹出mask颜色
    public var maskColor: UIColor? = UIColor(white: 0, alpha: 0.3)
    
    /// 弹出框显示位置
    public var showPosition: ((PopupMaskVC) -> Void)
    
    /// 动画之前
    public var beforeAnimation: ((PopupMaskVC) -> Void)?
    
    /// 动画之后
    public var afterAnimation: ((PopupMaskVC) -> Void)?
    
    /// 显示隐藏是否有动画
    public var hasAnimation: Bool = true
    /// 显示隐藏动画时长
    public var animationDuration: TimeInterval = 0.25
    
    /// 弹出视图
    var popupView: UIView
    
    /// 弹出控制器
    var popupVC: UIViewController?
    
    public init(name: String? = nil,
                popupView: UIView,
                showPosition: @escaping ((PopupMaskVC) -> Void)) {
        self.name = name
        self.popupView = popupView
        self.popupVC = popupView.next as? UIViewController
        self.showPosition = showPosition
    }
}
