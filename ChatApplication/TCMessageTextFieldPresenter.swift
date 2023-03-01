//
//  TCMessageTextFieldPresenter.swift
//  ChatApplication
//
//  Created by Ivan Puzanov on 28.02.2023.
//

import UIKit

protocol TCMessageTextFieldProtocol {
    
}

final class TCMessageTextFieldPresenter {
    // MARK: - Delegate view
    typealias MessageTextField = TCMessageTextField & TCMessageTextFieldProtocol
    private weak var view: MessageTextField?
    
    // MARK: - Parameters
    private var textField: UITextView?
    private var isEmpty: Bool = true
}

// MARK: - Public methods
extension TCMessageTextFieldPresenter {
    func setDelegate(_ view: MessageTextField) {
        self.view = view
    }
    
    func setTextField(_ textField: UITextView) {
        self.textField = textField
    }
    
    func textFieldDidEdit() {
        
    }
}
