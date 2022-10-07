//
//  ThirdViewController.swift
//  iOS_1st_Assignment
//
//  Created by 최가연 on 2022/10/06.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private let startLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 180, y: 200, width: 500, height: 70))
        label.text = "깨요님"
        label.font = .boldSystemFont(ofSize: 19)
        return label
    }()
    
    private let HiLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 155, y: 235, width: 500, height: 70))
        label.text = "환영합니다"
        label.font = .boldSystemFont(ofSize: 22)
        return label
    }()
    
    private let newkakaoButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 20, y: 508, width: 360, height: 55))
        button.setTitle("확인", for: .normal)
        button.setTitleColor(.black,for:.normal)
        button.backgroundColor = .systemYellow
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button.addTarget(self, action: #selector(touchToFirstView), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        super.viewDidLoad()
        
        let components: [Any] =
        [newkakaoButton,startLabel,HiLabel]
        components.forEach {
            self.view.addSubview($0 as! UIView)
        }
    }
    @objc
    private func touchToFirstView(){
        self.dismiss(animated: true)

       
        
    }
}



