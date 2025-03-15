InstApp2 開発進捗（2025 年 3 月 15 日時点）

https://near-rock-883.notion.site/18d5dddf3eb7805691b6c80d8fdd572f?pvs=4

# アプリ概要

内定者・内々定者が入社前インストラクションを円滑に進め、モチベーションを維持しつつ効率よく進めることを目的としたタスク管理アプリです。Rails API + Vue + MySQL で開発しています。

# 構成

バックエンド: Ruby on Rails 8.0.2（API モード）

フロントエンド: Vue 3 + Vite

データベース: MySQL

# 機能要件

1. インストの可視化とモチベーション維持

タスクを表形式で一覧表示

各タスクをクリックして詳細画面を表示

タスクのカテゴリ別に「達成後のストーリー」を表示

2. 進捗管理

現在の進捗状況（完了数、未完了数）表示

タスクごとに推定完了時間を表示

将来的に稼働管理表と連携予定

3. データ蓄積

タスクごとにメモ（Q&A 形式）を残せる

メモは他ユーザーも閲覧可能

実際にかかった時間を記録・集計予定

# ER 図概要

User (id, name, user_type_id, department, 他)

UserType (id, name)

Category (id, name)

Task (id, title, description, estimated_time, position, priority, category_id, user_type_id)

Progress (id, user_id, task_id, status, 他)

Note (id, task_id, user_id, content)

# 実装済みの API

## Task API
```
GET /api/v1/tasks（タスク一覧取得）

GET /api/v1/tasks/:id（個別タスク取得）

POST /api/v1/tasks（新規タスク作成）

PUT/PATCH /api/v1/tasks/:id（タスク更新）

DELETE /api/v1/tasks/:id（タスク削除）
```
# フロントエンド

Vue 3 と Vite を使用してタスク一覧表示画面を実装済み

Axios 経由で Rails API と通信

## Vue の現状構造
```
src/
├── App.vue
├── apiClient.js
├── components/
│ └── Tasklist.vue
├── main.js
├── package.json
└── vite.config.js
```
# 今後の TODO

- [] ユーザー認証の導入（候補: Devise + JWT）

- [] タスク進捗表示画面の作成

- [] Vue コンポーネントの拡充（タスク詳細表示、メモ追加機能）

- [] 稼働管理表との連携（Google Sheets API など）

- [] UI 改善（ドラッグ＆ドロップ対応等）
