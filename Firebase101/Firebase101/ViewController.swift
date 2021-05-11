//
//  ViewController.swift
//  Firebase101
//
//  Created by Lucia on 2021/05/11.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var numOfCustomers: UILabel!
    let db = Database.database().reference()
    
    var customers: [Customer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
        saveBasicTypes()
        fetchCustomers()
//        updateBasicTypes()
//        deleteBasicTypes()
    }
    
    func updateLabel() {
        db.child("firstData").observeSingleEvent(of: .value) { snapshot in
            print("--> \(snapshot)")
            
            let value = snapshot.value as? String ?? ""
            
            DispatchQueue.main.async {
                self.dataLabel.text = value
            }
        }
    }
    
    @IBAction func createCustomer(_ sender: Any) {
        saveCustomers()
    }
    
    @IBAction func fetchCustomer(_ sender: Any) {
        fetchCustomers()
    }
    
    func updateCustomers() {
        guard customers.isEmpty == false else { return }
        customers[0].name = "Min"
        
        let dictionary = customers.map { $0.toDictionary }
        db.updateChildValues(["customers": dictionary])
    }
    
    @IBAction func updateCustomer(_ sender: Any) {
        updateCustomers()
    }
    
    func deleteCustomers() {
        db.child("customers").removeValue()
    }
    
    @IBAction func deleteCustomer(_ sender: Any) {
        deleteCustomers()
    }
}

extension ViewController {
    func saveBasicTypes() {
        // Firebase child ("Key").setValue(value)
        // - string, number, dictionary, array
        db.child("int").setValue(3)
        db.child("double").setValue(3.5)
        db.child("string").setValue("string value : hi!")
        db.child("array").setValue([1, 2, 3])
        db.child("dic").setValue(["id": "anyID", "age": 10, "city": ["seoul", "busan", "daejeon"]])
    }
    
    func saveCustomers() {
        // 책가게
        // 사용자 저장
        // Customer + Book
        let books = [Book(title: "Good to Great", author: "Someone"), Book(title: "Hacking Growth", author: "Somebody")]
        let customer1 = Customer(id: "\(Customer.id)", name: "Son", books: books)
        Customer.id += 1
        let customer2 = Customer(id: "\(Customer.id)", name: "Dele", books: books)
        Customer.id += 1
        let customer3 = Customer(id: "\(Customer.id)", name: "Kane", books: books)
        Customer.id += 1
        
        db.child("customers").child(customer1.id).setValue(customer1.toDictionary)
        db.child("customers").child(customer2.id).setValue(customer2.toDictionary)
        db.child("customers").child(customer3.id).setValue(customer3.toDictionary)
    }
}

// MARK: Read(Fetch) Data
extension ViewController {
    func fetchCustomers() {
        db.child("customers").observeSingleEvent(of: .value) { snapshot in
            print("--> \(snapshot.value)")
            do {
                let data = try JSONSerialization.data(withJSONObject: snapshot.value, options: [])
                let decoder = JSONDecoder()
                let customers: [Customer] = try decoder.decode([Customer].self, from: data)
                self.customers = customers
                DispatchQueue.main.async {
                    self.numOfCustomers.text = "# of Customers: \(customers.count)"
                }
            } catch let error {
                print("--> error: \(error.localizedDescription)")
            }
        }
    }
}

extension ViewController {
    func updateBasicTypes() {
//        db.child("int").setValue(3)
//        db.child("double").setValue(3.5)
//        db.child("string").setValue("string value : hi!")
        db.updateChildValues(["int": 6])
    }
    
    func deleteBasicTypes() {
        db.child("int").removeValue()
        db.child("double").removeValue()
        db.child("string").removeValue()
    }
}

struct Customer: Codable {
    let id: String
    var name: String
    let books: [Book]
    
    var toDictionary: [String: Any] {
        let booksArray = books.map{ $0.toDictonary }
        let dict: [String: Any] = ["id": id, "name": name, "books": booksArray]
        return dict
    }
    
    static var id: Int = 0
}

struct Book: Codable {
    let title: String
    let author: String
    
    var toDictonary: [String: Any] {
        let dict: [String: Any] = ["title": title, "author": author]
        return dict
    }
}
