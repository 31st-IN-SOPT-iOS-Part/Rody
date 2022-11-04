//
//  FirstViewController.swift
//  3rd Assignment
//
//  Created by 최가연 on 2022/11/03.
//

import UIKit
import SnapKit
import SwiftyColor
import Then


final class MusicListVieController: UIViewController {
    
    
    //Mark:-UI Components
    
    private lazy var musicTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .singleLine
        tableView.separatorColor = .black.withAlphaComponent(0.1)
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    
    // Mark: -UI Variables
    
    var musicList: [MusicModel] = [
          MusicModel(albumImage: "albumImage1", title: "Eleven", singer: "IVE(아이브)"),
          MusicModel(albumImage: "albumImage2", title: "After LIKE", singer: "IVE(아이브)"),
          MusicModel(albumImage: "albumImage3", title: "Attention", singer: "New Jeans"),
          MusicModel(albumImage: "albumImage4", title: "Shut Down", singer: "BLACKPINK"),
          MusicModel(albumImage: "albumImage5", title: "Hype Boy", singer: "New Jeans"),
          MusicModel(albumImage: "albumImage6", title: "LOVE DIVE", singer: "IVE(아이브)"),
          MusicModel(albumImage: "albumImage7", title: "Pink Venom", singer: "BLACKPINK"),
          MusicModel(albumImage: "albumImage8", title: "Rush Hour (feat. j-hope of ...", singer: "Crush"),
          MusicModel(albumImage: "albumImag9", title: "Monologue", singer: "테이")
      ]
        
     
    //Mark: - Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        register()
        layout()
        
    }
}

    //Mark: - Extensions

extension MusicListVieController {
    
    //Mark : - Layout Helpers
    private func layout() {
        view.backgroundColor = .white
        view.addSubview(musicTableView)
        musicTableView.snp.makeConstraints {
            $0.top.leading.trailing.equalTo(view.safeAreaLayoutGuide)
            $0.bottom.equalToSuperview()
            $0.height.equalTo(70*musicList.count)
        }
    }
    
    
    //Mark: -General Helpers
    
    private func register(){
        musicTableView.register(
        MusicTableViewCell.self,
        forCellReuseIdentifier: MusicTableViewCell.identifier)
    }
}

    //Mark: -UITableViewDelegate

extension MusicListVieController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}


    //Mark; -UITableViewDataSource

extension MusicListVieController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let musicCell = tableView.dequeueReusableCell(
        withIdentifier: MusicTableViewCell.identifier, for: indexPath)
            as? MusicTableViewCell else {return UITableViewCell()}
        musicCell.dataBind(model: musicList[indexPath.row])
        return musicCell
        }
    }
    

    

