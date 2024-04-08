//
//  BlueViewController.swift
//  Lesson8HW
//

//


import UIKit

class BlueViewController: UIViewController, Printable {
    var printer: Printer!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightBlue
        setupUI()
        setupPrinter()
    }

    func textToPrint() -> String {
        return "🚙 - синє таксі у дорозі"
    }

    private func setupUI() {
        let taxiLabel = UILabel()
        taxiLabel.text = "🚙"
        taxiLabel.font = .systemFont(ofSize: 200.0)
        taxiLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(taxiLabel)
        taxiLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        taxiLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    private func setupPrinter() {
        printer = Printer()
        printer.delegate = self
        printer.startPrinting()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printer.stop()
    }
}
