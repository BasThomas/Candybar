//
//  ViewController.swift
//  Candybar
//
//  Created by Bas Broek on 11/04/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var candybar: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var config: UIButton.Configuration = .plain()

        config.image = .init(systemName: "camera")
        let camera = UIButton(configuration: config)

        config.image = .init(systemName: "bookmark")
        let bookmarks = UIButton(configuration: config)

        config.image = .init(systemName: "square.and.pencil")
        let compose = UIButton(configuration: config)

        config.image = .init(systemName: "screwdriver")
        let rewind = UIButton(configuration: config)


        [camera, bookmarks, compose, rewind].forEach(candybar.addArrangedSubview)
        candybar.accessibilityTraits = .tabBar
        candybar.isAccessibilityElement = false
    }


}

