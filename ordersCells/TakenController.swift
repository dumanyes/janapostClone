//
//  TakenController.swift
//  JanaPostClone
//
//  Created by Duman Yessenbay on 19.12.2023.
//

import UIKit
import SnapKit

class TakenController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.register(ProductCell2.self, forCellWithReuseIdentifier: ProductCell2.identifier)
        return collectionView
    }()

    private let productsData: [(imageName: String, date: String, productName: String, priceLabel: String)] = [
        ("ball", "10.12.2023 06:23", "Football ball", "10204tg"),
        ("ball1", "12.12.2023 06:23", "Volleyball ball", "40204tg"),
        ("ball2", "14.12.2023 06:23", "Basketball ball", "50204tg"),
        ("gloves", "15.12.2023 06:23", "Boxing Gloves", "39444tg"),
        ("ball", "10.12.2023 06:23", "Football ball", "30494tg"),
        ("ball", "10.12.2023 06:23", "Football ball", "10204tg"),
        ("ball1", "12.12.2023 06:23", "Volleyball ball", "40204tg"),
        ("ball2", "14.12.2023 06:23", "Basketball ball", "50204tg"),
        ("gloves", "15.12.2023 06:23", "Boxing Gloves", "39444tg"),
        ("ball", "10.12.2023 06:23", "Football ball", "30494tg"),
        ("ball", "10.12.2023 06:23", "Football ball", "10204tg"),
        ("ball1", "12.12.2023 06:23", "Volleyball ball", "40204tg"),
        ("ball2", "14.12.2023 06:23", "Basketball ball", "50204tg"),
        ("gloves", "15.12.2023 06:23", "Boxing Gloves", "39444tg"),
        ("ball", "10.12.2023 06:23", "Football ball", "30494tg"),
        
        
    ]

    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private let mainPageLabel: UILabel = {
        let label = UILabel()
        label.text = " Күтілуде"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productsData.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell2.identifier, for: indexPath) as! ProductCell2
        let data = productsData[indexPath.item]
        cell.configure(imageName: data.imageName, date: data.date, productName: data.productName, price: data.priceLabel)
        return cell
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.bounds.width - 20, height: 110)
    }

    private func setupCollectionView() {
        view.addSubview(collectionView)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(mainPageLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(10)
            make.trailing.equalToSuperview().offset(-10)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-10)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        setupViews()
        setupConstraints()
        setupCollectionView()
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

class ProductCell2: UICollectionViewCell {
    static let identifier = "ProductCell"

    private let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .search
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        return view
    }()

    private let clockImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private let dateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        return label
    }()
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .systemBlue
        return label
    }()

    private let ballImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private let productNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()

    private let status: UIView = {
        let view = UIView()
        view.backgroundColor = .status1
        view.layer.cornerRadius = 13
        view.layer.masksToBounds = true
        return view
    }()

    private let statusText: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .statustext1
        return label
    }()

    private let pinlogoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 8
        imageView.layer.masksToBounds = true
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        addSubview(containerView)
        containerView.addSubview(clockImageView)
        containerView.addSubview(dateLabel)
        containerView.addSubview(ballImageView)
        containerView.addSubview(productNameLabel)
        containerView.addSubview(priceLabel)
        containerView.addSubview(status)
        status.addSubview(statusText)
        containerView.addSubview(pinlogoImageView)

        setupConstraints()
    }

    private func setupConstraints() {
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        clockImageView.snp.makeConstraints { make in
            make.leading.top.equalToSuperview().offset(10)
            make.width.height.equalTo(16)
        }

        dateLabel.snp.makeConstraints { make in
            make.leading.equalTo(clockImageView.snp.trailing).offset(5)
            make.centerY.equalTo(clockImageView)
        }

        ballImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(10)
            make.top.equalTo(clockImageView.snp.bottom).offset(10)
            make.width.height.equalTo(40)
        }

        productNameLabel.snp.makeConstraints { make in
            make.leading.equalTo(ballImageView.snp.trailing).offset(10)
            make.centerY.equalTo(ballImageView)
        }

        status.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-10)
            make.top.equalToSuperview().offset(15)
            make.height.equalTo(25)
            make.width.equalTo(83)
        }

        statusText.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }

        pinlogoImageView.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-10)
            make.centerY.equalTo(ballImageView).offset(5)
            make.width.height.equalTo(30)
        }
        priceLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().offset(-10)
        }
    }

    func configure(imageName: String, date: String, productName: String, price: String) {
        clockImageView.image = UIImage(named: "clock")
        dateLabel.text = date
        ballImageView.image = UIImage(named: imageName)
        priceLabel.text = price
        productNameLabel.text = productName
        statusText.text = "Tөленді"
        pinlogoImageView.image = UIImage(named: "pinlogo")
    }
}

