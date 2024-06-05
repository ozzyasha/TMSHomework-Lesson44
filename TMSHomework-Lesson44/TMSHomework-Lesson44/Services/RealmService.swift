//
//  RealmService.swift
//  TMSHomework-Lesson44
//
//  Created by Наталья Мазур on 25.05.24.
//

import Foundation
import RealmSwift

class RealmService {
    static let shared = RealmService()
    
    private init() { }
    
    var teaCatalogue: [TeaCatalogueModel] = []
    
    lazy var realm: Realm? = {
        do {
            let _realm = try Realm()
            return _realm
        } catch {
            print(error.localizedDescription) // алерт
            return nil
        }
    }()
    
    func saveOrUpdateTea(teaModel: TeaCatalogueModel) {
        let teaObject = TeaCatalogueRealmModel(tea: teaModel)
        
        guard let realm else {
            print("Something went wrong with database") // алерт
            return
        }
        
        realm.writeAsync {
            realm.add(teaObject, update: .all)
        }
    }
    
    func readAllTeaCatalogueFromDatabase() -> [TeaCatalogueModel] {
        guard let realm else {
            print("Can't get saved values") // алерт
            return []
        }
        realm.objects(TeaCatalogueRealmModel.self).map { $0 }.forEach({ tea in
            teaCatalogue.append(TeaCatalogueModel(id: tea._id, name: tea.name, price: tea.price, img: tea.img, description: tea.description, quantity: tea.quantity))
        })
        return teaCatalogue
    }
    
    func deleteAllTeaCatalogueFromDatabase() {
        guard let realm else {
            print("Can't get saved values") // алерт
            return
        }
        realm.writeAsync {
            realm.deleteAll()
            self.teaCatalogue.removeAll()
        }
    }
    
}
