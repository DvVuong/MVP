//
//  DetailPresenter.swift
//  EX3
//
//  Created by admin on 12/09/2022.
//

import Foundation

protocol DetailPresenterView: AnyObject {
    func updateUI(amount: Double)
}

class DetailPresenter {
    
    private weak var view: DetailPresenterView?
    private var amount: Double
    
    init(view: DetailPresenterView, amount: Double) {
        self.view = view
        self.amount = amount
    }
    
    deinit {
        print("Vuong", "\(type(of: self))", #function)
    }
    
    func loadData() {
        view?.updateUI(amount: amount)
    }
}
