# HubbyBuddy

> 위치 기반으로 함께 취미를 공유할 수 있는 사람을 찾아 즐길 수 있는 소셜 라이프 앱!

## Project Description
* 사용자의 현재 위치를 기반으로 미리 설정해둔 사용자의 취미와 같은 취미를 갖은 주위 사람들을 매칭 및 함께 취미 활동을 즐길 수 있도록 해주는 서비스

## Frameworks & Libraries
* [Snapkit] 프로젝트 내 모든 UI구성은 snapkit을 활용한 코드로만 구현
* [Firebase] Auth를 활용해 휴대폰 번호 인증 및 로그인 기능 구현

## Daily Reports

#### **22.01.18 (화)**

* [Figma] 어플 UI 디자인 받음.
* [SnapKit] 어플의 모든 UI는 Snapkit을 활용한 코드 + SwiftUI 로만 구현 (스토리보드 삭제).
* 휴대폰 번호 인증을 통한 로그인 기능 구현을 위한 LogInView와 LogInViewController 작성 -> 기본 UI 완성
* 레이블, 색상, 뷰 레이어 관리를 위한 (UILabel, UIColor, CALayer)+Extension 파일 작성.

---

#### **22.01.19 (수)**

* Auth 관련 함수들을 관리하는 AuthManager 생성. 

---

#### **22.01.20(목)**

* SMSCodeView, SMSCodeViewController 생성.
* LogInVC에서 휴대폰 번호를 입력하고 버튼 클릭 시 firebase auth에서 reCapcha 진행 후 인증 번호 발송, SMSCodeVC에서 인증 번호 입력 후 다음 버튼 클릭시 1) 회원이면 메인 페이지로, 2) 회원이 아닐 경우 회원가입 페이지로 화면 전환.
* SMSCode 부분 UI완료 및 기능구현 80% 완료 -> 인증 번호 받고 인증 하는 작업까지 완료, 재전송 기능 추가 필요.
* SignUp_Nickname, Birthdate 뷰 파트 UI 셋업 -> Datepicker 공부 해야함

---

#### **22.01.22(금)**

* Scenedelegate에서 앱 실행시, 이미 휴대폰 인증이 완료된 경우 바로 회원가입 파트로 시작할 수 있고, 휴대폰 인증이 안 된경우 휴대폰 인증 페이지에서 시작하게끔 설정.
* SUBirthViewController에 DatePicker wheel스타일 적용 -> datepicker에서 생년월일 선택 시 자동으로 textfields에 입력되게 설정.