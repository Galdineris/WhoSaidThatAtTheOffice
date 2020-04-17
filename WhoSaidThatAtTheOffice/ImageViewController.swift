//
//  ImageViewController.swift
//  WhoSaidThatAtTheOffice
//
//  Created by Rafael Galdino on 17/04/20.
//  Copyright © 2020 Rafael Galdino. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    private lazy var imageView: UIImageView = {
        let image = UIImageView(image: nil)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode =  .scaleAspectFit
        return image
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        autoLayout()
    }

    private func autoLayout() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }

    public func updateImage(with image: UIImage) {
        imageView.image = image
    }
    public func updateImage(with imageNamed: String) {
        let image = UIImage(named: imageNamed)
        imageView.image = image
    }
}
