//
//  UIImageView+Async.swift
//  FAQCarouselApp
//
//  Created by kartik choudhary on 29/05/25.
//

import UIKit

extension UIImageView {
    func loadImage(from url: String) {
        guard let url = URL(string: url) else { return }

        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url), let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self?.image = image
                }
            }
        }
    }
}
