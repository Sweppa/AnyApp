////
////  AANetCall.swift
////  AnyApp
////
////  Created by Yaroslav on 15.04.2023.
////
//
//import UIKit
//
//class AANetCall: UITableViewController {
//
//    var devices = [Device]()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let url = "http://storage42.com/modulotest/data.json"
//
////        if let url = URL(string: urlString) {
////            if let data = try? Data(contentsOf: url) {
////                parse(json: data)
////            }
////        }
//
//        let task = URLSession.shared.dataTask(with: url) { data, response, error in
//              // Error handling...
//
//            let decoder = JSONDecoder()
//            if let data = data{
//
//                do {
//                    let devices = try decoder.decode([Devices].self, from: data)
//                    print(devices)
//                } catch {
//                    print(error)
//                }
//
//            }
//
//
//
//
//    }
//
//    func parse(json: Data) {
//        //let decoder = JSONDecoder()
//
//        if let jsonDevices = try? decoder.decode(Devices.self, from: json) {
//            devices = jsonDevices.devices
//            tableView.reloadData()
//        }
//    }
//
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return devices.count
//    }
//
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->  UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//        let device = devices[indexPath.row]
//        cell.textLabel?.text = device.deviceName
//        cell.detailTextLabel?.text = device.productType
//        return cell
//    }
//
//    //    override func numberOfSections(in tableView: UITableView) -> Int {
//    //        // #warning Incomplete implementation, return the number of sections
//    //        return 0
//    //    }
//
//}
