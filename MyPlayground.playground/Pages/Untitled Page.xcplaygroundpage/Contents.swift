import UIKit

// https://developer.apple.com/develop/ = 애플개발문서 사이트
// import = 프레임워크(여러코드를 포장해놓은것)
// swift의 콘솔로그
// print : 단순 문자열 출력
// dump : 인스턴스의 자세한 설명(description 프로퍼티)까지 출력
// 문자열 보관법: \()


// 상수 선언 키워드 let = 차후에 변경이 불가능한 상수
// 변수 선언 키워드 var = 차후에 변경이 가능한 변수
// 스위프트에서 세미콜론(;) 은 한줄에 두개이상의 문장을 작성할때 사용한다.
// var hello = "Hello playground"; print(hello)

// var 변수
var hello = "Hello playground"

// print는 함수로 불린다
print(hello)
// print함수보다 더 상세한 정보를 표시하는 dump
dump(hello)

let a : Int = 4
print(a)

let b = 10
print(b)
var c = 20
print(c)
c = 30
print(c)

let d = 10
print(d)

// 스위프트에서는 데이터 타입을 안써도 된다 ex) let b = 10

// ----------------------------------------------------

// let 상수
// let상수는 var변수와 다르게 한 상수에 한개의 값만 저장 할 수 있다
// 값을 저장할때는 일단 상수로 선언했다가 나중에 값을 바꿔야할때 변수로 바꾸는게 좋다
// 상수로 선언하면 안정성이 높아지고 좀 더 빠른 코드를 만들 수 있다

// ----------------------------------------------------

let apple = 3
let oranges = 6
let appleSummary = "I have \(apple) apple"
let fruitSummary = "I have \(apple + oranges) fruits"

print(appleSummary)
print(fruitSummary)

// ---------------------------------------------------

var name: String = "moon"
let brithday: Int = 1994

print(name)
// :String, :Int, :Float > 타입 어노테이션(자료형)

name = "문이"
print(name)

print("\(name) 안녕 \(brithday) 에 태어난")

// 배열과 딕셔너리 = 배열과 딕셔너리는 모두 대괄호[] 를 이용해서 정의할 수 있다
var languages = ["Swift", "objective-C", "Python"]
var Contry = [
   "한국" : "서울",
   "일본" : "도쿄",
   "중국" : "베이징"
]
// 배열과 딕셔너리에 접근하거나 값을 변경할 때에도 대괄호를 사용한다.

// 1. 값을 불러올때
languages[2]
Contry["일본"]

// 2. 값을 변경할때 = 당연히 var 변수로 선언할 때에만 값을 변경할 수 있고 let 상수로 선언할 땐 변경불가
languages[2] = "hello"
Contry["일본"] = "미국"

languages[2]
Contry["일본"] // 위에서 미국으로 변경했기에 기존의 이름을 호출하더라도 변경된 이름으로 호출된다.

var helloWorld = ["대한민국", "일본", "대만", "베트남", "미국", "캐나다", "호주", "영국"]
helloWorld[5]

// 조건문과 반복문

var M = "짱구"
var B = "유리"
var C = "철수"

if M == "유리" {
    print("정답!")
} else {
    print("M는 \(M) 입니다")
}
if B == "철수" {
    print("정답!")
} else {
    print("B는 \(B) 입니다")
}
if C == "철수" {
    print("철수! 정답!")
}


var agee = 19
var studentt = ""

// if문
if agee >= 8 && agee < 14 { // 8살 ~ 14살 사이를 초등학생으로 불리언값을 반환
    studentt = "초등학생"
} else if agee < 17 { // B가 A보다 큰값인지 확인하여 불리언값을 반환 > 17살이 20살보다 나이가 많은지 확인하여 불리언값을 반환 많지않으니 중학생으로 반환
    studentt = "중학생"
} else if agee < 20 {
    studentt = "고등학생"
} else {
    studentt = "성인"
}
print(studentt)

var age = 20
var student = ""

// switch 문
switch age {
case 8..<14:
    student = "초등학생"
case 14..<17:
    student = "중학생"
case 17..<20:
    student = "고등학생"
default:
    student = "기타"
}

print(student)

var e = "e"

switch e {
case "E" :
    print("E")
case "e" :
    print("e")
default:
    print("?")
    break
}

var f = "A"

switch f {
    case "A"..."Z" :
        print("대문자")
case "a"..."z" :
        print("소문자")
default:
    print("?")
    break
}

var test = 300

