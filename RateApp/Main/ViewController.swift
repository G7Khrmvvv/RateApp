//
//  ViewController.swift
//  RateApp
//
//  Created by imac on 3.03.24.
//


import UIKit
import SnapKit

final class ViewController: UIViewController {

    private let rate = UILabel()

    private let header = UILabel()
    private let maintext = UILabel()

    private let firstButton = UIButton()
    private let secondButton = UIButton()

    private let secondView = UIView()


    override func viewDidLoad() {
        super.viewDidLoad()

        embedViews()
        setupLayout()
        setupAppearance()
        setupData()
        setupBehavior()

    }


}

private extension ViewController {
    func embedViews() {
        [
            rate,
            header,
            maintext,
            firstButton,
            secondButton,
            secondView
        ].forEach {view.addSubview($0) }
    }
}

private extension ViewController {
    func setupLayout() {


        view.addSubview(secondView)

        secondView.snp.makeConstraints{
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(view.snp.leadingMargin).offset(10)
            $0.trailing.equalTo(view.snp.trailingMargin).inset(10)
            $0.height.equalTo(400)
        }
        
        rate.snp.makeConstraints{
            $0.top.equalTo(secondView.snp.topMargin).offset(30)
            $0.centerX.equalToSuperview()
        }

        header.snp.makeConstraints{
            $0.top.equalTo(secondView.snp.topMargin).offset(80)
            $0.centerX.equalToSuperview()
        }

        maintext.snp.makeConstraints{
            $0.top.equalTo(header.snp.bottomMargin).offset(25)
            $0.leading.equalTo(view.snp.leadingMargin).offset(20)
            $0.trailing.equalTo(view.snp.trailingMargin).inset(20)
        }

        firstButton.snp.makeConstraints {
            $0.top.equalTo(maintext.snp.bottom).offset(30)
            $0.leading.equalTo(view.snp.leadingMargin).offset(30)
            $0.trailing.equalTo(view.snp.trailingMargin).inset(30)
            $0.height.equalTo(40)
        }
        secondButton.snp.makeConstraints {
            $0.top.equalTo(firstButton.snp.bottomMargin).offset(15)
            $0.centerX.equalToSuperview()
        }
        secondView.addSubview(rate)
        secondView.addSubview(header)
        secondView.addSubview(maintext)
        secondView.addSubview(firstButton)
        secondView.addSubview(secondButton)
    }
}

private extension ViewController {
    func setupAppearance() {
        view.backgroundColor = UIColor(red: 92/255, green: 176/255, blue: 117/255, alpha: 1)

        
        header.textColor = .label
        header.font = UIFont.systemFont(ofSize: 32)

        maintext.textColor = .secondaryLabel
        maintext.font = UIFont.systemFont(ofSize: 16)
        maintext.numberOfLines = 8
        maintext.textAlignment = .center

        firstButton.setTitleColor(.white, for: .normal)
        firstButton.backgroundColor = UIColor(red: 92/255, green: 176/255, blue: 117/255, alpha: 1)
        firstButton.layer.cornerRadius = 8

        secondButton.setTitleColor(UIColor(red: 92/255, green: 176/255, blue: 117/255, alpha: 1), for: .normal)

        secondView.backgroundColor = .white
        secondView.layer.cornerRadius = 25
    }
}

private extension ViewController {
    func setupData() {
        rate.text = "⭐️   ⭐️   ⭐️   ⭐️   ⭐️"
        
        header.text = "Rate our app"
        maintext.text = "Захар, там написано очень много текста, но мне не хочется его переписывать. Он даже написан как будто на испанском или каком-то другом языке. Мне надо как-то наполнить этот текст, поэтому здесь нет никакого смысла, ты даже можешь не дочитывать."

        firstButton.setTitle("пироженное картошка", for: .normal)

        secondButton.setTitle("Киевский тортик", for: .normal)
    }
}

private extension ViewController {
    func setupBehavior() {
        print("OK")
    }
}
