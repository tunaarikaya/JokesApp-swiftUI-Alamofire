//
//  JokesViewModel.swift
//  jokesAppSwiftUI
//
//  Created by Mehmet Tuna Arıkaya on 9.09.2024.
//

import Foundation
import Alamofire

class JokesViewModel : ObservableObject{
    
    @Published var jokes = [Value]()

    init() {
        getJokes()
    }
    
    func getJokes(count: Int = 6)
    {
        AF.request("http://api.icndb.com/jokes/random/\(count)",method: .get).responseDecodable(of:Welcome.self) { response in
            
            switch response.result {
                case .success(let data):
                let value = data.value
                self.jokes += value
                case .failure(let error):
                    print(error)
            }
        }
    }
}
