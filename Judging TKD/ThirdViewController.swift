//
//  ThirdViewController.swift
//  Judging TKD
//
//  Created by Apple on 18.03.2024.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    let redView = UIView()
    var redScore = UILabel()
    
    var blueScore = UILabel()
    let blueView = UIView()
    
    
    var sliderBlueOne = UISlider()
    var labelScoreBlueOne = UILabel()
    
    var sliderBlueTwo = UISlider()
    var labelScoreBlueTwo = UILabel()
    
    var sliderBlueThree = UISlider()
    var labelScoreBlueThree = UILabel()
    
    
    
    
    var sliderRedOne = UISlider()
    var labelScoreRedOne = UILabel()
    
    var sliderRedTwo = UISlider()
    var labelScoreRedTwo = UILabel()
    
    var sliderRedThree = UISlider()
    var labelScoreRedThree = UILabel()
    
    
    var roundedValue1: Double = 0.0
    var roundedValue2: Double = 0.0
    var roundedValue3: Double = 0.0
    
    
    let updateButton = UIButton() //обновить
    let deleteButton = UIButton() //удалить последние данные
    
    var array1red: [Double] = []
    var array2red: [Double] = []
    var array3red: [Double] = []
    
    var array1blue: [Double] = []
    var array2blue: [Double] = []
    var array3blue: [Double] = []
    
    
    let nxtButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        
        nxtButton.frame = CGRect(x: (view.frame.size.width / 2), y: (view.frame.size.width / 10 * 8), width: 50, height: 50)
