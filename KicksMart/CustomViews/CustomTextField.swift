//
//  CustomTextField.swift
//  KicksMart
//
//  Created by Jakub Malczyk on 22/10/2022.
//

import UIKit

struct CustomTextField {
    
    static func create(withText text: String, icon: String, password: Bool, width: CGFloat, height: CGFloat) -> UIView {
        
        let view = UIView()
        view.backgroundColor = .cyan?.withAlphaComponent(0.1)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = height / 3
        let viewConstraints =
        [
            view.heightAnchor.constraint(equalToConstant: height),
            view.widthAnchor.constraint(equalToConstant: width)
        ]
        NSLayoutConstraint.activate(viewConstraints)
        
        
        let textIcon = UIImageView()
        textIcon.image = UIImage(systemName: icon)
        textIcon.tintColor = .blue
        textIcon.contentMode = .scaleAspectFit
        
        view.addSubview(textIcon)
        textIcon.translatesAutoresizingMaskIntoConstraints = false
        
        let textIconConstraints =
        [
            textIcon.topAnchor.constraint(
                equalTo: view.topAnchor,
                constant: 2),
            textIcon.bottomAnchor.constraint(
                equalTo: view.bottomAnchor,
                constant: 2),
            textIcon.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: -5)
        ]
        NSLayoutConstraint.activate(textIconConstraints)
        
        let textField = UITextField()
        let bluePlaceholderText = NSAttributedString(string: text,
                                                    attributes: [NSAttributedString.Key.foregroundColor: UIColor.blue!])
                
        textField.attributedPlaceholder = bluePlaceholderText
        textField.textAlignment = .left
        textField.textColor = .blue
        textField.borderStyle = .none
        textField.isSecureTextEntry = password
        
        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        let textFieldConstraints =
        [
            textField.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 2),
            textField.topAnchor.constraint(
                equalTo: view.topAnchor,
                constant: 2),
            textField.bottomAnchor.constraint(
                equalTo: view.bottomAnchor,
                constant: 2),
            textField.trailingAnchor.constraint(
                equalTo: textIcon.leadingAnchor,
                constant: -5)
            
        ]
        NSLayoutConstraint.activate(textFieldConstraints)
        


        func readTextField() -> String? {
            guard let text = textField.text else {
                return nil
            }
            return text
        }
        
        return view
        
    }
    
}
