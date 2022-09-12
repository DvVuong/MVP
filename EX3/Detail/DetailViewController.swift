//
//  DetailViewController.swift
//  EX3
//
//  Created by admin on 12/09/2022.
//

import UIKit

protocol DetailViewControllerDelegate: AnyObject {
    func detailViewController(_ vc: DetailViewController, didUpdate amount: Double)
}

class DetailViewController: UIViewController, DetailPresenterView {
    
    static func instance(amount: Double) -> DetailViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        vc.presenter = DetailPresenter(view: vc, amount: amount)
        return vc
    }

    weak var delegate: DetailViewControllerDelegate?
    
    @IBOutlet private weak var lbAmount: UILabel!
    
    private var presenter: DetailPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.loadData()
    }
    
    deinit {
        print("Vuong", "\(type(of: self))", #function)
    }

    // MARK: - DetailPresenterView
    func updateUI(amount: Double) {
        lbAmount.text = "\(amount)"
    }

    
    @IBAction private func didTapCalculator(_ sender: UIButton) {
        delegate?.detailViewController(self, didUpdate: 2000)
    }
}
