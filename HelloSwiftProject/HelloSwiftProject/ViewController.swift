//
//  ViewController.swift
//  HelloSwiftProject
//
//  Created by ByungMoon Kim on 2023/09/12.
//

// https://developer.apple.com/develop/ = 애플개발문서 사이트
// import = 프레임워크(여러코드를 포장해놓은것)
// swift의 콘솔로그
// print : 단순 문자열 출력
// dump : 인스턴스의 자세한 설명(description 프로퍼티)까지 출력
// 문자열 보관법: \()


// 상수 선언 키워드 let = 차후에 변경이 불가능한 상수
// 변수 선언 키워드 var = 차후에 변경이 가능한 상수
// 스위프트에서 세미콜론(;) 은 한줄에 두개이상의 문장을 작성할때 사용한다.
// var hello = "Hello playground"; print(hello)

// var hello = "Hello playground"

// print는 함수로 불린다
// print(hello)
// print함수보다 더 상세한 정보를 표시하는 dump
// dump(hello)

// Outlet: 입력한 값을 코드로 가져오거나, 코드에서 속성을 바꾸고싶을때 아웃렛을 연결해야한다.

/*
// Outlet은 Property(프로퍼티)로 연결
@IBOutlet weak var valueLabel: UILabel!

@IBOutlet weak var inputField: UITextField!

// Action은 Method(메소드)로 연결
@IBAction func showValue(_ sender: Any) {
    let name = inputField.text!
    valueLabel.text = "Hello, \(name)"
 */

import UIKit
import MapKit
import CoreLocation
// CoreLocation: 현재위치등을 표현하고 싶다면 권한필요
// 중심, 범위 지정, 핀(어노테이션)

@IBOutlet weak var valueMap: UILabel!
    
    let MyMap = MKMapView()
