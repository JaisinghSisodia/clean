//
//  bindabletextfield.swift
//  cleanArchitecture
//
//  Created by Panacea015 on 08/08/19.
//  Copyright © 2019 Panacea015. All rights reserved.
//

import Foundation
import UIKit



class bindabletextfield: UITextField
{
  
    var value : (String) -> Void = {_ in }
    var str : String = ""
    func bind(callback : @escaping (String) -> Void)
    {
        value = callback
        
        addTarget(self, action: #selector(didchanged), for: .editingChanged)
        
       
        
    }
    
    
    @objc  func didchanged(_ textfield : UITextField)
    {
        value(textfield.text!)
    }
 
}
