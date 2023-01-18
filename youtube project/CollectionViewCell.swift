//
//  CollectionViewCell.swift
//  youtube project
//
//  Created by mac on 17/01/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    let label = UILabel()
    let img1 = UIImageView()
    let img2 = UIImageView()
    let label2 = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.layer.cornerRadius = 10
        
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        label.font = .systemFont(ofSize: 20)
        NSLayoutConstraint.activate([
            label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
        label.text = "(No Items)"
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label2)
        label2.font = .systemFont(ofSize: 35)
        NSLayoutConstraint.activate([
            label2.bottomAnchor.constraint(equalTo: label.topAnchor, constant: -10),
            label2.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10)
        ])
        
        img1.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(img1)
        NSLayoutConstraint.activate([
            img1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            img1.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            img1.widthAnchor.constraint(equalToConstant: 70),
            img1.heightAnchor.constraint(equalToConstant: 50)

        ])
        img1.image = UIImage(systemName: "folder.fill")
        
        img2.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(img2)
        NSLayoutConstraint.activate([
            img2.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            img2.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10),
          

        ])
        img2.image = UIImage(systemName: "ellipsis")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
