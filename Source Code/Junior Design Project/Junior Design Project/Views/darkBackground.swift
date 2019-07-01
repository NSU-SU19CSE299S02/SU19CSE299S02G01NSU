//
//  darkBackground.swift
//  Junior Design Project
//
//  Created by Shafiqul  Islam on 7/2/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//

import Foundation
import UIKit

func textViewDidBeginEditing(textView: UITextView) {
    
    let text = UITextView()
    
    //    let size: CGFloat = 20
       // let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        text.backgroundColor = #colorLiteral(red: 0.8840534687, green: 0.8784657121, blue: 0.8883432746, alpha: 0.7970675616)
        text.textAlignment = .center
        text.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        text.layer.cornerRadius = 5.0
        text.clipsToBounds = true
}
    

