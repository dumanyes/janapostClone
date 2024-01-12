//
//  ChangeLocationController.swift
//  JanaPostClone
//
//  Created by Duman Yessenbay on 18.12.2023.
//

import UIKit
import SnapKit

class ChangeLocationController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private var tbviewData = ["Аққент ш/а 68", "Қалқаман ш/а 5/1", "Дарабоз  55", "Қабдолов көшесі 22 Б", "Шұғыла City 340/4 k11"]
    private let locs = ["Алматы қаласы - Алатау ауданы", "Алматы қаласы - Наурызбай ауданы", "Алматы қаласы - Almaty Arena",
                        "Алматы қаласы - Әуезов Ауданы", "Алматы қаласы мкр. Шұғыла "]
    private let ids = ["JP023", "JP029", "JP032", "JP026", "JP021"]

    private let mainPageLabel: UILabel = {
        let label = UILabel()
        label.text = "Бөлімше"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()

    private lazy var changeLocation: UIButton = {
        let button = UIButton()
        button.backgroundColor = .jp
        button.layer.cornerRadius = 17
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(changeLocationButtonTapped), for: .touchUpInside)
        button.isUserInteractionEnabled = true
        return button
    }()

    private let changeLocationText: UILabel = {
        let label = UILabel()
        label.text = "Бөлімшені өзгерту"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        return label
    }()

    private var selectedIndexPath: IndexPath?
    private var previousSelectedIndexPath: IndexPath?

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .singleLine
        tableView.backgroundColor = .clear
        tableView.register(CustomTableViewCell4.self, forCellReuseIdentifier: "cell")
        tableView.isUserInteractionEnabled = true
        return tableView
    }()

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tbviewData.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell4

        cell.titleLabel.text = tbviewData[indexPath.row]
        cell.subtitleLabel.text = locs[indexPath.row]
        cell.gtImageView.text = ids[indexPath.row]

        if selectedIndexPath == indexPath {
            cell.accessoryType = .checkmark
            cell.updateTextColor(isSelected: true)
        } else {
            cell.accessoryType = .none
            cell.updateTextColor(isSelected: false)
        }

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if selectedIndexPath == indexPath {
            
            selectedIndexPath = nil
        } else {
            previousSelectedIndexPath = selectedIndexPath
            selectedIndexPath = indexPath
        }

        tableView.reloadData()
    }
    func didTapChangeLocationButton(at indexPath: IndexPath) {
            if let previousSelectedIndexPath = previousSelectedIndexPath {
                if let cell = tableView.cellForRow(at: previousSelectedIndexPath) as? CustomTableViewCell4 {
                    cell.updateTextColor(isSelected: false)
                }
            }

            selectedIndexPath = indexPath
            tableView.reloadData()

            let selectedLocation = tbviewData[indexPath.row]
            print("Selected Location: \(selectedLocation)")

            if let cell = tableView.cellForRow(at: indexPath) as? CustomTableViewCell4 {
                cell.updateTextColor(isSelected: true)
            }
        }

    @objc private func changeLocationButtonTapped() {
        if let previousSelectedIndexPath = previousSelectedIndexPath {
            if let cell = tableView.cellForRow(at: previousSelectedIndexPath) as? CustomTableViewCell4 {
                cell.updateTextColor(isSelected: false)
            }
        }

        if let selectedIndexPath = selectedIndexPath {
            let selectedLocation = tbviewData[selectedIndexPath.row]
            print("Selected Location: \(selectedLocation)")
            if let cell = tableView.cellForRow(at: selectedIndexPath) as? CustomTableViewCell4 {
                cell.updateTextColor(isSelected: true)
            }
        } else {
            print("No location selected")
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

        view.addSubview(mainPageLabel)
        view.addSubview(tableView)
        view.addSubview(changeLocation)
        changeLocation.addSubview(changeLocationText)
    }

    private func setupConstraints() {
        mainPageLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview().offset(7)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
        }
        tableView.snp.makeConstraints { make in
            make.top.equalTo(mainPageLabel.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview()
        }
        changeLocation.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-20)
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(60)
        }
        changeLocationText.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}

class CustomTableViewCell4: UITableViewCell {
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

    let gtImageView: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .gray
        return label
    }()
    func updateTextColor(isSelected: Bool) {
        if isSelected {
            titleLabel.textColor = .green
            subtitleLabel.textColor = .green
            gtImageView.textColor = .green
        } else {
            titleLabel.textColor = .black
            subtitleLabel.textColor = .gray
            gtImageView.textColor = .gray
        }
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(gtImageView)

        titleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.centerY.equalToSuperview().offset(-10)
        }

        subtitleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.centerY.equalToSuperview().offset(13)
        }
        gtImageView.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-10)
            make.centerY.equalToSuperview()
        }
    }
}
