//
//  ViewController2.swift
//  screen-structure-practice
//
//  Created by jinsei_shima on 2019/09/12.
//  Copyright © 2019 jinsei_shima. All rights reserved.
//

import UIKit
import EasyPeasy

class ViewController2: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    title = "fuga"    
    
    let contentView = UIView()
    contentView.backgroundColor = .orange

    let button = UIButton(type: .system)
    button.addTarget(self, action: #selector(tap), for: .touchUpInside)
    button.setTitle("hoge", for: .normal)


    let label = UILabel()
    label.text = "label"
    label.textColor = .darkText


    view.addSubview(contentView)
    view.addSubview(button)
    view.addSubview(label)

    contentView.easy.layout(Edges())
    button.easy.layout(Center())
    label.easy.layout(
      Top().to(view.safeAreaLayoutGuide, .top),
      CenterX()
    )
    
    
//    hidesBottomBarWhenPushed = true
//    isTranslucent
//    automaticallyAdjustsScrollViewInsets
//    Extend edges under Opaque Bars
//    Under Top Bars
//    Under Bottom Bars
//    Under Opaque Bars
    
    extendedLayoutIncludesOpaqueBars = true
    //多分NavigationBarのどこまでViewを伸ばすかというプロパティ
    edgesForExtendedLayout = .bottom
    
  }

  @objc func tap() {

    let controller = ViewController3()
    controller.hidesBottomBarWhenPushed = true
    navigationController?.pushViewController(controller, animated: true)
  }

}
