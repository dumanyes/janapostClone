//
//  StockController.swift
//  JanaPostClone
//
//  Created by Duman Yessenbay on 19.12.2023.
//
import SnapKit
import UIKit

class StockController: UIViewController {

    private let tbviewData = ["Сәлемдеме статусы"]
    private let subtitles = ["Базаға енді"]
    private let icons = [UIImage(named: "bookmark")]
    private let gt = [UIImage(named: "gt")]

    private let nodataImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "nodata")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private let mainPageLabel: UILabel = {
        let label = UILabel()
        label.text = "Дерек жоқ"
        label.font = UIFont.systemFont(ofSize: 25)
        label.textColor = .gray
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
        view.addSubview(nodataImageView)
        view.addSubview(mainPageLabel)

    }

    private func setupConstraints() {
        mainPageLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(nodataImageView.snp.bottom).offset(16)
            
        }
        nodataImageView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-50)
            make.width.height.equalTo(140)
        }
        
    }
}
