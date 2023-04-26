//
//  AANetCall3.swift
//  AnyApp
//
//  Created by Yaroslav on 15.04.2023.
//

import UIKit

class AANetCall3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let url = "http://storage42.com/modulotest/data.json"
        getData(from: url)
        
    }
    
    
    private func getData(from url: String) {
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            
            guard  let  data = data, error == nil else {
                print("smt. went wrong")
                return
            }
                        
            do {
                let decodedData = try JSONDecoder().decode(APIData.self, from: data)
                print(decodedData.devices[0].deviceName)
                //                let decoder = JSONDecoder()
                //                decoder.keyDecodingStrategy = .convertFromSnakeCase
                //                let mode = try decoder.decode([Lights].self, from: data)
            }
            catch {
                // print("failed to convert \(error.localizedDescription)")
                print(String(describing: error))
                //                print(results?.result)
            }
            
            //            guard let json = result else {
            //                return
            //            }
            
            //            print(json.devices.mode)
            //            print(json.devices.productType)
            //            print(json.rResults.position)
            //            print(json.hResults.mode)
            //            print(json.hResults.temperature)
            
        })
        
        task.resume()
    }
}

//struct Devices: Codable {
//    let devices: Lights
//    //let rResults: RollerShutters
//    //let hResults: Heaters
//}
//
//struct Lights: Codable {
//    let mode: String
//    let productType: String
//}

//struct RollerShutters: Codable {
//    let position: Int
//}
//
//struct Heaters: Codable {
//    let temperature: Int
//    let mode: String
//}

