//
//  Presenter.swift
//  EX3
//
//  Created by admin on 12/09/2022.
//

import Foundation

protocol PresenterView: AnyObject {
    func updateView(count: Int)
    
}
class Presenter {
    private var timesTapped = 0
    private var view: PresenterView?
    init(with view: PresenterView) {
        self.view = view
    }
   func updateCount(){
        timesTapped += 1
        self.view?.updateView(count: timesTapped)
        //print(timesTapped)
    }
    
}
