//
//  secondViewController.swift
//  Judging TKD
//
//  Created by Apple on 16.03.2024.
//

import UIKit

class secondViewController: UIViewController {
    
    let redView = UIView()
    let blueView = UIView()
    
    var labelRed = UILabel()
    var blueLabel = UILabel()
    
    let nextSendButton = UIButton()
    
    

    let redThreeButton = UIButton()
    let redOneButton = UIButton()
    let blueOneButton = UIButton()
    let blueThreeButton = UIButton()
    
    var oneRed: Double = 4.0
    var oneBlue: Double = 4.0
    
    let cencelButton = UIButton()
    
    let sButton = UIButton()
        
    
    var actiones: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black

        sButton.frame = CGRect(x: (view.frame.size.width / 10 * 8 + (view.frame.size.width / 4) / 2), y: 250, width: (view.frame.size.width / 4), height: view.frame.size.width / 5 - 1)
        sButton.backgroundColor = .green
        sButton.addTarget(self, action: #selector(nxt), for: .touchUpInside)
        sButton.setBackgroundImage(UIImage(named: "SSS"), for: .normal)
        view.addSubview(sButton)
        
        cencelButton.frame = CGRect(x: (view.frame.size.width / 10 * 8 + (view.frame.size.width / 4) / 2), y: 150, width: (view.frame.size.width / 4), height: view.frame.size.width / 5 - 1)
        cencelButton.backgroundColor = .green
        cencelButton.addTarget(self, action: #selector(remo), for: .touchUpInside)
        cencelButton.setBackgroundImage(UIImage(named: "sendButton"), for: .normal)
        view.addSubview(cencelButton)
        
        labelRed.frame = CGRect(x: (view.frame.size.width / 10 * 8), y: 50, width: (view.frame.size.width / 4), height: view.frame.size.width / 5)
        labelRed.text = String(oneRed)
        labelRed.textAlignment = .center
        
        
        blueLabel.frame = CGRect(x: (view.frame.size.width / 10 * 8 + (view.frame.size.width / 4)), y: 50, width: (view.frame.size.width / 4), height: view.frame.size.width / 5 - 1)
        blueLabel.text = String(oneBlue)
        blueLabel.textAlignment = .center
 
        
        redView.frame = CGRect(x: (view.frame.size.width / 10 * 8), y: 50, width: (view.frame.size.width / 4), height: view.frame.size.width / 5)
        redView.backgroundColor = .red
        view.addSubview(redView)
        
        blueView.frame = CGRect(x: (view.frame.size.width / 10 * 8 + (view.frame.size.width / 4)), y: 50, width: (view.frame.size.width / 4), height: view.frame.size.width / 5 - 1)
        blueView.backgroundColor = .blue
        view.addSubview(blueView)
        

        redOneButton.frame = CGRect(x: (view.frame.size.width / 3 - 60), y: 50, width: (view.frame.size.width / 2 + 25), height: (view.frame.size.width / 3))
        redOneButton.backgroundColor = .red
        redOneButton.setTitle("-0,1", for: .normal)
        redOneButton.addTarget(self, action: #selector(redOne), for: .touchUpInside)
        redOneButton.layer.cornerRadius = 20
        view.addSubview(redOneButton)
        
        redThreeButton.frame = CGRect(x: (view.frame.size.width / 3 - 60), y: (15 + (view.frame.size.width / 2 + 25)), width: (view.frame.size.width / 2 + 25), height: (view.frame.size.width / 3))
        redThreeButton.backgroundColor = .red
        redThreeButton.setTitle("-0,3", for: .normal)
        redThreeButton.addTarget(self, action: #selector(redThree), for: .touchUpInside)
        redThreeButton.layer.cornerRadius = 20
        view.addSubview(redThreeButton)
        
        
        blueOneButton.frame = CGRect(x: (view.frame.size.width / 10 * 14), y: 50, width: (view.frame.size.width / 2 + 25), height: (view.frame.size.width / 3))
        blueOneButton.backgroundColor = .blue
        blueOneButton.setTitle("-0,1", for: .normal)
        blueOneButton.addTarget(self, action: #selector(blueOne), for: .touchUpInside)
        blueOneButton.layer.cornerRadius = 20
        view.addSubview(blueOneButton)
        
        blueThreeButton.frame = CGRect(x: (view.frame.size.width / 10 * 14), y: (15 + (view.frame.size.width / 2 + 25)), width: (view.frame.size.width / 2 + 25), height: (view.frame.size.width / 3))
        blueThreeButton.backgroundColor = .blue
        blueThreeButton.setTitle("-0,3", for: .normal)
        blueThreeButton.addTarget(self, action: #selector(blueThree), for: .touchUpInside)
        blueThreeButton.layer.cornerRadius = 20
        view.addSubview(blueThreeButton)
        
        
        
        view.addSubview(labelRed)
        view.addSubview(blueLabel)
        


    }
    
    @objc func nxt() {
        
        
        redScoreON += oneRed
        blueScoreON += oneBlue
        
        let tvc = ThirdViewController()
        self.present(tvc, animated: true)

    }

    @objc func remo() -> Double {
        if actiones.last == "r1", oneRed <= 3.9 {
                oneRed += 0.1
                oneRed = round(oneRed * 10) / 10.0
                labelRed.text = String(oneRed)
                return oneRed
            }
            
            if actiones.last == "r3", oneRed <= 3.7 {
                oneRed += 0.3
                oneRed = round(oneRed * 10) / 10.0
                labelRed.text = String(oneRed)
                return oneRed
            }
        
        if actiones.last == "b1", oneBlue <= 3.9 {
            oneBlue += 0.1
            oneBlue = round(oneBlue * 10) / 10.0
            blueLabel.text = String(oneBlue)
            return oneBlue
        }
        if actiones.last == "b3", oneBlue <= 3.7 {
            oneBlue += 0.3
            oneBlue = round(oneBlue * 10) / 10.0
            blueLabel.text = String(oneBlue)
            return oneBlue
            
        }
        return 0.0
    }
    
    
    @objc func redOne() -> Double  {
        
        if oneRed < 0.1 {
            oneRed = 0.0
        }
        else {
            oneRed -= 0.1
        }
        
        oneRed = round(oneRed * 10) / 10.0
        print("Красный", oneRed)
        labelRed.text = String(oneRed)

        actiones.append("r1")
        
        return oneRed

    }
    @objc func redThree()  -> Double {
        
        if oneRed < 0.1 {
            oneRed = 0.0
        }
        else {
            oneRed -= 0.3
            if oneRed < 0.1 {
                oneRed = 0.0
            }
        }
        
        
        actiones.append("r3")
        
        
        oneRed = round(oneRed * 10) / 10.0
        print("Красный", oneRed)
        labelRed.text = String(oneRed)
        return oneRed


    }
    @objc func blueOne()  -> Double {
        
        if oneBlue < 0.1 {
            oneBlue = 0.0
        }
        else {
            oneBlue -= 0.1
        }
        
        actiones.append("b1")
        
        oneBlue = round(oneBlue * 10) / 10.0
        print("Синий", oneBlue)
        blueLabel.text = String(oneBlue)
        print(actiones)
        return oneBlue

    }
    @objc func blueThree()  -> Double {
        if oneBlue < 0.1 {
            oneBlue = 0.0
        }
        else {
            oneBlue -= 0.3
            if oneBlue < 0.1 {
                oneBlue = 0.0
            }
        }
        
        actiones.append("b3")
        
        oneBlue = round(oneBlue * 10) / 10.0
        print("Синий", oneBlue)
        blueLabel.text = String(oneBlue)
        print(actiones)
        return oneBlue

    }
    
    
    
    

}
