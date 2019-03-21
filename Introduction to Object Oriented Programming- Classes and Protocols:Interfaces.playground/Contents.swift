import UIKit

protocol GroceryItem{
    func price() -> Float
    func description() -> String
}

struct Apple: GroceryItem{
    var name: String
    var cost: Float
    
    func price() -> Float {
        return cost
    }
    
    func description() -> String {
        return name
    }
}

struct Meat: GroceryItem{
    var name: String
    var cost: Float
    var weight: Float
    
    func price() -> Float{
        return cost * weight
    }
    
    func description() -> String {
        return name
    }
}

struct Customer{
    var name: String
    var groceries: [GroceryItem]
//    var groceries: [Any]
}

struct Grocery{
    func printBuyReceipt(customer: Customer){
        print("You are the client: \(customer.name)")
        
        var total: Float = 0
        
        customer.groceries.forEach { (item) in
            
            total += item.price()
            print("precio:\(item.description()),total: \(item.price())")
            
            //1
//            if let item = item as? GroceryItem{
//
//                total += item.price()
//                print("precio:\(item.description()),total: \(item.price())")
//            }
            
            //2
//            if let apple = item as? Apple{
//                total += apple.cost
//                print("customer: \(customer.name), \(apple.name), total: \(apple.cost)")
//            }else if let meat = item as? Meat{
//                total += meat.weight * meat.cost
//                print("customer: \(customer.name), \(meat.name), total: \(meat.weight * meat.cost)")
//            }
        }
        
        print("total: \(total)")
    }
}

let milanesaPollo = Meat(name: "Milanesa de pollo", cost: 200, weight: 1.5)
let apple = Apple(name: "Manzana", cost: 7)
let Bill = Customer(name: "Bill", groceries: [apple, milanesaPollo])
let theBestGrocery = Grocery()
theBestGrocery.printBuyReceipt(customer: Bill)
