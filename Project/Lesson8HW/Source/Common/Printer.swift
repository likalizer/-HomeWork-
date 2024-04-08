//
//  Logger.swift
//  Lesson8HW
//

//

import Foundation

class Printer {
    weak var delegate: Printable?
    private var timer: Timer?
    private var seconds: Int = 0

    func startPrinting() {
        stop() // Остановить предыдущий таймер, если он активен
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            self?.timerAction()
        }
    }

    func stop() {
        timer?.invalidate()
        timer = nil
        seconds = 0
    }

    @objc private func timerAction() {
        guard let textToPrint = delegate?.textToPrint() else {
            stop()
            return
        }
        let secondsText = "\(seconds) секунд"
        print("\(textToPrint) \(secondsText)")
        seconds += 1
    }
}
