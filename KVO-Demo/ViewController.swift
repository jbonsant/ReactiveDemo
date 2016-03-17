//
//  ViewController.swift
//  KVO-Demo
//
//  Created by Jeremie Bonsant on 2016-03-16.
//  Copyright © 2016 PetalMD. All rights reserved.
//


/* -----------------------------------
          Key-Value Observing
   ----------------------------------- */

//import UIKit
//
//class Car: NSObject {
//    dynamic var name = "Turbo"
//}
//
//class ViewController: UIViewController {
//    
//    @IBOutlet weak var button: UIButton!
//    @IBOutlet weak var label: CustomLabel!
//    @IBOutlet weak var textfield: UITextField!
//    
//    private let car = Car()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        label.text = car.name
//        
//        car.addObserver(label, forKeyPath: "name",
//            options: NSKeyValueObservingOptions.New, context: nil)
//        
//    }
//    
//    deinit {
//        car.removeObserver(label, forKeyPath: "name")
//    }
//    
//    @IBAction func buttonPressed(sender: AnyObject) {
//        if let text = textfield.text {
//            car.name = text
//        }
//    }
//}


/* -----------------------------------
                Event
   ----------------------------------- */

//import UIKit
//
//class ObservableByEvent<T> {
//    
//    let didChange = Event<(T)>()
//    private var value: T
//    
//    init(_ initialValue: T) {
//        value = initialValue
//    }
//    
//    func set(newValue: T) {
//        value = newValue
//        didChange.raise(newValue)
//    }
//    
//    func get() -> T {
//        return value
//    }
//}
//
//class Car {
//    let name = ObservableByEvent<String>("Turbo")
//}
//
//class ViewController: UIViewController {
//    
//    @IBOutlet weak var button: UIButton!
//    @IBOutlet weak var label: CustomLabel!
//    @IBOutlet weak var textfield: UITextField!
//    
//    private let car = Car()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        label.text = car.name.get()
//        
//        car.name.didChange.addHandler(label, handler: CustomLabel.nameChanged)
//    }
//    
//    @IBAction func buttonPressed(sender: AnyObject) {
//        if let text = textfield.text {
//            car.name.set(text)
//        }
//    }
//}


/* -----------------------------------
          NotificationCenter
   ----------------------------------- */

//import UIKit
//
//class Car {
//    var name: String = "Turbo" {
//        didSet {
//            NSNotificationCenter.defaultCenter().postNotificationName("NameDidChange", object: name)
//        }
//    }
//}
//
//class ViewController: UIViewController {
//    
//    @IBOutlet weak var button: UIButton!
//    @IBOutlet weak var label: CustomLabel!
//    @IBOutlet weak var textfield: UITextField!
//    
//    private let car = Car()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        label.text = car.name
//    }
//    
//    @IBAction func buttonPressed(sender: AnyObject) {
//        if let text = textfield.text {
//            car.name = text
//        }
//    }
//}


/* -----------------------------------
                 Bond
   ----------------------------------- */

//import UIKit
//
//class Car {
//    var name = Observable("Turbo")
//}
//
//class ViewController: UIViewController {
//    
//    @IBOutlet weak var button: UIButton!
//    @IBOutlet weak var label: CustomLabel!
//    @IBOutlet weak var textfield: UITextField!
//    
//    private let car = Car()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        car.name.bindTo(label.bnd_text)
//        //textfield.bnd_text.bindTo(label.bnd_text)
//    }
//    
//    @IBAction func buttonPressed(sender: AnyObject) {
//        if let text = textfield.text {
//            car.name.value = text
//        }
//    }
//}
