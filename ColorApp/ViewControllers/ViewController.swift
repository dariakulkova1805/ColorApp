//
//  ViewController.swift
//  ColorApp
//
//  Created by DARYA on 9/27/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getColors()
    }
    
    func getColors() {
        guard let url = URL(string: "https://www.colourlovers.com/api/colors/new?format=json") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let colors = try JSONDecoder().decode([Color].self, from: data)
                print(colors)
            } catch let error {
                print(error)
            }
            
        }.resume()
    }
}