//        nxtButton.
        
        
        updateButton.frame = CGRect(x: (view.frame.size.width / 10), y: (view.frame.size.height / 10), width: (view.frame.size.width / 5), height: (view.frame.size.height / 5))
        updateButton.backgroundColor = .green
        updateButton.addTarget(self, action: #selector(updateScore), for: .touchUpInside)
        updateButton.setTitle("Обновить результат", for: .normal)
        
        
        deleteButton.frame = CGRect(x: (view.frame.size.width / 10 * 7), y: (view.frame.size.height / 10), width: (view.frame.size.width / 4), height: (view.frame.size.height / 5))
        deleteButton.backgroundColor = .red
        deleteButton.addTarget(self, action: #selector(deleteAl), for: .touchUpInside)
        deleteButton.setTitle("удалить результат", for: .normal)
        deleteButton.isHidden = true
        
        
        redScore.frame = CGRect(x: (view.frame.size.width / 10 * 3), y: (view.frame.size.height / 10), width: (view.frame.size.width / 10 * 2), height: (view.frame.size.height / 5))
        redScore.text = String(redScoreON + redTechnic)
        redScore.textAlignment = .center
        redScore.textColor = .white
        

        blueScore.frame = CGRect(x: (view.frame.size.width / 10 * 5), y: (view.frame.size.height / 10), width: (view.frame.size.width / 10 * 2), height: view.frame.size.height / 5 - 1)
        blueScore.text = String(blueScoreON)
        blueScore.textAlignment = .center
 
        
        redView.frame = CGRect(x: (view.frame.size.width / 10 * 3), y: (view.frame.size.height / 10), width: (view.frame.size.width / 10 * 2), height: (view.frame.size.height / 5))
        redView.backgroundColor = .red
        view.addSubview(redView)
        
        blueView.frame = CGRect(x: (view.frame.size.width / 10 * 5), y: (view.frame.size.height / 10), width: (view.frame.size.width / 10 * 2), height: view.frame.size.height / 5 - 1)
        blueView.backgroundColor = .blue
        view.addSubview(blueView)
        
 
        

        
        labelScoreBlueOne.frame = CGRect(x: (view.frame.size.width / 10 * 6 - 20), y: (view.frame.size.height / 10 * 4), width: (view.frame.size.width / 10), height: 50)
        labelScoreBlueOne.text = "0.5"
        labelScoreBlueOne.textColor = .blue
        
        
        sliderBlueOne.frame = CGRect(x: (view.frame.size.width / 10 * 7 - 60), y: (view.frame.size.height / 10 * 4), width: (view.frame.size.width / 20 * 5), height: 50)
        sliderBlueOne.minimumValue = 0.5
        sliderBlueOne.maximumValue = 2.0
        sliderBlueOne.value = 0.5
        sliderBlueOne.minimumTrackTintColor = UIColor.red
        sliderBlueOne.maximumTrackTintColor = UIColor.gray
        sliderBlueOne.thumbTintColor = UIColor.blue
        sliderBlueOne.addTarget(self, action: #selector(sliderValueChangedOneBlue), for: .valueChanged)
        
        
        
        labelScoreBlueTwo.frame = CGRect(x: (view.frame.size.width / 10 * 6 - 20), y: (view.frame.size.height / 10 * 6), width: (view.frame.size.width / 20 * 5), height: 50)
        labelScoreBlueTwo.text = "0.5"
        labelScoreBlueTwo.textColor = .blue
        
        
        sliderBlueTwo.frame = CGRect(x: (view.frame.size.width / 10 * 7 - 60), y: (view.frame.size.height / 10 * 6), width: (view.frame.size.width / 20 * 5), height: 50)
        sliderBlueTwo.minimumValue = 0.5
        sliderBlueTwo.maximumValue = 2.0
        sliderBlueTwo.value = 0.5
        sliderBlueTwo.minimumTrackTintColor = UIColor.red
        sliderBlueTwo.maximumTrackTintColor = UIColor.gray
        sliderBlueTwo.thumbTintColor = UIColor.blue
        sliderBlueTwo.addTarget(self, action: #selector(sliderValueChangedTwoBlue), for: .valueChanged)
        
        
        
        labelScoreBlueThree.frame = CGRect(x: (view.frame.size.width / 10 * 6 - 20), y: (view.frame.size.height / 10 * 8), width: (view.frame.size.width / 20 * 5), height: 50)
        labelScoreBlueThree.text = "0.5"
        labelScoreBlueThree.textColor = .blue
        
        
        sliderBlueThree.frame = CGRect(x: (view.frame.size.width / 10 * 7 - 60), y: (view.frame.size.height / 10 * 8), width: (view.frame.size.width / 20 * 5), height: 50)
        sliderBlueThree.minimumValue = 0.5
        sliderBlueThree.maximumValue = 2.0
        sliderBlueThree.value = 0.5
        sliderBlueThree.minimumTrackTintColor = UIColor.red
        sliderBlueThree.maximumTrackTintColor = UIColor.gray
        sliderBlueThree.thumbTintColor = UIColor.blue
        sliderBlueThree.addTarget(self, action: #selector(sliderValueChangedThreeBlue), for: .valueChanged)
        
        
        
        
        view.addSubview(labelScoreBlueOne)
        view.addSubview(sliderBlueOne)
        view.addSubview(labelScoreBlueTwo)
        view.addSubview(sliderBlueTwo)
        view.addSubview(labelScoreBlueThree)
        view.addSubview(sliderBlueThree)
        
        
        
        
        //fhgsdfgsdkufhsdkfsdfdsftyfytyggytfkhvhjguyj
        
        
        
        
        labelScoreRedOne.frame = CGRect(x: (view.frame.size.width / 10 * 4 - 20), y: (view.frame.size.height / 10 * 4), width: (view.frame.size.width / 10), height: 50)
        labelScoreRedOne.text = "0.5"
        labelScoreRedOne.textColor = .red
        
        
        sliderRedOne.frame = CGRect(x: (view.frame.size.width / 10), y: (view.frame.size.height / 10 * 4), width: (view.frame.size.width / 20 * 5), height: 50)
        sliderRedOne.minimumValue = 0.5
        sliderRedOne.maximumValue = 2.0
        sliderRedOne.value = 0.5
        sliderRedOne.minimumTrackTintColor = UIColor.blue
        sliderRedOne.maximumTrackTintColor = UIColor.gray
        sliderRedOne.thumbTintColor = UIColor.red
        sliderRedOne.addTarget(self, action: #selector(sliderValueChangedOneRed), for: .valueChanged)
        
        
        
        labelScoreRedTwo.frame = CGRect(x: (view.frame.size.width / 10 * 4 - 20), y: (view.frame.size.height / 10 * 6), width: (view.frame.size.width / 20 * 5), height: 50)
        labelScoreRedTwo.text = "0.5"
        labelScoreRedTwo.textColor = .red
        
        
        sliderRedTwo.frame = CGRect(x: (view.frame.size.width / 10), y: (view.frame.size.height / 10 * 6), width: (view.frame.size.width / 20 * 5), height: 50)
        sliderRedTwo.minimumValue = 0.5
        sliderRedTwo.maximumValue = 2.0
        sliderRedTwo.value = 0.5
        sliderRedTwo.minimumTrackTintColor = UIColor.blue
        sliderRedTwo.maximumTrackTintColor = UIColor.gray
        sliderRedTwo.thumbTintColor = UIColor.red
        sliderRedTwo.addTarget(self, action: #selector(sliderValueChangedTwoRed), for: .valueChanged)
        
        
        
        labelScoreRedThree.frame = CGRect(x: (view.frame.size.width / 10 * 4 - 20), y: (view.frame.size.height / 10 * 8), width: (view.frame.size.width / 20 * 5), height: 50)
        labelScoreRedThree.text = "0.5"
        labelScoreRedThree.textColor = .red
        
        
        sliderRedThree.frame = CGRect(x: (view.frame.size.width / 10), y: (view.frame.size.height / 10 * 8), width: (view.frame.size.width / 20 * 5), height: 50)
        sliderRedThree.minimumValue = 0.5
        sliderRedThree.maximumValue = 2.0
        sliderRedThree.value = 0.5
        sliderRedThree.minimumTrackTintColor = UIColor.blue
        sliderRedThree.maximumTrackTintColor = UIColor.gray
        sliderRedThree.thumbTintColor = UIColor.red
        sliderRedThree.addTarget(self, action: #selector(sliderValueChangedThreeRed), for: .valueChanged)
        
        view.addSubview(sliderRedThree)
        view.addSubview(labelScoreRedThree)
        
        view.addSubview(sliderRedTwo)
        view.addSubview(labelScoreRedTwo)
        
        view.addSubview(sliderRedOne)
        view.addSubview(labelScoreRedOne)
        
        view.addSubview(redScore)
        view.addSubview(blueScore)

        view.addSubview(updateButton)
        view.addSubview(deleteButton)
    }

    
    @objc func sliderValueChangedOneRed(sender: UISlider) -> Double {
        let roundedValue = round(sender.value * 10) / 10.0
        labelScoreRedOne.text = String(roundedValue)
        redScore.text = String(redScoreON)
        array1red.append(Double(roundedValue))
        return redTechnic
    }
    @objc func sliderValueChangedTwoRed(sender: UISlider) -> Double {
        let roundedValue = round(sender.value * 10) / 10.0
        labelScoreRedTwo.text = String(roundedValue)
        redScore.text = String(redScoreON)
        array2red.append(Double(roundedValue))
        return redTechnic
    }
    @objc func sliderValueChangedThreeRed(sender: UISlider) -> Double {
        let roundedValue = round(sender.value * 10) / 10.0
        labelScoreRedThree.text = String(roundedValue)
        redScore.text = String(redScoreON)
        array3red.append(Double(roundedValue))
        return redTechnic
    }
    
    
    
    @objc func sliderValueChangedOneBlue(sender: UISlider) -> Double {
        let roundedValue = round(sender.value * 10) / 10.0
        labelScoreBlueOne.text = String(roundedValue)
        blueScore.text = String(blueScoreON)
        array1blue.append(Double(roundedValue))
        return blueTechnic
    }
    @objc func sliderValueChangedTwoBlue(sender: UISlider) -> Double {
        let roundedValue = round(sender.value * 10) / 10.0
        labelScoreBlueTwo.text = String(roundedValue)
        redScore.text = String(blueScoreON)
        array2blue.append(Double(roundedValue))
        return blueTechnic
    }
    @objc func sliderValueChangedThreeBlue(sender: UISlider) -> Double {
        let roundedValue = round(sender.value * 10) / 10.0
        labelScoreBlueThree.text = String(roundedValue)
        redScore.text = String(blueScoreON)
        array3blue.append(Double(roundedValue))
        return blueTechnic
    }
    
    
    
    
    @objc func updateScore() {
        redTechnic += array1red.last ?? 0.5
        redTechnic += array2red.last ?? 0.5
        redTechnic += array3red.last ?? 0.5
        
        
        blueTechnic += array1blue.last ?? 0.5
        blueTechnic += array2blue.last ?? 0.5
        blueTechnic += array3blue.last ?? 0.5
        
        let ocruglenieRed = round((redScoreON + redTechnic) * 10) / 10.0
        let ocruglenieBlue = round((blueScoreON + blueTechnic) * 10) / 10.0
        
        redScore.text = String(ocruglenieRed)
        blueScore.text = String(ocruglenieBlue)
        deleteButton.isHidden = false
        updateButton.isHidden = true
    }
    @objc func deleteAl() {
        redTechnic = 0.0
        blueTechnic = 0.0
        deleteButton.isHidden = true
        updateButton.isHidden = false
    }

}
