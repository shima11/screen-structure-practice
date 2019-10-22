//
//  ViewController3.swift
//  screen-structure-practice
//
//  Created by jinsei_shima on 2019/09/12.
//  Copyright © 2019 jinsei_shima. All rights reserved.
//

import UIKit
import EasyPeasy

class ViewController3: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    title = "poko"

    view.backgroundColor = .white


    let button = UIButton(type: .system)
    button.addTarget(self, action: #selector(tap), for: .touchUpInside)
    button.setTitle("hoge", for: .normal)

    view.addSubview(button)

    button.easy.layout(Center())

//    hidesBottomBarWhenPushed = true
//    tabBarController?.tabBar.isHidden = true

    navigationController?.navigationBar.isTranslucent = false
    tabBarController?.tabBar.isTranslucent = false
  }

  @objc func tap() {

    if let navigationControll = navigationController {
      navigationController?.popViewController(animated: true)
    } else {
      dismiss(animated: true, completion: nil)
    }

  }

}
