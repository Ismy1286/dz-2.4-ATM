import Foundation

class Terminal {
    
    var bank = [[5000, 20],
                [2000, 20],
                [1000, 20],
                [500, 20],
                [200, 20],
                [100, 20],
                [50, 20],
                [20, 20]
    ]

    func sumAllCash() {
        var sumCash = 0
        for item in 0...7 {
            sumCash = sumCash + (bank[item][0] * bank[item][1])
        }

        print("(Эта строка только для проверки остатка денег в банкомате)")
        print("Наличность в банкомате: \(sumCash)")
    }

    func getCash(sum: Int) -> [Int] {
        print("Выдача наличных: \(sum)")
        
        var sumResult = sum
        var result: [Int] = []
        
        while sumResult > 0 {
        
            for item in 0...7 {
                let index = sumResult / bank[item][0]
           
                if index > 0 && bank[item][1] > 0 {
                    sumResult = sumResult - (bank[item][0] * index)
                    for _ in 1...index {
                        result.append(bank[item][0])
                        bank[item][1] -= 1
                    }
                }
            }
        }
        return result
    }

    func payMoney(pay: [Int]) {
        
        print("Взнос наличных: \(pay)")
        
        for item in 0...pay.count - 1 {
                
            if pay[item] == 5000 {
                bank[0][1] += 1
            }
            if pay[item] == 2000 {
                bank[1][1] += 1
            }
            if pay[item] == 1000 {
                bank[2][1] += 1
            }
            if pay[item] == 500 {
                bank[3][1] += 1
            }
            if pay[item] == 200 {
                bank[4][1] += 1
            }
            if pay[item] == 100 {
                bank[5][1] += 1
            }
            if pay[item] == 50 {
                bank[6][1] += 1
            }
            if pay[item] == 20 {
                bank[7][1] += 1
            }
        }
    }
}


