//
//  viewModelMvvm.swift
//  cleanArchitecture
//
//  Created by Panacea015 on 08/08/19.
//  Copyright © 2019 Panacea015. All rights reserved.
//

import Foundation

protocol personProtocol {
    
    var name : Generics<String>{get}
    var age : Generics<Int>{get}
    var address : Generics<String>{get}
    var desg : Generics<String>{get}
    var email : Generics<String>{get}
}


class viewModelMvvm : personProtocol
{
    var email: Generics<String>
    
    let  person : Person
    var name: Generics<String>
    
    var age: Generics<Int>
    
    var address: Generics<String>
    
    var desg: Generics<String>
    
    
    init(_ person : Person) {
            self.person = person
        
        self.name = Generics(person.name)
        self.age = Generics(person.age)
        self.desg = Generics(person.desg)
        self.address = Generics(person.address)
        self.email = Generics(person.email)
    }
    
    
    
}
