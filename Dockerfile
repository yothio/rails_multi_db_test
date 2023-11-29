
# ベースイメージを指定
FROM ruby:3.2-slim

RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs git libmariadb-dev

# 作業ディレクトリを設定
WORKDIR /app

# GemfileとGemfile.lockをコピー
COPY Gemfile Gemfile.lock ./

# Gemをインストール
RUN bundle install

# アプリケーションのファイルをコピー
COPY . .


CMD ["rails", "server", "-b", "0.0.0.0"]
