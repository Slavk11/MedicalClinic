//
//  DataStore.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 04.06.2023.
//

final class DataStore {
    static let shared = DataStore()
    
    let newsTitle = [
        "Акция в честь дня рождения",
        "Title2",
        "Title3",
        "Title4",
        "Title5"
    ]
    
    let newsText = [
        "News text1",
        "News text2",
        "News text3",
        "News text4",
        "News text5"
    ]
    
    
    
    private init() {}
}
