# Homebrew binary-analyzer

| 용어 | 설명 |
| -- | -- |
| **Formula** | 패키지 설치 방법을 정의한 Ruby 스크립트 파일.<br/>맥주 제조를 위한 재료와 방법을 기술한 레시피.<br/>(📂 `/opt/homebrew/Library/Taps/homebrew/homebrew-core/Formula`) |
| **Bottle** | 미리 컴파일된 패키지 버전으로, 설치 시간을 크게 단축시킴.<br/>맥주를 담아 판매하거나 보관하는 유리병. |
| **Tap** | 공식 저장소 외에 사용자가 추가하여 사용할 수 있는 Formula 저장소.<br/>맥주를 따르는 데 사용되는 밸브나 꼭지.<br/>(📂 `/opt/homebrew/Library/Taps`) |
| **Cellar** | Homebrew가 패키지를 설치하는 디렉토리.<br/>맥주를 저장하고 숙성시키는 공간.<br/>(📂 `/opt/homebrew/Cellar`) |

## Install

```shell
brew tap pokeum/binary-analyzer
brew install binary-analyzer
```

## Uninstall

```shell
brew uninstall binary-analyzer
brew untap pokeum/binary-analyzer
```
