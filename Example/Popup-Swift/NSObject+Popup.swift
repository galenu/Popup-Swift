//
//  NSObject+Popup.swift
//  Popup-Swift_Example
//
//  Created by CNCEMN188807 on 2024/11/20.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit
import Popup_Swift

extension NSObject {
    
    /// 给vc弹框  默认nil表示获取最顶层的PresentedController
    /// - Parameters:
    ///   - attribute: 弹出框配置
    ///   - vc: 容器vc
    ///   - animation: 是否动画
    ///   - completion: 弹出完成回调
    /// - Returns: HMPopupMask
    @discardableResult
    public func showPupup(attribute: PopupAttribute,
                          for vc: UIViewController? = nil,
                          animation: Bool = true,
                          completion: (() -> Void)? = nil) -> PopupMaskVC {
        return Popup.show(attribute: attribute, for: vc, animation: animation, completion: completion)
    }
    
    /// 消失弹框
    /// - Parameters:
    ///   - name: 根据显示的name筛选消失的弹框 默认nil表示消失所有显示的弹框
    ///   - vc: 容器vc
    ///   - animation: 是否动画
    ///   - completion: 消失完成回调
    public func hiddenPopup(name: String? = nil,
                            for vc: UIViewController? = nil,
                            animation: Bool = true,
                            completion: (() -> Void)? = nil) {
        Popup.dismiss(name: name, for: vc, animation: animation, completion: completion)
    }
    
    /// 弹出Alert
    /// - Parameters:
    ///   - name: 弹出层的name 消失时需一致  默认nil表示消失正在显示的
    ///   - alert: 自定义alert
    ///   - vc: 从某个VC弹出
    ///   - size: 弹框内容布局尺寸
    ///   - offsetX: 距离x轴的偏移量
    ///   - offsetY: 距离y轴的偏移量
    ///   - dismissWhenTapMask: 点击背景是否消失
    ///   - animation: 是否动画
    ///   - completion: 完成回调
    /// - Returns: HMPopupMask
    @discardableResult
    public func showAlert(name: String? = nil,
                          _ alert: UIView,
                          for vc: UIViewController? = nil,
                          size: PopupSize = .layoutFit(width: UIScreen.main.bounds.width - 60),
                          offsetX: CGFloat = 0,
                          offsetY: CGFloat = 0,
                          dismissWhenTapMask: Bool = true,
                          animation: Bool = true,
                          completion: (() -> Void)? = nil) -> PopupMaskVC {
        let mask = Popup.showAlert(name: name, alert, for: vc, size: size, offsetX: offsetX, offsetY: offsetY, dismissWhenTapMask: dismissWhenTapMask, animation: animation, completion: completion)
        mask.attribute.maskColor = UIColor(white: 0, alpha: 0.3)
        return mask
    }
    
    /// 从底部弹出actionSheet
    /// - Parameters:
    ///   - name: 弹出层的name 消失时需一致  默认nil表示消失正在显示的
    ///   - actionSheet: 自定义actionSheet
    ///   - vc: 从某个VC弹出
    ///   - size: 弹框内容布局尺寸
    ///   - offsetX: 距离x轴的偏移量
    ///   - offsetY: 距离y轴的偏移量
    ///   - dismissWhenTapMask: 点击背景是否消失
    ///   - animation: 是否动画
    ///   - completion: 完成回调
    /// - Returns: HMPopupMask
    @discardableResult
    public func showActionSheet(name: String? = nil,
                                _ actionSheet: UIView,
                                for vc: UIViewController? = nil,
                                size: PopupSize = .layoutFit(width: UIScreen.main.bounds.width),
                                offsetX: CGFloat = 0,
                                offsetY: CGFloat = 0,
                                dismissWhenTapMask: Bool = true,
                                animation: Bool = true,
                                completion: (() -> Void)? = nil) -> PopupMaskVC {
        let mask = Popup.showActionSheet(name: name, actionSheet, for: vc, size: size, offsetX: offsetX, offsetY: offsetY, dismissWhenTapMask: dismissWhenTapMask, animation: animation, completion: completion)
        mask.attribute.maskColor = UIColor(white: 0, alpha: 0.3)
        return mask
    }
    
    /// 从右向左push弹出popupView
    /// - Parameters:
    ///   - name: 弹出层的name 消失时需一致  默认nil表示消失正在显示的
    ///   - popupView: 弹出的popupView
    ///   - vc: 从某个VC弹出
    ///   - size: 弹框内容布局尺寸
    ///   - offsetX: 距离x轴的偏移量
    ///   - offsetY: 距离y轴的偏移量
    ///   - dismissWhenTapMask: 点击背景是否消失
    ///   - animation: 是否动画
    ///   - completion: 完成回调
    /// - Returns: HMPopupMask
    @discardableResult
    public func pushPopover(name: String? = nil,
                            _ popupView: UIView,
                            for vc: UIViewController? = nil,
                            size: PopupSize = .layoutFit(width: UIScreen.main.bounds.width),
                            offsetX: CGFloat = 0,
                            offsetY: CGFloat = 0,
                            dismissWhenTapMask: Bool = true,
                            animation: Bool = true,
                            completion: (() -> Void)? = nil) -> PopupMaskVC {
        let mask = Popup.pushPopover(name: name, popupView, for: vc, size: size, offsetX: offsetX, offsetY: offsetY, dismissWhenTapMask: dismissWhenTapMask, animation: animation, completion: completion)
        mask.attribute.maskColor = UIColor(white: 0, alpha: 0.3)
        return mask
    }
}
