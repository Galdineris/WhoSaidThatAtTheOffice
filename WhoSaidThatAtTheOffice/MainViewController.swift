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
        return ImageViewController()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageController.view)
        self.addChild(imageController)
        imageController.didMove(toParent: self)
        layoutImage()
        imageController.updateImage(with: "michael")
    }

    func layoutImage() {
        NSLayoutConstraint.activate([
            imageController.view.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            imageController.view.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            imageController.view.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.3),
            imageController.view.widthAnchor.constraint(equalTo: self.view.widthAnchor)
        ])
    }
}
