//
//  DCSProgessView.swift
//  DCSProgessView
//

import Foundation
import UIKit

class DCSProgressView: UIView {
        
    // MARK: - progess background color
    var color: UIColor = UIColor.red
    
    
    // MARK: - ProgessView progess 0.1% to 100%
    var progress: CGFloat = 0.0 {
        
        didSet {
            setNeedsDisplay()
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        //MARK: - Set progess on progressView
        var progress = self.progress
        progress = progress > 1.0 ? progress / 100 : progress
        
        //MARK: - Progress roundCorner
        self.layer.cornerRadius = self.frame.height / 2.0
        
        let margin: CGFloat = 0
        var width = (self.frame.width - margin)  * progress
        let height = self.frame.height - margin
        
        if (width < height) {
            width = height
        }
        
        let pathRef = UIBezierPath(roundedRect: CGRect(x: margin / 2.0, y: margin / 2.0, width: width, height: height), cornerRadius: height / 2.0)
        if self.progress != 0.0{
           color.setFill()
        }else{
            UIColor.clear.setFill()
        }
        pathRef.fill()
        UIColor.clear.setStroke()
        pathRef.stroke()
        pathRef.close()
    }
}

