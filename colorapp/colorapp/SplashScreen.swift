import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false  // 스플래시 화면 활성화 상태 변수

    var body: some View {
        if isActive {
            // 스플래시가 끝난 후 나타나는 ContentView
            ContentView()
        } else {
            // 스플래시 화면
            VStack {
                Image("logo")  // Assets에 추가한 logo.png 파일을 불러옵니다.
                    .resizable()  // 이미지 크기 조정 가능
                    .aspectRatio(contentMode: .fit)  // 비율에 맞게 크기 조정
                    .frame(width: 200, height: 200)  // 이미지 크기 설정
                    
            }
            .onAppear {
                // 스플래시 화면을 2초 후에 종료
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        isActive = true  // 스플래시 화면 종료
                    }
                }
            }
            .background(Color.white)  // 스플래시 화면 배경색 설정
            .edgesIgnoringSafeArea(.all)  // 안전 영역 무시
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()  // SplashScreen 미리보기
    }
}

