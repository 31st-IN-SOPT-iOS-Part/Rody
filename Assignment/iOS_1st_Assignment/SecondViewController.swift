//
//  SecondViewController.swift
//  iOS_1st_Assignment
//
//  Created by 최가연 on 2022/10/06.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    private let startLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 160, width: 250, height: 30))
        label.text = "카카오톡을 시작합니다"
        label.font = .boldSystemFont(ofSize: 24)
        return label
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 40, y: 300, width: 300, height: 80))
        label.text = "이메일 또는 전화번호"
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .systemGray2
        return label
    }()
    
    private let passLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 40, y: 360, width: 300, height: 80))
        label.text = "비밀번호"
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .systemGray2
        return label
    }()
    
    private let confirmLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 40, y: 420, width: 300, height: 80))
        label.text = "비밀번호 확인"
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .systemGray2
        return label
    }()
    
    private let underline: UIView = {
        let view = UIView(frame: CGRect(x: 40, y: 360, width: 300, height: 1))
        view.backgroundColor = .systemGray2
        return view
    }()
    
    private let underline2: UIView = {
        let view = UIView(frame: CGRect(x: 40, y: 420, width: 300, height: 1))
        view.backgroundColor = .systemGray2
        return view
    }()
    
    private let underline3: UIView = {
        let view = UIView(frame: CGRect(x: 40, y: 480, width: 300, height: 1))
        view.backgroundColor = .systemGray2
        return view
    }()
    
    private let newkakaoButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 15, y: 528, width: 360, height: 55))
        button.setTitle("새로운 카카오계정 만들기", for: .normal)
        button.setTitleColor(.black,for:.normal)
        button.backgroundColor = .systemGray6
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(presentNextButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        super.viewDidLoad()
        
        let components: [Any] = [startLabel,emailLabel,passLabel,underline,underline2,newkakaoButton,confirmLabel,underline3]
        components.forEach {
            self.view.addSubview($0 as! UIView)
        }
    }

    
    private func presentToThirdVC() {
        let thirdVC = ThirdViewController()
        self.modalPresentationStyle = .formSheet
        self.present(thirdVC, animated: true) {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    @objc
    private func presentNextButton() {
        presentToThirdVC()
    }
}
