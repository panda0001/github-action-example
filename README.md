# Introduction
- Github Action Example.
- Github Action Usage And Note.

# Usage

- 建立YAML格式的workflow檔案到[.githbu/workflows](.githbu/workflows).
- 一個YAML檔代表一個workflow.
- workflow撰寫語法可以參考 [Workflow syntax](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions).
- 需要範本可以參考 [Actions in GitHub Marketplace](https://github.com/marketplace?type=actions) .(許多Action可以直接使用)
- workflow中需要使用一些機敏資訊(如:密碼)時,可以透過[Encrypted secrets](https://docs.github.com/en/actions/reference/encrypted-secrets)來儲存.
- workflow中可以直接取用secrets. 

# Reference
- [GitHub Actions Docs](https://docs.github.com/en/actions)
- [Encrypted secrets](https://docs.github.com/en/actions/reference/encrypted-secrets)
