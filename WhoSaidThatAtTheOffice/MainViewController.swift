//
//  MainViewController.swift
//  WhoSaidThatAtTheOffice
//
//  Created by Rafael Galdino on 17/04/20.
//  Copyright © 2020 Rafael Galdino. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    private lazy var imageController: ImageViewController = {
        let controller = ImageViewController()
        return controller
    }()

    private lazy var textFieldController: TextViewController = { [weak self] in
        let controller = TextViewController(textFieldDelegate: self)
        return controller
    }()

    private lazy var labelController: TitleLabelController = {
        let controller = TitleLabelController()
        return controller
    }()

    private weak var textFieldDelegate: UITextFieldDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        textFieldDelegate = self
        view.backgroundColor = .systemGray

        view.addSubview(imageController.view)
        self.addChild(imageController)
        imageController.didMove(toParent: self)

        view.addSubview(textFieldController.view)
        self.addChild(textFieldController)
        textFieldController.didMove(toParent: self)

        layoutImage()
        layoutText()

        imageController.updateImage(with: "michael")
    }

    private func layoutImage() {
        NSLayoutConstraint.activate([
            imageController.view.safeAreaLayoutGuide.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            imageController.view.safeAreaLayoutGuide.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            imageController.view.safeAreaLayoutGuide.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3),
            imageController.view.safeAreaLayoutGuide.widthAnchor.constraint(equalTo: self.view.widthAnchor)
        ])
    }

    private func layoutText() {
        NSLayoutConstraint.activate([
            textFieldController.view.safeAreaLayoutGuide.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            textFieldController.view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            textFieldController.view.safeAreaLayoutGuide.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.1),
            textFieldController.view.safeAreaLayoutGuide.widthAnchor.constraint(equalTo: self.view.layoutMarginsGuide.widthAnchor)
        ])
    }

    private func layoutLabel() {
        NSLayoutConstraint.activate([
            labelController.view.safeAreaLayoutGuide.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            labelController.view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20),
            labelController.view.safeAreaLayoutGuide.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.2),
            labelController.view.safeAreaLayoutGuide.widthAnchor.constraint(equalTo: self.view.layoutMarginsGuide.widthAnchor)
        ])
    }

    public func updatePrediction(with text:String) {
        
    }

}

extension MainViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
}
