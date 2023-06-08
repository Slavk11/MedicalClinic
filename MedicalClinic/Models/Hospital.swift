//
//  Model.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 04.06.2023.
//

struct Hospital {
    let newsTitle: String
    let newsText: String
    let newsImage: String
    
    static func getInfo() -> [Hospital] {
            var news: [Hospital] = []
        
            let newsTitle = DataStore.shared.newsTitle
            let newsText = DataStore.shared.newsText
        let newsImage = DataStore.shared.newsImage
        
            
            for index in 0..<newsTitle.count {
                let model = Hospital(
                    
                    newsTitle: newsTitle[index],
                    newsText: newsText[index],
                    newsImage: newsImage[index]
                )
                news.append(model)
            }
            
            return news
        }
}
