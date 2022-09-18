//
//  ViewController.swift
//  AYTV
//
//  Created by Andy on 2022/9/17.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .red
        scrollView.frame = CGRect(x: 0, y: 100, width: self.view.bounds.width, height: 60)
        scrollView.contentSize = CGSize(width: self.view.bounds.width*2, height: 60)
        scrollView.delegate = self
        scrollView.scrollsToTop = false
        return scrollView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
    }


}


extension ViewController {
    
    fileprivate func setupUI() {
        view.addSubview(scrollView)
    }
}


extension ViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //print(scrollView.contentOffset.x)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print(decelerate)
    }
}
