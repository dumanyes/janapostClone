//
//  NotifController.swift
//  JanaPostClone
//
//  Created by Duman Yessenbay on 16.12.2023.
//

import UIKit

import SnapKit

class NotifController: UIViewController, UITableViewDelegate, UITableViewDataSource {

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
        label.text = "   Хабарлама"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .singleLine
        tableView.backgroundColor = .clear
        tableView.register(CustomTableViewCell1.self, forCellReuseIdentifier: "cell")
        return tableView
    }()

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tbviewData.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell1
        cell.iconImageView.image = icons[indexPath.row]
        cell.titleLabel.text = tbviewData[indexPath.row]
        cell.subtitleLabel.text = subtitles[indexPath.row]
        cell.gtImageView.image = gt[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            switch indexPath.row {
            case 0:
                let sectionChangeViewController = reminderController()
                navigationController?.pushViewController(sectionChangeViewController, animated: true)
            default:
                break
            }
        }
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    private func setupUI() {
        setupViews()
        setupConstraints()
        setupTableView()
    }
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(logoImageView)
        view.addSubview(mainPageLabel)
        tableView.register(CustomTableViewCell1.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
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
        tableView.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(-20)
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}

class CustomTableViewCell1: UITableViewCell {
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = .black
        return label
    }()

    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .gray
        return label
    }()

    let gtImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    let iconImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        contentView.addSubview(iconImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(gtImageView)
        iconImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(40)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(23)
        }
        titleLabel.snp.makeConstraints { make in
            make.leading.equalTo(iconImageView.snp.trailing).offset(20)
            make.centerY.equalToSuperview().offset(-10)
        }
        subtitleLabel.snp.makeConstraints { make in
            make.leading.equalTo(iconImageView.snp.trailing).offset(20)
            make.centerY.equalToSuperview().offset(10)
        }
        gtImageView.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-10)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(12)
        }
    }
}
