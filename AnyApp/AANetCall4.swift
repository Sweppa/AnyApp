//
//  AANetCall4.swift
//  AnyApp
//
//  Created by Yaroslav on 26.04.2023.
//

import UIKit

class AANetCall4: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        myCall()
    }
    
    func myCall() {
        
        let devicesURL = "http://storage42.com/modulotest/data.json"
        
        
        func performRequest(devicesURL: String) {
            
            if let url = URL(string: devicesURL) {
                
                
                let  session = URLSession(configuration: .default)
                
                
                let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
                
                task.resume()
            }
        }
        func handle(data: Data?, response: URLResponse?, error: Error?) {
            if error != nil {
                print(error!)
                return
            }
            
            if let safeData = data {
                let dataString = String(data: safeData, encoding: .utf8)
                print(dataString)
            }
        }
    }
}
                                        
//        guard  let  data = data, error == nil else {
//            print("smt. went wrong")
//            return
//        }
//
//        do {
//            let decodedData = try JSONDecoder().decode(APIData.self, from: data)
//            print(decodedData.devices[0].deviceName)
//        }
//        catch {
//            print(String(describing: error))
//        }
