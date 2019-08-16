//
//  viewModel.swift
//  cleanArchitecture
//
//  Created by Panacea015 on 08/08/19.
//  Copyright © 2019 Panacea015. All rights reserved.
//

import Foundation


class dynamicString
{
   // var value : String = ""

    typealias Listener = (String) -> Void
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

    var value : String{
        didSet
            {
                listerner?(value)
        }
    }

    init(_ v: String)
    {
        value = v
    }


}




