//
//  TitleLabelController.swift
//  WhoSaidThatAtTheOffice
//
//  Created by Rafael Galdino on 17/04/20.
//  Copyright © 2020 Rafael Galdino. All rights reserved.
//

import UIKit

class TitleLabelController: UIViewController {
    private lazy var labelView: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.textColor = .black
        label.text = "TYPE A PHRASE"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelView)
        autoLayout()
    }

    private func autoLayout() {
        NSLayoutConstraint.activate([
            labelView.topAnchor.constraint(equalTo: view.topAnchor),
            labelView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            labelView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            labelView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }

    public func updateLabel(with text: String) {
        labelView.text = text
    }
}
