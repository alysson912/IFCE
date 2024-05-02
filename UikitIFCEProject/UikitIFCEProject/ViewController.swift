//
//  ViewController.swift
//  UikitIFCEProject
//
//  Created by Alysson Menezes on 02/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    let scrollView = UIScrollView()
    let imageView = UIImageView(image: UIImage(named: "l2"))

    override func loadView() {
        self.view = scrollView
        view.backgroundColor = .white
        scrollView.addSubview(imageView)
        imageView.contentMode = .scaleAspectFill
        scrollView.contentSize = imageView.frame.size
        scrollView.minimumZoomScale = 0.3
        scrollView.maximumZoomScale = 0.9
        scrollView.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        imageView
    }
}