switch test {
case 200 :
    print("이백")
case 300 :
    print("삼백")
case 100 :
    print("일백")
default:
    print("존재하지 않습니다.")
    }

var money = 5000
var yummy = ""

if money >= 100 && money < 1000{ // 100원 ~ 1000원 사이
    yummy = "새콤달콤 드세요"
} else if money < 2000 {
    yummy = "과자 한봉지 드세요"
} else if money < 3000 {
    yummy = "컵라면과 김밥 가능합니다"
} else if money < 4000 {
    yummy = "컵라면 김밥 음료수 가능"
} else if money < 5000 {
    yummy = "맥주도 가능"
} else if money < 6000 {
    yummy = "만수르"
}
print(yummy)



// for, while
// for: 반복문
// while: 조건문

// for문: 일정 횟수 동안 반복해야 하는 경우 (바구니 객체에서 하나씩 꺼내서 처리하고 싶을 때)
// while문: 일정 조건이 유지되는 동안

let firstName : [String] = ["kim", "park", "lee", "Chang"]

for star in firstName {
    print("Name is \(star)")
}

/*
for i in stride(from: 0, to: 4, by: 2){
    print("\(i)")
}

for i in 0...4 {
    print("\(i)")
}
*/

for k in 0...10 { // 0부터 10까지 반복하기
    print(k)
}

// 합 구하기
var total:Int = 0
for i in 0 ... 3{
    print(i)
    total = total + i
}
print("total = \(total)")

var Festival = 1
while Festival <= 10 {
    print(Festival)
    Festival += 1
}

// 컬렉션타입 (Collection Type) : 데이터관리 및 사용

// 1.배열 : 같은 데이터 타입의 값들을 순서대로 저장하는 리스트 즉 데이터들의 집합
// 배열 선언
var Name2 : Array<String> = ["song", "kim", "kang", "son", "park", "lee"]
var number : [Int] = [10,8,3,7]

// 배열에 요소 추가하는 방법
Name2 += ["choi"] // 배열에 요소 추가
Name2 += ["hwang"]
Name2 += ["kwon"]
number.append(99) // append를 이용하여 배열에 요소 추가
number.append(30)
number.append(29)

// 배열 접근
print(Name2)
print(Name2[0]) // 0의 자리 요소
print(Name2[3]) // 3의 자리 요소
print(Name2.first) // 첫번째 요소
print(Name2.last) // 마지막 요소
print(number) // number 출력
print(number[3]) // number 3의 자리 요소
print(number.last) // number 마지막 요소

// 배열 복사
let Backup = Name2
print(Backup)



// 2.딕셔너리 : 순서없이 키(key) 와 값(value) 한 쌍으로 데이터를 저장하는 컬렉션 타입
var namedic : [String : Int] = ["song":4, "kim":8, "kang":15, "park":8, "choi":4]

// 딕셔너리 추가
namedic["dong"] = 10
namedic["son"] = 7

// key값과 value값
print(namedic.keys) // 딕셔너리의 키값들
print(namedic.values) // 딕셔너리의 값들

// 딕셔너리 접근
print(namedic["song"])
print(namedic["kang"])
print(namedic["son"])
print(namedic["dong"])

// 딕셔너리의 키를 배열로 가져오기
let namestr = [String](namedic.keys)
print(namestr)

// 3.세트 : 같은 데이터 타입의 값들을 순서없이 저장하는 리스트, 세트에서는 순서가 없기 때문에 서로 같은 값들을 구분 할 수 없다.
// 그래서 세트에서는 중복된 값은 허용되지 않는다.

let subway : Set = ["주안", "동암", "부평", "송내", "부천", "역곡", "신도림"]
var subway2 : Set = ["구로", "신도림", "홍대", "합정", "신촌", "부평", "신도림"]

// 교집합을 새로운 set으로 만들어줌 (중복된 값 호출)
let transfer = subway2.intersection(subway) // intersection > 두 세트에 대해 교집합을 새로운 세트로 만들어줌
print(transfer)

// subway2에서 차집합을 새로운 set으로 만들어줌 (중복된 값 삭제된 채 호출)
let nottransfer = subway2.subtracting(subway) // subtraction > 두 세트에 대해 차집합을 새로운 세트로 만들어줌
print(nottransfer)

// 합집합을 새로운 set으로 만들어줌 (subway 와 subway2 통합)
let union = subway2.union(subway) // union > 두 세트에 대해 합집합을 새로운 세트로 만들어줌
print(union)

// 데이터 추가
subway2.insert("군자")
print(subway2)

// 데이터 삭제
subway2.remove("군자")
print(subway2)
