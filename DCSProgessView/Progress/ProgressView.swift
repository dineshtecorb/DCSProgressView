//
//  ProgressView.swift
//  DCSProgessView
//

import Foundation
import UIKit

class ProgressView{
    static let shared = ProgressView()
    
    // MARK: -  Setup progressViews
    
    func setupProgressViews(progressView:DCSProgressView,progressColor:UIColor,progressBackgroundolor:UIColor,progress:Double){
        progressView.backgroundColor = progressBackgroundolor
        progressView.color = progressColor
        progressView.progress = progress
        progressView.layer.cornerRadius = progressView.frame.size.height/2
        progressView.layer.masksToBounds = true
    }
}
