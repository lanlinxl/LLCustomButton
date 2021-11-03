//
//  ViewController.swift
//  Demon
//
//  Created by lzwk_lanlin on 2021/11/1.
//

import UIKit

class ViewController: UIViewController {
    
    var customButton = LLCustomButton()
    let titleList = ["文本左图片右","文本右图片左","文本上图片下","文本下图片上","添加圆角","添加阴影","添加渐变色","添加高亮色","移除文本","移除圆角","移除图片","移除阴影","移除渐变色","重置"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0 ..< titleList.count {
            let button = LLCustomButton()
            view.addSubview(button)
            button.tag = 100 + i
            button.setTitle("\(titleList[i])")
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.black.cgColor
            button.titleLabel.textColor = .black
            button.hightlightBackColor = .gray
            button.frame = CGRect(x: 10, y: 100 + i * 44, width: 120, height: 44)
            button.addTarget(self, action: #selector(buttonClick(sender:)) , for: .touchUpInside)
        }
        
        view.addSubview(customButton)
        customButton.backgroundColor = .gray
        customButton.frame = CGRect(x: 160, y: view.frame.size.height/2 - 40, width: 150, height: 120)
    
        
    }
    
    @objc func buttonClick(sender: UIButton){
        let title = titleList[sender.tag - 100]
        switch title{
        case "文本左图片右":
            customButton.setTitle("文本呀")
            customButton.layout = .titleLeft
            customButton.setImage(UIImage(named: "icon_chatroom_class"))
        case "文本右图片左":
            customButton.setTitle("文本呀")
            customButton.layout = .titleRight
            customButton.setImage(UIImage(named: "icon_chatroom_class"))
        case "文本上图片下":
            customButton.setTitle("文本呀")
            customButton.layout = .titleTop
            customButton.setImage(UIImage(named: "icon_chatroom_class"))
        case "文本下图片上":
            customButton.setTitle("文本呀")
            customButton.setTitleColor(UIColor.black)
            customButton.layout = .titleBottom
            customButton.setImage(UIImage(named: "icon_chatroom_class"))
        case "添加圆角":
            customButton.layer.cornerRadius = 20
        case "添加阴影":
            customButton.layer.shadowRadius = 20
            customButton.layer.shadowOffset = CGSize(width: 10, height: 20)
            customButton.layer.shadowColor = UIColor.red.cgColor
            customButton.layer.shadowOpacity = 1
        case "添加渐变色":
            customButton.gradientColor(colors: [UIColor.red.cgColor,UIColor.blue.cgColor])
        case "添加高亮色":
            customButton.hightlightTextColor = .white //文本
            customButton.hightlightBackColor = .orange //normal
            customButton.gradientHightlightBackColors = [UIColor.yellow.cgColor,UIColor.green.cgColor]//渐变
        case "移除文本":
            customButton.titleLabel.text = nil
        case "移除圆角":
            customButton.layer.cornerRadius = 0
            customButton.updateLayout()
        case "移除图片":
            customButton.imageView.image = nil
        case "移除阴影":
            customButton.layer.shadowColor = UIColor.clear.cgColor
        case "移除渐变色":
            customButton.removeGradientLayer()
        case "重置":
            customButton.titleLabel.text = nil
            customButton.imageView.image = nil
            customButton.layer.shadowRadius = 0
            customButton.layer.shadowColor = nil
            customButton.layer.shadowOpacity = 0
            customButton.layer.shadowOffset = CGSize(width: 0, height: 0)
            customButton.layer.cornerRadius = 0
            customButton.gradientHightlightBackColors = [nil]
            customButton.hightlightTextColor = nil
            customButton.removeGradientLayer()
            customButton.updateLayout()
     
        default:
            break
        }
    }
}
