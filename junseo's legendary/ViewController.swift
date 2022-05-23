//
//  ViewController.swift
//  junseo's legendary
//
//  Created by 박준서 on 2022/05/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    lazy var sampleView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.view.addSubview(sampleView)
        sampleView.snp.makeConstraints{(make)in //.snp.makeConstraints = 위치조정
            make.width.equalTo(self.view) // View와 같은 크기의 width를 가지겠다
            make.height.equalTo(70) // 70크기의 height를 가지겠다
            make.top.equalTo(self.view.safeAreaLayoutGuide)
            //safeAreaLayoutGuide를 사용해주면 위에 있는 시간이나 배터리가 잘려보이지 않는다
            // 70크기의 height를 가졌지만 bottom으로 30 내려왔으므로 실질적으로 보이는것은 40이다.
        }
        // Do any additional setup after loading the view.
    }
}

