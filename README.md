# trial-fastapi

### 1. 起動方法
#### 1.1 コンテナ起動
`docker-compose up -d`

#### 1.2 webサーバー起動
`docker-compose exec app uvicorn app.main:app --reload --host 0.0.0.0 --port 8000`

### 2. リクエスト方法
'IPアドレス:8000'

### 3. テスト実行方法
`docker-compose exec app pytest`

### 4. マイグレーション
1. コンテナ内に入って `app/db` ディレクトリに移動
2. `alembic revision --autogenerate`
3. `alembic upgrade head`