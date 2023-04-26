//
//  AANetCall2.swift
//  AnyApp
//
//  Created by Yaroslav on 15.04.2023.
//

import UIKit

class AANetCall2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        myCall()
    }

    
    func myCall() {
        
//        let url = URL(string: "http://storage42.com/modulotest/data.json")!
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1")!

        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            let decoder = JSONDecoder()
            if let data = data{
                
                do {
                    let posts = try decoder.decode(Post.self, from: data)
                    print(posts.description)
                } catch {
                    print(error)
                }
                
            }
        }
        task.resume()
    }
}
