//
//  ChatVC.swift
//  ChatApplication
//
//  Created by Ivan Puzanov on 28.02.2023.
//

import UIKit

final class ChatVC: UIViewController {
    // MARK: - Views
    private let messageTextField = TCMessageTextField()
}

// MARK: - Lifecycle
extension ChatVC {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        configureMessageTextField()
        
        // Test branch
    }
}

// MARK: - Configure methods
private extension ChatVC {
    func configure() {
        self.view.backgroundColor = .systemBackground
    }
    
    func configureMessageTextField() {
        self.view.addSubview(messageTextField)
        
        NSLayoutConstraint.activate([
            messageTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            messageTextField.bottomAnchor.constraint(equalTo: view.keyboardLayoutGuide.topAnchor, constant: -30),
            messageTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            messageTextField.heightAnchor.constraint(equalToConstant: 46)
        ])
    }
}
