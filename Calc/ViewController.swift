//
//  ViewController.swift
//  Calc
//
//  Created by Risen on 29/12/2019.
//  Copyright © 2019 Sergei S. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    var numberFromScreen:Double = 0;
    var firstNum:Double = 0;
     var operation:Int = 0;
    var counterPoint = 0;
    var mathSign:Bool = false;
    var stillTyping:Bool=true
    var dotIsPlaced:Bool = false
    
    @IBOutlet weak var result: UILabel!
    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
        //    stillTyping = false
       //     dotIsPlaced=false
        }else{
                 result.text=result.text! + String(sender.tag)
        }
   
        numberFromScreen = Double(result.text!)!
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
    
        if result.text != "" && sender.tag != 10  && sender.tag != 15  {
        dotIsPlaced=false
            firstNum = Double(result.text!)!
        if sender.tag == 11 {
                //Деление
                      result.text = "/";
            }
           else if sender.tag == 12 {
                //Умножение
                      result.text = "X";
            }
           else if sender.tag == 13 {
                //Вычитание
                      result.text = "-";
            }
           else if sender.tag == 14 {
                //Сложение
            result.text = "+";
            
            }
//        else if sender.tag == 16 {
//            //Сложение
//            result.text = String(firstNum);
//
//            }
            operation = sender.tag
            mathSign = true;
     //       dotIsPlaced=false
        }
        else if sender.tag == 15 {
            if operation == 11 {
                result.text=String(firstNum / numberFromScreen)
            }
          else  if operation == 12 {
                result.text=String(firstNum * numberFromScreen)
            }
            else  if operation == 13 {
                result.text=String(firstNum - numberFromScreen)
            }
            else  if operation == 14 {
                result.text=String(firstNum + numberFromScreen)
            }
        
       
         
        }
//              else if sender.tag == 16 {
//            counterPoint = result.text! + String(firstNum / numberFromScreen)
//            result.text = String(counterPoint)
        
            //   result.text = result.text! + String(firstNum / numberFromScreen)
           
        
    
    
    
//       if operation == 16 {
//            result.text=String(firstNum + (numberFromScreen/10))
//            }}

   


    else if sender.tag == 10 {
            result.text = ""
            firstNum = 0
            numberFromScreen = 0
            operation = 0
        }
        
        
        
        
    }
//    @IBAction func dotButtonPressed(sender: UIButton) {
//        if stillTyping && !dotIsPlaced{
//            result.text = result.text! + String(firstNum)  + "." + String(numberFromScreen)
//            dotIsPlaced = true
//        } else if !mathSign && !dotIsPlaced{
//            result.text = "0."
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

