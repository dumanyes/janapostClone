//
//  CollectionViewController.swift
//  JanaPostClone
//
//  Created by Duman Yessenbay on 18.12.2023.
//

import UIKit
import SnapKit

class CollectionViewController: UIViewController {

    private let tbviewData = ["Сәлемдеме статусы"]
    private let subtitles = ["Базаға енді"]
    private let icons = [UIImage(named: "bookmark")]
    private let gt = [UIImage(named: "gt")]

    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private let mainPageLabel: UILabel = {
        let label = UILabel()
        label.text = "Топ 15"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()

    

    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        setupViews()
        setupConstraints()
        
    }

    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(logoImageView)
        view.addSubview(mainPageLabel)

        
    }

    private func setupConstraints() {
        logoImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(-73)
            make.top.equalTo(view.safeAreaLayoutGuide).inset(-20)
            make.width.height.equalTo(25)
        }
        mainPageLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(7)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(-21)
            
        }
        
    }
}

