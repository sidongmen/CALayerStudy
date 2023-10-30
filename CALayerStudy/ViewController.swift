//
//  ViewController.swift
//  CALayerStudy
//
//  Created by kawani on 2023/10/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.backgroundColor = UIColor.blue.cgColor
    }

 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        var touchPointList: [CGPoint] = []
        for point in touches {
            touchPointList.append(point.location(in: self.view))
        }
        
        guard let point = touchPointList.first else { return }
        drawSnow(point)
        
    }
}

extension ViewController {
    func drawSnow(_ point: CGPoint) {
        let layer = CALayer()
        let r: CGFloat = 20.0
        let x: CGFloat = point.x - (r / 2)
        let y: CGFloat = point.y - (r / 2)
        layer.frame = CGRect(x: x, y: y, width: r, height: r)
        layer.cornerRadius = r / 2
        layer.backgroundColor = UIColor.white.cgColor
        view.layer.addSublayer(layer)
    }
}

