//
//  ViewController.swift
//  cleanArchitecture
//
//  Created by Panacea015 on 05/08/19.
//  Copyright © 2019 Panacea015. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
  //  let mode : viewModelMvvm
      let mode : viewModelMvvm = viewModelMvvm(Person.init(name: "xzy", age: 25, address: "pune hadapsar jsj jkdsjs", desg: "pune", email: "email.com"))
    
    @IBAction func btnSend(_ sender: Any) {
    }
    @IBOutlet var txtEmail: bindabletextfield!
    {
        didSet
        {
            txtEmail.bind {
                
                self.mode.email.value = $0
            }
        }
    }
    @IBOutlet var lblName: UILabel!
    
    @IBOutlet var lblAge: UILabel!
    
    @IBOutlet var lblAddress: UILabel!
    
    @IBOutlet var lbdesg: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//
//        let name = dynamicString("raj")
//        let age = Generics(25)
//        let check = Generics(true)
//        let arrayval = Generics(["jai","abc","xyz"])
//
       // let age  =

        
   //     let label = UILabel(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
        //label.backgroundColor = UIColor.red
        
     //   self.view.addSubview(label)
        
        
        
        
        
//        var viewmodel : viewModelMvvm
//        {
//            didSet
//            {
//                viewmodel.person.
//            }
//        }
        
        
        
        let model1 : viewModelMvvm = viewModelMvvm(Person.init(name: "xzy", age: 25, address: "pune hadapsar jsj jkdsjs", desg: "pune", email: "email.com"))
       
        
        print(" changes in view  ")
        model1.name.bindandfire {
              [unowned self] in
            self.lblName.text = $0
        }
        
      
        model1.age.bindandfire { (value) in
      
            self.lblAge.text = "\(value)"
        }
       
        model1.address.bindandfire {
            [unowned self] in
            self.lblAddress.text = $0
        }
        
        model1.desg.bindandfire {
            [unowned self] in
            self.lbdesg.text = $0
        }
        
        
       
        
        
        
//
//        name.bind { (value) in
//            print(value)
//
//            label.text = value
//        }
//
//        age.bindandfire { (value) in
//            print(value)
//        }
//
//        arrayval.bindandfire { (value) in
//            print(value[1] )
//        }
//
//        check.bindandfire { (value) in
//            print(value)
//        }
//
//
//
//     //   name.value = "jai"
//     //   name.value = "abhi"
//
//        name.bindandfire { (value) in
//            label.text = value
//        }
//
    }
    
    


    
    


    
    
}

