//
//  genericViewModel.swift
//  cleanArchitecture
//
//  Created by Panacea015 on 08/08/19.
//  Copyright © 2019 Panacea015. All rights reserved.
//

import Foundation


class Generics<T>
{
    // var value : String = ""
    
    typealias Listener = (T) -> Void
    var listerner : Listener?
    
    func bind(listener : Listener?)
    {
        self.listerner = listener
    }
    
    
    func bindandfire(listner1 : Listener?)
    {
        self.listerner = listner1
        
        listner1?(value)
    }
    
    var value : T{
        didSet
        {
            listerner?(value)
        }
    }
    
    init(_ v: T)
    {
        value = v
    }
    
    
}
