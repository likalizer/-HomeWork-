//
//  Logger.swift
//  Lesson8HW
//

//

import Foundation

}

class Printer {
    
    weak var delegate: PrintableDelegate?
    private var timer: Timer?
    private var seconds: Int = 0
    
    func startPrinting() {
        stop()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
    }
    
    func stop() {
        timer?.invalidate()
        timer = nil
    }
    
    @objc private func timerAction() {
        guard let delegate = delegate else {
            stop()
            return
        }
        
        let secondsText = "\(seconds) секунд"
        let textToPrint = delegate.textToPrint()
        print("\(textToPrint) \(secondsText)")
        seconds += 1
    }
}

     // Перепровить правильно ли срабатівает логика 
