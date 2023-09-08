//
//  ViewController.swift
//  JsonPasing
//
//  Created by Геник Мурадян on 08.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Actions
    @IBAction func fetchButtonPressed() {
        fetchPosts()
    }
    
    // MARK: - Private Methods
    private func fetchPosts() {
        URLSession.shared.dataTask(with: postsUrl!) { data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            let decoder = JSONDecoder()
            
            do {
                let posts = try decoder.decode([Posts].self, from: data)
                print(posts)
                self.showAlert(withStatus: .success)
            } catch let error {
                self.showAlert(withStatus: .failed)
                print(error)
            }
            
        }.resume()
    }
    
    
    private func showAlert(withStatus status: Alert) {
        let alert = UIAlertController(title: status.title, message: status.message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        DispatchQueue.main.async { [unowned self] in
            present(alert, animated: true)
        }
    }
}

