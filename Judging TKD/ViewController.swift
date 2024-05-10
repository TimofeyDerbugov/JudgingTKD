//
//  ViewController.swift
//  Judging TKD
//
//  Created by Apple on 16.03.2024.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let textFieldID = UITextField() // id компьютера
    let textFieldName = UITextField() // имя
    let sendButton = UIButton()//отправить
    let idButton = UIButton()//ид пк убрать клавиатуру
    let nameButton = UIButton()//имя убрать клавиатуру
    
    let labelId = UILabel()
    let labelName = UILabel()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        idButton.frame = CGRect(x: (view.frame.size.width / 2 - (view.frame.size.width / 4) - 50), y: 250, width: 300, height: 50)
        idButton.backgroundColor = .gray
        idButton.layer.cornerRadius = 20
        idButton.setTitle("Убрать клавиатуру", for: .normal)
        idButton.addTarget(self, action: #selector(delKeyboard1), for: .touchUpInside)
        view.addSubview(idButton)
        
        
        nameButton.frame = CGRect(x: (view.frame.size.width / 2 - (view.frame.size.width / 4) - 50), y: 420, width: 300, height: 50)
        nameButton.backgroundColor = .gray
        nameButton.layer.cornerRadius = 20
        nameButton.setTitle("Убрать клавиатуру", for: .normal)
        nameButton.addTarget(self, action: #selector(delKeyboard2), for: .touchUpInside)
        view.addSubview(nameButton)
        
        
        
        
        
        
        
        textFieldID.frame = CGRect(x: (view.frame.size.width / 2 - (view.frame.size.width / 4) - 50), y: 180, width: (view.frame.size.width / 4 * 3), height: 50)
        textFieldID.borderStyle = UITextField.BorderStyle.roundedRect
        textFieldID.textAlignment = .left
        textFieldID.contentVerticalAlignment = .top
        textFieldID.clearButtonMode = .always
        textFieldID.becomeFirstResponder()
        textFieldID.resignFirstResponder()
        textFieldID.returnKeyType = UIReturnKeyType.next
        textFieldID.textColor = .gray
        textFieldID.placeholder = "Пожалуйста, введите ID"
        view.addSubview(textFieldID)
        
        
        textFieldName.frame = CGRect(x: (view.frame.size.width / 2 - (view.frame.size.width / 4) - 50), y: 350, width: (view.frame.size.width / 4 * 3), height: 50)
        textFieldName.borderStyle = UITextField.BorderStyle.roundedRect
        textFieldName.textAlignment = .left
        textFieldName.contentVerticalAlignment = .top
        textFieldName.clearButtonMode = .always
        textFieldName.becomeFirstResponder()
        textFieldName.resignFirstResponder()
        textFieldName.returnKeyType = UIReturnKeyType.next
        textFieldName.textColor = .gray
        textFieldName.placeholder = "Пожалуйста, введите имя"
        view.addSubview(textFieldName)
        
        
        labelId.frame = CGRect(x: (view.frame.size.width / 2 - (view.frame.size.width / 4) - 50), y: 100, width: (view.frame.size.width / 4 * 3), height: 60)
        labelId.text = "Введите ID компьютера"
        labelId.textColor = .blue
        view.addSubview(labelId)
        
        
        labelName.frame = CGRect(x: (view.frame.size.width / 2 - (view.frame.size.width / 4) - 50), y: 300, width: (view.frame.size.width / 4), height: 60)
        labelName.text = "Введите имя"
        labelName.textColor = .red
        view.addSubview(labelName)
        
        
        
        
        sendButton.frame = CGRect(x: (view.frame.size.width / 2 - 38), y: (view.frame.size.height / 10 * 8 - 25), width: 76, height: 76)
        sendButton.backgroundColor = .green
        sendButton.layer.cornerRadius = 20
        sendButton.addTarget(self, action: #selector(sendName), for: .touchUpInside)
        sendButton.setBackgroundImage(UIImage(named: "SSS"), for: .normal)
        view.addSubview(sendButton)
        
        
    }
    
    @objc func sendName() -> String {
        let vc = secondViewController()
        self.present(vc, animated: true)
        
        
        
        myName = textFieldName.text ?? "Судья"
        ID = textFieldID.text ?? "123.456.789"
        print(myName as Any)
        print(ID)
        return myName
        return ID ?? "123.456.789.000"
    }

    @objc func delKeyboard1() {

        textFieldID.endEditing(true)
    }
    @objc func delKeyboard2() {

        textFieldName.endEditing(true)
    }


}


