//
//  ViewController.swift
//  snp
//
//  Created by Mac on 22.05.2026.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    
    
    lazy var Label: UILabel = {
        let label = UILabel()
        label.text = "Hello world"
        label.textAlignment = .center
        return label
    }()
    
    lazy var TextField1: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.keyboardType = .numberPad
        return textField
    }()
    
    lazy var TextField2: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.keyboardType = .numberPad
        return textField
    }()
    
    lazy var Plus: UIButton = {
        let plus = UIButton()
        plus.setTitle("+", for: .normal)
        plus.backgroundColor = .blue
        plus.layer.cornerRadius = 10
        return plus
    }()
    
    lazy var Minus: UIButton = {
        let minus = UIButton()
        minus.setTitle("-", for: .normal)
        minus.backgroundColor = .blue
        minus.layer.cornerRadius = 10
        return minus
    }()
    
    lazy var Multiply: UIButton = {
        let multiply = UIButton()
        multiply.setTitle("*", for: .normal)
        multiply.backgroundColor = .blue
        multiply.layer.cornerRadius = 10
        return multiply
    }()
    
    lazy var Divide: UIButton = {
        let divide = UIButton()
        divide.setTitle("/", for: .normal)
        divide.backgroundColor = .blue
        divide.layer.cornerRadius = 10
        return divide
    }()
    
    
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }

    func setupUI(){
        view.addSubview(Label)
        view.addSubview(TextField1)
        view.addSubview(TextField2)
        view.addSubview(Plus)
        view.addSubview(Minus)
        view.addSubview(Multiply)
        view.addSubview(Divide)
        
        
        Label.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).inset(100)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        TextField1.snp.makeConstraints { make in
            make.top.equalTo(Label.snp.bottom).offset(100)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        TextField2.snp.makeConstraints { make in
            make.top.equalTo(TextField1.snp.bottom).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(40)
        }
        Plus.snp.makeConstraints { make in
            make.top.equalTo(TextField2.snp.bottom).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(80)
        }
        Minus.snp.makeConstraints { make in
            make.top.equalTo(TextField2.snp.bottom).offset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(80)
        }
        Multiply.snp.makeConstraints { make in
            make.top.equalTo(Plus.snp.bottom).offset(40)
            make.leading.equalTo(view.safeAreaLayoutGuide).inset(80)
        }
        Divide.snp.makeConstraints { make in
            make.top.equalTo(Minus.snp.bottom).offset(40)
            make.trailing.equalTo(view.safeAreaLayoutGuide).inset(80)
        }
        Plus.addTarget(self, action: #selector(plus), for: .touchUpInside)
        Minus.addTarget(self, action: #selector(minus), for: .touchUpInside)
        Multiply.addTarget(self, action: #selector(multiply), for: .touchUpInside)
        Divide.addTarget(self, action: #selector(divide), for: .touchUpInside)

        
    }
    @objc func plus(){
        let a = TextField1.text!
        let b = TextField2.text!
        let sum = Int(a)! + Int(b)!
        Label.text = String(sum)
        
    }
    @objc func minus(){
        let a = TextField1.text!
        let b = TextField2.text!
        let sum = Int(a)! - Int(b)!
        Label.text = String(sum)
        
    }
    @objc func multiply(){
        let a = TextField1.text!
        let b = TextField2.text!
        let sum = Int(a)! * Int(b)!
        Label.text = String(sum)
        
    }
    @objc func divide(){
        let a = TextField1.text!
        let b = TextField2.text!
        let sum = Int(a)! / Int(b)!
        Label.text = String(sum)
        
    }
        

}

