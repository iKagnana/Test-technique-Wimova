//
//  Product.swift
//  Test-Technique-Wimova
//
//  Created by Kagnana Ith on 25/06/2023.
//

import Foundation

//Création d'une structure pour la réponse du json récupéré par le lien
struct Response : Codable {
    var products : [Product]
    var total : Int
    var skip: Int
    var limit : Int
}

struct Product : Codable, Identifiable {
    var id: Int
    var title: String
    var description: String
    var price: Int
    var discountPercentage: Double
    var rating: Double
    var stock: Int
    var brand: String
    var category: String
    var thumbnail: String
    var images: [String]
}

//Création d'un mock de data
extension Product {
    static func mock() -> Product {
        Product(
            id: 1,
            title: "Samsung S21",
            description: "New korean technology",
            price: 769,
            discountPercentage: 4.00,
            rating: 4.8,
            stock: 100,
            brand: "Samsung",
            category: "Smartphone",
            thumbnail: "https://www.trustedreviews.com/wp-content/uploads/sites/54/2021/01/04_galaxys21_violet_pink_gray_white_201230074008-scaled.jpg",
            images: [
                "https://images.samsung.com/is/image/samsung/assets/fr/smartphones/galaxy-s22-ultra/buy/2784.png?$PD_SHOP_MAIN$",
                "https://boulanger.scene7.com/is/image/Boulanger/8806090892554_h_f_l_0?wid=500&hei=500"
            ]
        )
    }
}
