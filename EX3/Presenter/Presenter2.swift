//
//  Presenter2.swift
//  EX3
//
//  Created by admin on 12/09/2022.
//

import Foundation

protocol PresenterView2: AnyObject {
    func sendData(data: Int)
}
class Presenter2 {
    private var view: PresenterView2?
    init(with view: PresenterView2) {
        self.view = view
    }
    func moveScreen(){
        
    }
    
}
    



