//
//  TCMessageTextField.swift
//  ChatApplication
//
//  Created by Ivan Puzanov on 28.02.2023.
//

import UIKit

final class TCMessageTextField: UIView {
    // MARK: - Parameters
    private let presenter   = TCMessageTextFieldPresenter()
    
    // MARK: - Views
    private let stackView   = UIStackView()
    private let textView    = UITextView()
    private let sendButton  = UIButton()
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        configureSendButton()
        configureTextView()
        
        bindToPresenter()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Event methods
private extension TCMessageTextField {
    @objc
    func textFieldDidChange() {
        presenter.textFieldDidEdit()
    }
    
    func bindToPresenter() {
        self.presenter.setDelegate(self)
        self.presenter.setTextField(textView)
    }
}

// MARK: - Configure methods
private extension TCMessageTextField {
    func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.borderWidth   = 1
        layer.borderColor   = UIColor.systemGray5.cgColor
        layer.cornerRadius  = 20
        layer.cornerCurve   = .continuous
    }
    
    func configureSendButton() {
        addSubview(sendButton)
        sendButton.translatesAutoresizingMaskIntoConstraints = false
        
        sendButton.setImage(.init(systemName: "arrow.up.circle.fill"), for: .normal)
        
        NSLayoutConstraint.activate([
            sendButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            sendButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            sendButton.widthAnchor.constraint(equalToConstant: 23),
            sendButton.heightAnchor.constraint(equalToConstant: 23)
        ])
    }
    
    func configureTextView() {
        addSubview(textView)
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        textView.font = .systemFont(ofSize: 15, weight: .regular)
        textView.isScrollEnabled = false
        
        NSLayoutConstraint.activate([
            textView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            textView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            textView.trailingAnchor.constraint(equalTo: sendButton.leadingAnchor, constant: -10),
            textView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
    }
}

// MARK: -
extension TCMessageTextField: TCMessageTextFieldProtocol {
    
}
