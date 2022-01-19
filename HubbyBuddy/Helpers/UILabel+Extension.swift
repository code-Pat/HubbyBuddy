//
//  UILabel+Extension.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/18.
//

import UIKit

// UILabel line spacing control code
extension UILabel {
    func setTextWithLineHeight(text: String?, lineHeight: CGFloat) {
        
        if let text = text {
            let style = NSMutableParagraphStyle()
            style.maximumLineHeight = lineHeight
            style.minimumLineHeight = lineHeight
            
            let attributes: [NSAttributedString.Key: Any] = [
                .paragraphStyle: style,
                .baselineOffset: (lineHeight - font.lineHeight) / 2 + font.descender
            ]
            
            let attrString = NSAttributedString(string: text, attributes: attributes)
            self.attributedText = attrString
        }
    }
}

