//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Buu Vinh Tang on 8/12/22.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        let service = DataService()
        self.recipes = service.getLocalData()
        
        // Set the recipes property
    }
}
