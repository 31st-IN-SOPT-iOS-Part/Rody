//
//  FirstViewController.swift
//  iOS_1st_Assignment
//
//  Created by 최가연 on 2022/10/06.
//

import UIKit

class FirstViewController: UIViewController {
    
    private let startLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 160, width: 250, height: 30))
        label.text = "카카오톡을 시작합니다"
        label.font = .boldSystemFont(ofSize: 24)
        return label
    }()
    
    
    private let subLabel: UILabel = {
        let label = UILabel(frame: CGRect(x:50, y:190, width: 300, height: 80))
        label.text = "사용하던 카카오계정이 있다면 \n 이메일 또는 전화번호로 로그인해 주세요."
        label.numberOfLines = 2
        label.font = .boldSystemFont(ofSize: 17)
        label.textColor = .systemGray
        label.textAlignment = .center
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
    
    private let kakaoButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 16, y: 460, width: 360, height: 55))
        button.setTitle("카카오계정 로그인", for: .normal)
        button.setTitleColor(.black,for:.normal)
        button.backgroundColor = .systemGray6
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(touchupThirdPage), for: .touchUpInside)
        return button
    }()
    private let newkakaoButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 16, y: 528, width: 360, height: 55))
        button.setTitle("새로운 카카오계정 만들기", for: .normal)
        button.setTitleColor(.black,for:.normal)
        button.backgroundColor = .systemGray6
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(touchupNextButton), for: .touchUpInside)
        return button
    }()
    
    private let findLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 600, width: 250, height: 30))
        label.text = "카카오계정 또는 비밀번호 찾기"
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        super.viewDidLoad()
        
        
        let components: [Any] = [startLabel,subLabel,emailLabel,underline,passLabel,underline2,kakaoButton,newkakaoButton,findLabel]
        components.forEach {
            self.view.addSubview($0 as! UIView)
        }
    }
    
    private func pushToSecondVc() {
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    private func presentToThidVC(){
        let thirdVC = ThirdViewController()
        self.modalPresentationStyle = .formSheet
        self.present(thirdVC, animated: true)
    }
   
    @objc
    private func touchupNextButton() {
        pushToSecondVc()
        
    }
    @objc
    private func touchupThirdPage(){
        presentToThidVC()
    }
}
