//: Playground - noun: a place where people can play

//wcl买一辆suv
var suv: Car = Suv(owner: "wcl")
//装配沙发
suv = Sofa().decorator(suv)
//装配发动机
suv = Engine().decorator(suv)
//装配安全系统
suv = Safety().decorator(suv)
suv.showParts()
print("一共花了\(suv.howMuch())W")

print("\n")
//wcl买一辆mpv
var mpv: Car = Mpv(owner: "wcl")
//装配发动机
mpv = Engine().decorator(mpv)
//装配安全系统
mpv = Safety().decorator(mpv)
mpv.showParts()
print("一共花了\(mpv.howMuch())W")