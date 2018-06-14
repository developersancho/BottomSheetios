//
//  DetailViewController.swift
//  BottomSheetios
//
//  Created by developersancho on 13.06.2018.
//  Copyright © 2018 developersancho. All rights reserved.
//

import UIKit
import AppBottomActionSheet

class DetailViewController: UIViewController, HalfSheetPresentableProtocol, HalfSheetTopVCProviderProtocol {
    
    var managedScrollView: UIScrollView? {
        return nil
    }
    
    var dismissMethod: [DismissMethod] {
        return [.tap, .swipe]
    }
    
    var sheetHeight: CGFloat? = 400
    
    var topVC: UIViewController = {
        DismissView.canShow = false
        //DismissView.indicatorWidth = 25
        //DismissView.indicatorColor = UIColor.black.withAlphaComponent(0.3)
        //DismissView.indicatorSpacing = 8
        //DismissView.indicatorColor = .clear
        return DismissBarViewController.instance()!
    }()
    
    var topVCTransitionStyle: HalfSheetTopVCTransitionStyle{
        return .slide
    }
    
    
    @IBOutlet weak var containerView: UIView!{
        didSet {
            containerView.layer.cornerRadius = 14
            containerView.clipsToBounds = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func dismiss() {
        dismiss(animated: true)
    }

}

extension DetailViewController: HalfSheetAppearanceProtocol {
    
    var presentAnimationDuration: TimeInterval {
        return 0.35
    }
    
    var dismissAnimationDuration: TimeInterval {
        return 0.25
    }
}

extension UIView {
    func rounded(corners: UIRectCorner, radius: CGFloat) {
        let maskPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = maskPath.cgPath
        self.layer.mask = maskLayer
    }
}
