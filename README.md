# MacSetting

## 사용중인 맥

Macbook Pro M1 8G

## 프로그램

\*표 되어있는 프로그램은 자동 설치되지 않으므로 개별 설치 해야함

**1. Development Tools**

- **IDE/에디터:**
  - Visual Studio
  - PyCharm
  - IntelliJ IDEA
  - Cursor
- **데이터베이스 도구:**
  - Postman
  - TablePlus
- **컨테이너:**
  - Docker

**2. Communication**

- Slack
- KakaoTalk \*
- Discord

**3. Utility**

- **웹 브라우저:**
  - Chrome
- **터미널:**
  - iTerm2
  - Amazon Q
- **생산성 앱:**
  - Notion
  - Microsoft To Do \*
- **번역:**
  - DeepL
- **시스템/화면 관리:**
  - Runcat \* : 모니터링 도구
  - Rectangle : 화면 분할 단축키

**4. AI Tools**

- ChatGPT
- Perplexity AI \*

**5. Office/Cloud**

- Office 365 \*
- OneDrive
- 한컴오피스 한글뷰어 \*

따로 앱스토어에서 설치해야하는 프로그램

- Kakaotalk, Microsoft To Do, Runcat
- ChatGPT, Perplexity AI
- Office365, OneDrive, 한컴오피스 한글 뷰어

## 홈브루, VSC 개인 세팅 하는 법

홈브루 번들 리스트 출력

```jsx
brew bundle dump
```

생성된 brewfile 파일 덮어쓰기

VSCode 확장 리스트 출력 후 실행 가능한 셸 스크립트 생성

```jsx
code --list-extensions | xargs -L 1 echo code --install-extension > vsce.sh
```

생성된 vsce.sh 파일 덮어쓰기

## 자동 세팅

일괄 설치

```jsx
bash ./src/autoset.sh
```

## 참고한 프로젝트

[J-Hoplin / My-MacOS-Config](https://github.com/J-Hoplin/My-MacOS-Config)
