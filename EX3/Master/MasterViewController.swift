//
//  MasterViewController.swift
//  EX3
//
//  Created by admin on 12/09/2022.
//

import UIKit

class MasterViewController: UIViewController, MasterPresenterDelegate {
    
    @IBOutlet private weak var lbTitle: UILabel!
    
    private lazy var presenter = MasterPresenter(view: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.loadData()
    }
    
    // MARK: - MasterPresenterView
    func updateUI(with name: String) {
        lbTitle.text = name
    }
    func updateAge(age: Int) {
        lbTitle.text = (lbTitle.text ?? "") + " \(age) tuoi"
    }
    
    func displayAmount(_ amount: Double) {
        print("Vuong", amount)
    }
    
    @IBAction private func didTapAction(_ sender: Any) {
        let amount = presenter.getAmount()
        let vc = DetailViewController.instance(amount: amount)
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension MasterViewController: DetailViewControllerDelegate {
    func detailViewController(_ vc: DetailViewController, didUpdate amount: Double) {
        presenter.updateAmount(amount)
        navigationController?.popViewController(animated: true)
    }
}
