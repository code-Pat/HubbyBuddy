# HubbyBuddy

> 위치 기반으로 함께 취미를 공유할 수 있는 사람을 찾아 즐길 수 있는 소셜 라이프 앱!

## Project Description
* 사용자의 현재 위치를 기반으로 미리 설정해둔 사용자의 취미와 같은 취미를 갖은 주위 사람들을 매칭 및 함께 취미 활동을 즐길 수 있도록 해주는 서비스

## Frameworks & Libraries & Design Patterns
* [Snapkit] 프로젝트 내 모든 UI구성은 snapkit을 활용한 코드로만 구현
* [Firebase] Auth를 활용해 휴대폰 번호 인증 및 로그인 기능 구현
* [Moya] Alamofire과 moya의 고민 끝에 조금 더 라이트하고 사이즈가 커졌을때 문제가 적은 moya를 선택 -> 사실 이 정도 규모의 프로젝트에서 둘의 능률이나 단점 면에서 큰 차이는 없다고 생각하지만, alamofire는 이미 사용해 봤기 때문에 moya를 써보고 싶었다.
* MVVM 패턴을 채택 -> User(auth), Shop, Friends 등등 데이터와 화면 구성이 많이 나뉘어 지기 때문에 최대한 균등한 무게감과 추후 편한 관리를 위해 MVVM이 가장 적합하다고 생각함. 물론 연습해보기 위함도 있음.

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
* SUEmailView&ViewController UI 구현.
* SUGenderView&ViewController UI 구현.

---

#### **22.01.24(월)**

* 모든 뷰: uitextfield에서 max count에 다다르면 버튼 백그라운드 색 바꾸는 작업 구현.
* 필요에 따라 textfield 값이 특정 count를 넘어가면 안될 때 limit 걸어주는 작업 구현.
* SMSCode view에 코드 유효 시간을 알려주는 타이머 구현.
* 회원가입 페이지 일괄: textfield에 입력값이 완성 됐을 때 버튼 색상 변경 활성화, 필요에 따라 textfield에 글자 수 제한 두는 기능 구현, textfield 타입에 맞게 키보드 타입 변경 구현.

---

#### **22.01.31(월)**

* RxSwift 공부
* MVVM 패턴 예시 살펴보기

---

#### **22.02.01(화)**

* Model 파일 구성 
* RxSwift 공부

---

#### **22.02.02(수)**

* Observable 파일 생성
* Model- User 생성
* ViewModel - UserViewModel 생성

---

#### **22.02.03(목)**

* View - SeSACHomeView, MyPageView, MyInfoView, SeSACShopView, SeSACFriendView 생성 및 작업
* ViewController - SeSACHomeVC, MyPageVC, MyInfoVC, SeSACShopVC, SeSACFriendVC 생성 및 작업
* MyPageView, MyInfoView UI 기본 작업 완료 -> 추후 reusable ui code 정리하기
* TabbarController 코드로 커스텀 탭바 작업 완료 -> 이미지랑 탭 간격 및 높이는 추후 조정
* SeSACShopView - tableview로 작업 시작 -> 새싹샵은 collectionView로 해야함... 내일 수정하기, sesacfriends 를 tableView 작업

---

#### **22.02.04(금)**

* SeSACFriendView - tableview 작업 시작 -> Friend model, viewmodel 필요
* SeSACShopView - tableview에서 collectionview로 수정 -> Shop model, viewmodel 필요

---

#### **22.02.07(월)**

* SeSACShopView - collection view를 이용해 ui 구성 -> 사이즈랑 이미지 테두리 정리하기
* SeSACShopViewController - 콜렉션 뷰를 도입하는데 조금 이슈가 있어서 시간이 오래걸림, 콜렉션뷰 셀과 뷰, 뷰컨트롤러 세개를 연결해서 코드로 콜렉션 뷰를 구현해보는게 처음이라 조금 어색함 -> 데이터 모델링을 하고나면 다시 하면 정리하기.
* SeSACShopCollectionViewCell - 콜렉션 뷰 셀은 따로 구현함.
* SeSACBaseView - 페이져 탭을 이용해 shop1, shop2 두 화면을 오가야 하기때문에 pager tab에 구애받지 않는 base view와 base viewcontroller를 설정해야함. -> 먼저 했어야 했는데 깜빡하고 shop 페이지를 먼저 구현해버려서 시간이 더 지체됨.
* SeSACShop2View - pager tab으로 넘어가는 배경 탭에 속하는 뷰 UI 구성 완료
* SeSACShop2ViewController - 새싹 샵 배경 탭에 속하는 뷰 컨트롤러, 기본 셋업 완료
* SeSACShop2CollectionViewCell - 새싹 샵 배경 탭에 속하는 콜렉션 뷰 셀, UI 구성 완료

