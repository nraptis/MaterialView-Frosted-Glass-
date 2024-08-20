//
//  ViewController.swift
//  FrostedGlass
//
//  Created by Nicky Taylor on 8/19/24.
//

import UIKit

class ViewController: UIViewController {

    lazy var materialView: MaterialView = {
        let result = MaterialView(material: .ultraThick, 
                                  opacity: 0.85,
                                  color: UIColor.black.withAlphaComponent(0.5),
                                  interfaceStyle: .dark)
        result.translatesAutoresizingMaskIntoConstraints = false
        return result
    }()
    
    lazy var imageView: UIImageView = {
        let image = UIImage(named: "jackal")
        let result = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: 512.0, height: 512.0))
        result.translatesAutoresizingMaskIntoConstraints = false
        result.image = image
        result.contentMode = .scaleAspectFit
        return result
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let selfView = self.view {
            selfView.addSubview(imageView)
            selfView.addConstraints([
                imageView.leftAnchor.constraint(equalTo: selfView.leftAnchor),
                imageView.rightAnchor.constraint(equalTo: selfView.rightAnchor),
                imageView.topAnchor.constraint(equalTo: selfView.topAnchor),
                imageView.bottomAnchor.constraint(equalTo: selfView.bottomAnchor),
            ])
            
            selfView.addSubview(materialView)
            selfView.addConstraints([
                materialView.leftAnchor.constraint(equalTo: selfView.leftAnchor),
                materialView.rightAnchor.constraint(equalTo: selfView.rightAnchor),
                materialView.topAnchor.constraint(equalTo: selfView.topAnchor),
                materialView.bottomAnchor.constraint(equalTo: selfView.centerYAnchor),
            ])
        }
        
    }


}

