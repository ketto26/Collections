/*                  -- 1 --
 შექმენით array, შემდეგ პირველ და ბოლო ელემენტს გაუცვალეთ ადგილი, გამზადებული ან უკვე არსებული ფუნქციის გარეშე.  (array-ის ტიპს არაქვს მნიშვნელობა).
 */
var fruitsArray = ["Apple", "Cherry", "Banana", "Strawberry", "Cherry"]

if fruitsArray.count >= 2 {
    let temporaryFruit = fruitsArray[0]
    fruitsArray[0] = fruitsArray[fruitsArray.count - 1]
    fruitsArray[fruitsArray.count - 1] = temporaryFruit
}
print(fruitsArray)
print()







/*                  -- 2 --
 შექმენით array, მასში წაშალეთ ნახევარი ელემენტები, თუ კენტი რაოდენობის იქნა დატოვეთ ნაკლები და წაშალეთ მეტი.  მაგ.: თუ იყო 11 ელემენტი 5 დატოვეთ და 6 წაშალეთ. და დაბეჭდეთ მიღებული შედეგი. (array-ის ტიპს არაქვს მნიშვნელობა).
 */
var grades = [78, 59, 80, 77, 82, 85, 88]

if grades.count.isMultiple(of: 2){
    grades.removeFirst(grades.count/2)
}else{
    grades.removeFirst((grades.count+1)/2)
}
print(grades)
print()






/*                   -- 3 --
 შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის  გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array.
 */
var tenNumbers = [Int]()
var oddNumbers = [Int]()
var evenNumbers = [Int]()

for i in 1...10{
    tenNumbers.append(i)
}

for numb in tenNumbers{
    if numb.isMultiple(of: 2){
        evenNumbers.append(numb)
    }else{
        oddNumbers.append(numb)
    }
}

print("Odd numbers array: \(oddNumbers)")
print("Even numbers array: \(evenNumbers)")
print()







/*                  -- 4 --
 შექმენით Double-ების array, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ array-ში.
 */
var timeDurations = [14.6, 45.7, 30.5, 29.8, 58.9]

timeDurations.sort(by: >)
print("The longest recorded time was: \(timeDurations[0])")
print()







/*                  -- 5 --
 შექმენით ორი Int-ების array, შეავსეთ პირველი array 8, 4, 9, 9, 0, 2, და მეორე array 1, 0, 9, 2, 3, 7, 0, 1 ამ რიცხვებით. გააერთიანეთ ეს ორი array ერთ დასორტილ array-ში, ანუ შედეგი უნდა მიიღოთ ასეთი: 0, 0, 0, 1, 1, 2, 2, 3, 4, 7, 8, 9, 9, არ გამოიყენოთ sorted() ან რაიმე სხვა უკვე არსებული მეთოდი swift-იდან. დაბეჭდეთ მიღებული დასორტილი array.
 */
var firstPersonRates = [8, 4, 9, 9, 0, 2]
var secondPersonRates = [1, 0, 9, 2, 3, 7, 0, 1]

func sortingArray (_ arrays: [Int]) -> [Int]{
    var arr = arrays
    for _ in 0..<arr.count - 1{
        for j in 0..<arr.count - 1 {
            if arr[j] > arr[j + 1] {
                var temporaryValue = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temporaryValue
            }
        }
    }
    return arr
}

var finalArray = sortingArray(firstPersonRates + secondPersonRates)
print(finalArray)
print()








/*                  -- 6 --
 შექმენით String ტიპის ცვლადი და შეამოწმეთ არის თუ არა ყველა ჩარაქტერი ამ სტრინგში უნიკალური. გამოიყენეთ Set-ი ამ თასკის შესასრულებლად.
 */
let artistName = "Taylor Swift"
let artistSet = Set(artistName)

if artistName.count == artistSet.count {
    print("All characters are unique!")
}else{
    print("We have duplicated characters")
}
print()







/*                  -- 7 --
 შექმენით ორი Int-ების Set. გამოიყენეთ მათზე Set-ის მეთოდები როგორიცაა: union, intersection და difference. დაბეჭდეთ შედეგები.
 */

let firstSet: Set = [9, 26, 81, 18, 16, 23]
let secondSet: Set = [23, 3, 6, 9, 12, 57, 19]

let setsUnion = firstSet.union(secondSet)
let setsIntersection = firstSet.intersection(secondSet)
let setsDifference = firstSet.subtracting(secondSet)
let setsSecondDifference = secondSet.subtracting(firstSet)

print(setsUnion)
print(setsIntersection)
print(setsDifference)
print(setsSecondDifference)
print()







/*                  -- 8 --
 შექმენით ორი String-ის Set. შეამოწმეთ არის თუ არა პირველი String-ის Set, მეორეს sub-Set-ი. დაბეჭდეთ შედეგი.
 */
let favouriteFruits: Set = ["Mango", "Kiwi", "Orange"]
let fruitsSet: Set = ["Apple", "Cherry", "Banana", "Strawberry", "Orange"]

if favouriteFruits.isSubset(of: fruitsSet){
    print("First set is sub-set of second set")
}else{
    print("First set isn't sub-set of second one")
}
print()







/*                  -- 9 --
 შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)
 */
let friends = ["Luffy", "Zoro", "Sanji", "Robin", "Boa", "Zoro"]

if friends.count == Set(friends).count{
    print("array-ში ყველა ელემენტი განსხვავებულია")
}else{
    print("array შეიცავს მსგავს ელემენტებს")
}
print()







/*                  -- 10 --
 შექმენით Dictionary, სადაც იქნება ფილმის სახელები და მათი რეიტინგები, რეიტინგი (0-10). დაამატეთ მინიმუმ 5 ფილმი, ამის შემდეგ გამოთვალეთ ამ Dictionary-ში არსებული ფილმების საშვალო რეიტინგი. დაბეჭდეთ მიღებული შედეგი.
 */
var ratings: [String: Double] = [
    "Movie 1": 9.2,
    "Movie 2": 4.6,
    "Movie 3": 7.4,
    "Movie 4": 8.9,
    "Movie 5": 5.5,
    "Movie 6": 9.7,
    "Movie 7": 9.8
]

let averageRating = (ratings.values.reduce(0, +))/Double(ratings.count)
print("The average rateing of selected movies is \(averageRating)")


