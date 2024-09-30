import SwiftUI

struct ContentView: View {
    @State private var searchText = ""  // 사용자가 입력한 검색어를 저장할 상태 변수

    var body: some View {
        VStack {  // 세로로 뷰를 쌓기 위한 VStack
            Text("당신이 원하는 느낌")  // 제목 텍스트
                .font(.title)  // 제목의 폰트 크기를 title로 설정
                .padding()  // 텍스트 주위에 여백 추가

            // 검색창 (TextField)
            TextField("검색어를 입력하세요", text: $searchText)  // 입력할 내용을 지정하는 텍스트 필드
                .padding()  // 텍스트 필드 주위에 여백 추가
                .background(Color.gray.opacity(0.2))  // 회색 배경을 설정 (투명도 0.2)
                .cornerRadius(10)  // 모서리를 둥글게 만들기
                .padding(.horizontal, 20)  // 좌우 여백 추가
                .disableAutocorrection(true)  // 자동 교정 비활성화

            Spacer()  // 아래에 공간을 확보하기 위한 Spacer
        }
        .padding(.top, 100)  // 화면 상단에 여백 추가
    }
}

// 미리보기용 구조체
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()  // ContentView 미리보기
    }
}
