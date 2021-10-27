
var terminal = Terminal()


terminal.sumAllCash()
print()


print(terminal.getCash(sum: 56420))

print()
terminal.sumAllCash()
print()

print("Проверка остатка банкнот: ")
print()

for i in 0...7 {
    print(terminal.bank[i])
}

print()
terminal.payMoney(pay: [5000, 20, 100, 1000, 2000, 20, 50, 100])
print()


print("Проверка остатка банкнот: ")

for i in 0...7 {
    print(terminal.bank[i])
}


















