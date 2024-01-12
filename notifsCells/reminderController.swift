//
//  reminderController.swift
//  JanaPostClone
//
//  Created by Duman Yessenbay on 19.12.2023.
//
import SnapKit
import UIKit

class reminderController: UIViewController {
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private let mainPageLabel: UILabel = {
        let label = UILabel()
        label.text = "  Хабарлама"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    private lazy var searchView: UIView = {
        let view = UIView()
        view.backgroundColor = .search
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        return view
    }()
    private let logoImageView1: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private let reminderTitle: UILabel = {
        let label = UILabel()
        label.text = "#777180272574135 Салмағы өлшенді"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    private let reminderSubTitle: UILabel = {
        let label = UILabel()
        label.text = "Қоймаға жетті, Алып кетуге дайын!"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    private let reminderDate: UILabel = {
        let label = UILabel()
        label.text = "25 қараша 2023, 09:24"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = .gray
        return label
    }()
    
    private let logoImageView2: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private let reminderTitle1: UILabel = {
        let label = UILabel()
        label.text = "#807180272574135 Салмағы өлшенді"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    private let reminderSubTitle1: UILabel = {
        let label = UILabel()
        label.text = "Қоймаға жетті, Алып кетуге дайын!"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    private let reminderDate1: UILabel = {
        let label = UILabel()
        label.text = "16 желтоқсан 2023, 19:20"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = .gray
        return label
    }()
    private lazy var searchView1: UIView = {
        let view = UIView()
        view.backgroundColor = .search
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        return view
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
        view.addSubview(logoImageView1)
        
        view.addSubview(searchView)
        searchView.addSubview(reminderTitle)
        searchView.addSubview(reminderSubTitle)
        searchView.addSubview(reminderDate)
        
        view.addSubview(logoImageView2)
        
        view.addSubview(searchView1)
        searchView1.addSubview(reminderTitle1)
        searchView1.addSubview(reminderSubTitle1)
        searchView1.addSubview(reminderDate1)
        
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
        logoImageView1.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).inset(-25)
            make.leading.equalToSuperview().offset(10)
            make.height.equalTo(30)
        }
        searchView.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).inset(-15)
            make.leading.equalTo(logoImageView1.snp.trailing).offset(8)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(120)
        }
        reminderTitle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.leading.equalToSuperview().offset(20)
        }
        reminderSubTitle.snp.makeConstraints { make in
            make.top.equalTo(reminderTitle.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(20)
        }
        reminderDate.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-10)
            make.leading.equalToSuperview().offset(20)
        }
        logoImageView2.snp.makeConstraints { make in
            make.top.equalTo(searchView.snp.bottom).inset(-25)
            make.leading.equalToSuperview().offset(10)
            make.height.equalTo(30)
        }
        searchView1.snp.makeConstraints { make in
            make.top.equalTo(searchView.snp.bottom).inset(-15)
            make.leading.equalTo(logoImageView1.snp.trailing).offset(8)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(120)
        }
        reminderTitle1.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.leading.equalToSuperview().offset(20)
        }
        reminderSubTitle1.snp.makeConstraints { make in
            make.top.equalTo(reminderTitle1.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(20)
        }
        reminderDate1.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-10)
            make.leading.equalToSuperview().offset(20)
        }
    }
}
