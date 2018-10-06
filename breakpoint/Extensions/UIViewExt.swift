//
//  UIViewExt.swift
//  breakpoint
//
//  Created by MinRiDaddy on 06/10/2018.
//  Copyright © 2018 MinRiDaddy. All rights reserved.
//

import UIKit

extension UIView {
    func bindToKeyboard() {
        // UIKeyboardWillChangeFrame 가 UIResponder.keyboardWillChangeFrameNotification 로 대체되었음
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(_:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    @objc func keyboardWillChange(_ notification: NSNotification) {
        // UIKeyboardAnimationDurationUserInfoKey 가 UIResponder.keyboardAnimationDurationUserInfoKey 로 대체되었음
        let duration = notification.userInfo![UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
        // UIKeyboardAnimationCurveUserInfoKey 가 UIResponder.keyboardAnimationCurveUserInfoKey 로 대체되었음
        let curve = notification.userInfo![UIResponder.keyboardAnimationCurveUserInfoKey] as! UInt
        // UIKeyboardFrameBeginUserInfoKey 가 UIResponder.keyboardFrameBeginUserInfoKey 로 대체되었음
        let beginningFrame = (notification.userInfo![UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        // UIKeyboardFrameEndUserInfoKey 가 UIResponder.keyboardFrameEndUserInfoKey 로 대체되었음
        let endFrame = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let deltaY = endFrame.origin.y - beginningFrame.origin.y
        
        // UIViewKeyframeAnimationOptions 가 UIView.KeyframeAnimationOptions 로 대체되었음
        UIView.animateKeyframes(withDuration: duration, delay: 0.0, options: UIView.KeyframeAnimationOptions(rawValue: curve), animations: {
            self.frame.origin.y += deltaY
        }, completion: nil)
    }
}
