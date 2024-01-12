//
//  ReceiverListController.swift
//  JanaPostClone
//
//  Created by Duman Yessenbay on 18.12.2023.
//

import UIKit
import SnapKit

class Receiver {
    var name: String

    init(name: String) {
        self.name = name
    }
}
class ReceiverListController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private var tbviewData = [Receiver(name: "Yessenbay Duman")]

    private let mainPageLabel: UILabel = {
        let label = UILabel()
        label.text = "Алушылар тізімі"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()

    private lazy var addReceiver: UIButton = {
        let button = UIButton()
        button.backgroundColor = .addorder
        button.layer.cornerRadius = 17
        button.layer.masksToBounds = true
        return button
    }()

    private let addReceiverText: UILabel = {
        let label = UILabel()
        let attributedText = NSMutableAttributedString(string: "+", attributes: [
            .font: UIFont.boldSystemFont(ofSize: 18),
            .foregroundColor: UIColor.white
        ])
        attributedText.append(NSAttributedString(string: " Жаңа алушыны қосу", attributes: [
            .font: UIFont.systemFont(ofSize: 15),
            .foregroundColor: UIColor.white
        ]))
        label.attributedText = attributedText
        return label
    }()

    @objc private func addReceiverTapped() {
        let alertController = UIAlertController(title: "Add Receiver", message: nil, preferredStyle: .alert)
        
        alertController.addTextField { textField in
            
            textField.placeholder = "Enter receiver name"
        }
        
        let addAction = UIAlertAction(title: "Add", style: .default) { _ in
            if let receiverName = alertController.textFields?.first?.text {
                let newReceiver = Receiver(name: receiverName)
                self.tbviewData.append(newReceiver)
                self.tableView.reloadData()
            }
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(addAction)
        
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    private func deleteReceiver(at indexPath: IndexPath) {
        
        
        tbviewData.remove(at: indexPath.row)
        
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
    private let tableView: UITableView = {
        
        let tableView = UITableView()
        tableView.separatorStyle = .singleLine
        tableView.backgroundColor = .clear
        tableView.register(CustomTableViewCell3.self, forCellReuseIdentifier: "cell")
        
        return tableView
    }()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tbviewData.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell3
        cell.titleLabel.text = tbviewData[indexPath.row].name

        
        cell.deleteHandler = { [weak self] in
            self?.deleteReceiver(at: indexPath)
        }
        cell.deleteButton.isHidden = indexPath.row == 0

        return cell
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
        tableView.register(CustomTableViewCell3.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
        view.addSubview(addReceiver)
        addReceiver.addSubview(addReceiverText)

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(addReceiverTapped))
        addReceiver.addGestureRecognizer(tapGesture)
        addReceiver.isUserInteractionEnabled = true
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
        addReceiver.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-20)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(43)
        }
        addReceiverText.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}

class CustomTableViewCell3: UITableViewCell {
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = .black
        return label
    }()

    let deleteButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Delete", for: .normal)
        button.setTitleColor(.red, for: .normal)
        return button
    }()

    var deleteHandler: (() -> Void)?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(deleteButton)

        titleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.centerY.equalToSuperview()
        }

        deleteButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-16)
            make.centerY.equalToSuperview()
            make.width.equalTo(60)
            make.height.equalTo(30)
        }
        deleteButton.addTarget(self, action: #selector(deleteReceiverButtonTapped), for: .touchUpInside)
    }

    @objc private func deleteReceiverButtonTapped() {
        deleteHandler?()
    }
}
