import UIKit

protocol Product {
    func name() -> String
    func price() -> Int
    func stok() -> Int
}

class Aqua : Product {
    func name() -> String {
        return "Aqua"
    }
    
    func price() -> Int {
        return 5000
    }
    
    func stok() -> Int {
        return 5
    }
}

class TehBotol : Product {
    func name() -> String {
        return "Teh Botol"
    }
    
    func price() -> Int {
        return 7000
    }
    
    func stok() -> Int {
        return 0
    }
    
    
}

class PocariSweat : Product {
    func name() -> String {
        return "Pocari Sweat"
    }
    
    func price() -> Int {
        return 10000
    }
    
    func stok() -> Int {
        return 10
    }
}

class VirtualMachine {
    
    func bayar(product:Product,jumlah:Int,uang:[Int]){
        let name = product.name()
        let price = Int(product.price())
        let stok = Int(product.stok())
        var jumlahUang = [Int]()
        
        if jumlah != 0 {
            if jumlah > stok {
                print("Stok Habis")
            } else {
                //2000 5000 10000 20000
                let total = price * jumlah
                for field in uang {
                    if field == 2000 {
                        jumlahUang.append(field)
                    } else if  field == 5000 {
                        jumlahUang.append(field)
                    } else if field == 10000 {
                        jumlahUang.append(field)
                    } else if field == 20000 {
                        jumlahUang.append(field)
                    } else {
                        print("uang tidak terdeteksi")
                        break
                    }
                }
                let jmlUang = jumlahUang.reduce(0,+)
                if jmlUang >= total {
                     print("charging customer Rp \(total) for \(name) Kembalian \(jmlUang - total)" )
                } else {
                    print("Kurang Bayar")
                }
               
            }
        }
        
        
    }
}

let checkOutManager = VirtualMachine()
let aqua = Aqua()
let tehBotol = TehBotol()
let pocari = PocariSweat()

checkOutManager.bayar(product: aqua, jumlah: 3, uang: [20000,1000])
