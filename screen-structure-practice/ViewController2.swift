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

    let button = UIButton()
    button.addTarget(self, action: #selector(tap), for: .touchUpInside)
    button.setTitle("hoge", for: .normal)
    button.setTitleColor(.darkText, for: .normal)


    view.addSubview(contentView)
    view.addSubview(button)
    
    contentView.easy.layout(Edges())
    button.easy.layout(Center())
    
    
    
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
