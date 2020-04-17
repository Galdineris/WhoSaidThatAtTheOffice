//
//  TextFieldController.swift
//  WhoSaidThatAtTheOffice
//
//  Created by Rafael Galdino on 17/04/20.
//  Copyright © 2020 Rafael Galdino. All rights reserved.
//

import UIKit

class TextViewController: UIViewController {
    private lazy var textView: UITextField = {
        let textBox = UITextField(frame: .zero)
        textBox.translatesAutoresizingMaskIntoConstraints = false
        textBox.textAlignment = .natural
        return textBox
    }()

    private lazy var boundingBox: UIView = {
        let border = UIView(frame: .zero)
        border.layer.cornerRadius = 45/2
        border.layer.borderColor = UIColor.systemYellow.cgColor
        border.layer.borderWidth = 2
        border.clipsToBounds = true
        border.isUserInteractionEnabled = true
        border.translatesAutoresizingMaskIntoConstraints = false
        return border
    }()

    private weak var textDelegate: UITextFieldDelegate?

    init(textFieldDelegate: UITextFieldDelegate?) {
        self.textDelegate = textFieldDelegate
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(boundingBox)
        boundingBox.addSubview(textView)
        textView.delegate = textDelegate
        autoLayout()
    }

    private func autoLayout() {
        NSLayoutConstraint.activate([
            boundingBox.safeAreaLayoutGuide.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            boundingBox.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            boundingBox.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            boundingBox.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            textView.safeAreaLayoutGuide.centerYAnchor.constraint(equalTo: boundingBox.safeAreaLayoutGuide.centerYAnchor),
            textView.safeAreaLayoutGuide.centerXAnchor.constraint(equalTo: boundingBox.safeAreaLayoutGuide.centerXAnchor),
            textView.safeAreaLayoutGuide.heightAnchor.constraint(equalTo: boundingBox.safeAreaLayoutGuide.heightAnchor, multiplier: 0.9),
            textView.safeAreaLayoutGuide.widthAnchor.constraint(equalTo: boundingBox.safeAreaLayoutGuide.widthAnchor, multiplier: 0.9),
        ])
    }

    public func recoverTextValue() -> String{
        return textView.text ?? "michael"
    }
}
