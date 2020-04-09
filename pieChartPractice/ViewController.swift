//  ViewController.swift
//  pieChartPractice
//
//  Created by 林祐辰 on 2020/4/8.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pieChart: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
          let protoLength :CGFloat = 110
          let frameLength :CGFloat = 7
          let initCircleStartXY :CGFloat = 40
          
          let initiCircle = UIBezierPath(ovalIn:CGRect(x:initCircleStartXY,y:initCircleStartXY,width:protoLength*2 ,height:protoLength*2))
          
        
          
          let circleShape = CAShapeLayer()
          circleShape.path = initiCircle.cgPath
          circleShape.fillColor = UIColor.clear.cgColor
          circleShape.strokeColor = UIColor.black.cgColor
          circleShape.lineWidth = frameLength
          
  
          let firstPercentage: CGFloat = 36
          let secondPercentage: CGFloat = 44
          let thirdPercentage: CGFloat = 60
          
                  
          let oneDegree = CGFloat.pi/180
          let firstAngle : CGFloat = 270
                          
          let firstPercentageWidth = UIBezierPath(arcCenter:CGPoint(x:initCircleStartXY+protoLength,y:initCircleStartXY+protoLength),radius:protoLength ,startAngle: oneDegree*firstAngle,endAngle: oneDegree * (firstAngle+(firstPercentage/100)*360),clockwise:true)
          let secondPercentageWidth = UIBezierPath(arcCenter:CGPoint(x:initCircleStartXY+protoLength,y:initCircleStartXY+protoLength),radius:protoLength ,startAngle:oneDegree * (firstAngle+(firstPercentage/100)*360),endAngle: oneDegree * (firstAngle+(secondPercentage/100)*360),clockwise:true)
          let thirdPercentageWidth = UIBezierPath(arcCenter:CGPoint(x:initCircleStartXY+protoLength,y:initCircleStartXY+protoLength),radius:protoLength ,startAngle:oneDegree * (firstAngle+(secondPercentage/100)*360),endAngle: oneDegree * (firstAngle+(thirdPercentage/100)*360),clockwise:true)
          let fourthPercentageWidth = UIBezierPath(arcCenter:CGPoint(x:initCircleStartXY+protoLength,y:initCircleStartXY+protoLength),radius:protoLength ,startAngle:oneDegree * (firstAngle+(thirdPercentage/100)*360),endAngle: oneDegree * (firstAngle+360),clockwise:true)

  
         let firstPercentageShape = CAShapeLayer()
         firstPercentageShape.path = firstPercentageWidth.cgPath
         firstPercentageShape.fillColor =  UIColor.clear.cgColor
         firstPercentageShape.strokeColor = UIColor(red: 47/255 , green: 128/255, blue: 246/255, alpha:1).cgColor
         firstPercentageShape.lineWidth = frameLength



         let secondPercentageShape = CAShapeLayer()
         secondPercentageShape.path = secondPercentageWidth.cgPath
         secondPercentageShape.fillColor = UIColor.clear.cgColor
         secondPercentageShape.strokeColor = UIColor(red: 102/255 , green: 216/255, blue: 105/255, alpha:1).cgColor
         secondPercentageShape.lineWidth = frameLength


         let thirdPercentageShape = CAShapeLayer()
         thirdPercentageShape.path = thirdPercentageWidth.cgPath
         thirdPercentageShape.fillColor = UIColor.clear.cgColor
         thirdPercentageShape.strokeColor = UIColor(red: 243/255 , green: 204/255, blue: 71/255, alpha:1).cgColor
         thirdPercentageShape.lineWidth = frameLength

         let fourthPercentageShape = CAShapeLayer()
         fourthPercentageShape.path = fourthPercentageWidth.cgPath
         fourthPercentageShape.fillColor = UIColor.clear.cgColor
         fourthPercentageShape.strokeColor = UIColor(red: 84/255 , green: 92/255, blue: 219/255, alpha:1).cgColor
         fourthPercentageShape.lineWidth = frameLength
        
        
        let walletLabel = UILabel(frame: CGRect(x: initCircleStartXY, y: initCircleStartXY-frameLength*6, width:protoLength*2, height: protoLength*2))
           walletLabel.textAlignment = .center
           walletLabel.text = "My Expense"
           walletLabel.font = UIFont.systemFont(ofSize: 18)
        
        let moneyLabel = UILabel(frame: CGRect(x: initCircleStartXY, y: initCircleStartXY, width:protoLength*2, height: protoLength*2))
           moneyLabel.textAlignment = .center
           moneyLabel.text = "$1,2345.00"
          moneyLabel.font = UIFont.boldSystemFont(ofSize:29)
        
        
        let monthLabel = UILabel(frame: CGRect(x: initCircleStartXY, y: initCircleStartXY+frameLength*6, width:protoLength*2, height: protoLength*2))
        monthLabel.textAlignment = .center
        monthLabel.text = "January"
        monthLabel.font = UIFont.systemFont(ofSize: 16)
                  
        
         pieChart.layer.addSublayer(circleShape)
         pieChart.layer.addSublayer(firstPercentageShape)
         pieChart.layer.addSublayer(secondPercentageShape)
         pieChart.layer.addSublayer(thirdPercentageShape)
         pieChart.layer.addSublayer(fourthPercentageShape)
         pieChart.addSubview(walletLabel)
        pieChart.addSubview(moneyLabel)
         pieChart.addSubview(monthLabel)

    }


}

