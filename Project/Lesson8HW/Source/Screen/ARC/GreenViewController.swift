//
//  GreenViewController.swift
//  Lesson8HW
//

//

import UIKit



class GreenViewController: UIViewController {
    let printer = Printer()  

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }

    @IBAction func showYellowScreen(_ sender: UIButton) {
        let yellowViewController = YellowViewController()
        yellowViewController.printer = printer
        navigationController?.pushViewController(yellowViewController, animated: true)
    }

    @IBAction func showBlueScreen(_ sender: Any) {
        let blueViewController = BlueViewController()
        blueViewController.printer = printer
        navigationController?.pushViewController(blueViewController, animated: true)
    }

    @IBAction func showRedScreen(_ sender: UIButton) {
        let redViewController = RedViewController()
        redViewController.printer = printer
        navigationController?.pushViewController(redViewController, animated: true)
    }
}
