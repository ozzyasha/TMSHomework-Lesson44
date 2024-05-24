//
//  TeaViewModel.swift
//  TMSHomework-Lesson44
//
//  Created by Наталья Мазур on 24.05.24.
//

import Foundation

class TeaViewModel: ObservableObject {
    
    @Published
    var teaCatalogue = [TeaCatalogueModel]()
    
    init() {
        APIService.shared.fetchData(completionHandler: { [weak self] teaCatalogue in
            DispatchQueue.main.async {
                self?.teaCatalogue = teaCatalogue
            }
        }, errorHandler: { error in
            print(error) //  алерт
        })
    }
    
    
}
