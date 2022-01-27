//
//  ViewController.swift
//  firstapp
//
//  Created by ryo fuj on 1/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculatorWrokings: UILabel!
    @IBOutlet weak var calculatorResults: UILabel!
    
    var workings:String=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after l oading the view.
    }
    func clearAll(){
        workings = ""
        calculatorWrokings.text = ""
        calculatorResults.text = ""
        
    }
    @IBAction func clearTap(_ sender: Any) {
        clearAll()
    }
    func addToWorkings(value:String){
        workings = workings + value
        calculatorWrokings.text = workings
    }
    @IBAction func equalsTap(_ sender: Any) {
        if(validInput()){
            let checkWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
            let expression = NSExpression(format: checkWorkingsForPercent)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: result)
            calculatorResults.text = resultString
        }
        else{
            let alert = UIAlertController(
                title: "Invalid input", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
        workings = ""
        calculatorWrokings.text = ""

    }
    func validInput() ->Bool{
        var count = 0
        var funcCharIndexs = [Int]()
        
        for char in workings{
            if(specialCharacter(char: char)){
                funcCharIndexs.append(count)
            }
            count+=1
        }
        var previous: Int = -1
        
        for index in funcCharIndexs {
            if(index == 0 ){
                return false
            }
            if(index == workings.count-1){
                return false
            }
            if(previous != -1){
                if(index - previous == 1){
                    return false
                }
            }
            previous = index
        }
        return true
    }
    func specialCharacter (char:Character)-> Bool{
        if(char == "*"){
            return true
        }
        if(char == "/"){
            return true
        }
        if(char == "-"){
            return true
        }
        if(char == "+"){
            return true
        }
        return false
    }
    
    func formatResult(result: Double) -> String{
        if(result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format:"%.0f", result)
        }
        else{
            return String(format:"%.2f", result)
        }
    }
    @IBAction func deleteTap(_ sender: Any) {
        if (!workings.isEmpty)
        {
            workings.removeLast()
            calculatorWrokings.text = workings
        }
    }
    @IBAction func percentageTap(_ sender: Any) {
        addToWorkings(value: "%")
    }
    @IBAction func divideTap(_ sender: Any) {
        addToWorkings(value: "/")
    }
    @IBAction func multiplyTap(_ sender: Any) {
        addToWorkings(value: "*")
    }
    @IBAction func subtractTap(_ sender: Any) {
        addToWorkings(value: "-")
    }
    @IBAction func addTap(_ sender: Any) {
        addToWorkings(value: "+")
    }
    @IBAction func nineTap(_ sender: Any) {
        addToWorkings(value: "9")
    }
    @IBAction func eightTap(_ sender: Any) {
        addToWorkings(value: "8")
    }
    @IBAction func sevenTap(_ sender: Any) {
        addToWorkings(value: "7")
    }
    @IBAction func sixTap(_ sender: Any) {
        addToWorkings(value: "6")
    }
    @IBAction func fiveTap(_ sender: Any) {
        addToWorkings(value: "5")
    }
    @IBAction func fourTap(_ sender: Any) {
        addToWorkings(value: "4")
    }
    @IBAction func threeTap(_ sender: Any) {
        addToWorkings(value: "3")
    }
    @IBAction func twoTap(_ sender: Any) {
        addToWorkings(value: "2")
    }
    @IBAction func oneTap(_ sender: Any) {
        addToWorkings(value: "1")
    }
    @IBAction func zeroTap(_ sender: Any) {
        addToWorkings(value: "0")
    }
    @IBAction func decimalTap(_ sender: Any) {
        addToWorkings(value: ".")
    }
}



