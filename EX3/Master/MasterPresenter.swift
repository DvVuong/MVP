//
//  MasterPresenter.swift
//  EX3
//
//  Created by admin on 12/09/2022.
//

import Foundation

protocol MasterPresenterDelegate: AnyObject {
    func updateUI(with name: String)
    func updateAge(age: Int)
    func displayAmount(_ amount: Double)
}

class MasterPresenter {
    
    private weak var view: MasterPresenterDelegate?
    
    private var age: Int = 0
    
    init(view: MasterPresenterDelegate) {
        self.view = view
    }
    
    func loadData() {
        view?.updateUI(with: "Vuong")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.calculatorAge()
        }
    }
    
    func getAmount() -> Double {
        return 100
    }
    
    func updateAmount(_ amount: Double) {
        view?.displayAmount(amount)
    }
    
    private func calculatorAge() {
        if age <= 0 {
            age = 18
            view?.updateAge(age: age)
        }
    }
}
