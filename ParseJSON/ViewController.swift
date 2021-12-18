//
//  ViewController.swift
//  ParseJSON
//
//  Created by GLABBER on 18.12.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://icodeschool.ru/json1.php"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                print(error)
                return
            }
            
            guard let data = data else { return }
            
            let  jsonString = String(data: data, encoding: .utf8)
            print(jsonString)
            
        }.resume()
    }


}


