//
//  ViewController.swift
//  Sprint 3 - Counter
//
//  Created by Angelina Kostogryzova on 18.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var historyTextView: UITextView!
    @IBOutlet weak var counter: UILabel!
    
    private var internalCounter: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }

    @IBAction func earseTapped(_ sender: UIButton) {
        internalCounter = 0
        counter.text = "Значение счетчика: 0"
        historyTextView.text += "\n \(Date()): значение сброшено"
    }
    
    @IBAction func minusTapped(_ sender: UIButton) {
        guard internalCounter != 0 else {
            historyTextView.text += "\n \(Date()): попытка уменьшить значение счётчика ниже 0"
            return
        }
        internalCounter -= 1
        counter.text = "Значение счетчика: \(internalCounter)"
        historyTextView.text += "\n \(Date()): значение изменено на -1"
    }
    
    @IBAction func plusTapped(_ sender: UIButton) {
        internalCounter += 1
        counter.text = "Значение счетчика: \(internalCounter)"
        historyTextView.text += "\n \(Date()): значение изменено на +1"
    }
    
}

