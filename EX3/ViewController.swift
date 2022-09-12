//
//  ViewController.swift
//  EX3
//
//  Created by admin on 09/09/2022.
//

import UIKit


class ViewController: UIViewController {
    private var pesenter: Presenter?
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private var button: UIButton!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? ViewController1 {
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupButton()
    }
    private func setupButton(){
        button.addTarget(self, action: #selector(tapOnMe), for: .touchUpInside)
    }
    @objc func tapOnMe(){
//        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "aScreen")
//        navigationController?.pushViewController(vc, animated: true)
//
//        //present(vc, animated: true)
        pesenter?.updateCount()
        
    }
}
extension ViewController: PresenterView {
    func updateView(count: Int) {
        label.text = "\(count)"
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "aScreen")
        navigationController?.pushViewController(vc, animated: true)
    }
}
    

