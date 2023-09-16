//
//  ViewModel.swift
//  Lab2MarianaRiosSilveiraCarvalho
//
//  Created by Mariana Rios Silveira Carvalho on 2023-09-16.
//

import Foundation

protocol ViewModelProtocol {
    func number() -> Int
    func decrease()
    func increase()
    func reset()
    func step()
}

class ViewModel: ViewModelProtocol {
    // MARK: Private Variables
    private var counter: Int
    private var stepValue: Int
    
    // MARK: Initializer
    init() {
        self.counter = 0
        self.stepValue = 1
    }
    
    // MARK: Actions Functions
    func number() -> Int {
        return self.counter
    }
    
    func decrease() {
        self.counter -= self.stepValue
    }
    
    func increase() {
        self.counter += self.stepValue
    }
    
    func reset() {
        self.counter = 0
        self.stepValue = 1
    }
    
    func step() {
        self.stepValue = 2
    }
}
