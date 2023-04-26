//
//  AAGallery.swift
//  AnyApp
//
//  Created by Yaroslav on 12.04.2023.
//

import UIKit

class AAGallery: UIViewController {
    
    var tableView = UITableView()
    // Create empty array
    var photos: [Photo] = []
    
    struct Cells {
        static let photoCell = "PhotoCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Local NetCall"
        
        // Fetch data, put data from NetworkCall to empty array
        photos = fetchData()
        
        configureTableView()
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        //register Cell
        tableView.register(PhotoCell.self, forCellReuseIdentifier: Cells.photoCell)
        
        tableView.rowHeight  =  100
        
        tableView.pin(to: view)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension AAGallery: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count // 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.photoCell) as! PhotoCell
        let photo = photos[indexPath.row]
        cell.set(photo: photo)
        
        return cell
    }
}


extension AAGallery {
    
    func fetchData() -> [Photo] {
        let photo0 = Photo(image: Images.noStoryboard, title: "Agraba")
        let photo1 = Photo(image: Images.softSkills, title: "Not Smart One")
        let photo2 = Photo(image: Images.xcode, title: "Hmmm, interesting...")
        let photo3 = Photo(image: Images.patreon, title: "Crazy dude!")
        let photo4 = Photo(image: Images.raises, title: "Culture you wish you see and feel")
        let photo5 = Photo(image: Images.shake, title: "Bluest Flower")
        let photo6 = Photo(image: Images.salaries, title: "Your dude, giraffe")
        let photo7 = Photo(image: Images.wireless, title: "Misterious place")
        let photo8 = Photo(image: Images.swiftNews, title: "Art of my dream")
        let photo9 = Photo(image: Images.ninety, title: "You wish to live here!")
        
        return [photo0, photo1, photo2, photo3, photo4, photo5, photo6, photo7, photo8, photo9]
    }
}

