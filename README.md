# Todayly

A cron-friendly Bash script that fetches "What happened on this day" data
from an external API and updates the Slack profile status.

---

## Overview

This script is designed to run safely under `cron`.
It explicitly uses Bash to avoid common shell compatibility issues and
relies on environment variables for handling sensitive information.

---

## Features

- Fetches daily "on this day / anniversary" data from an external API
- Updates Slack profile status automatically
- Designed for cron execution
- Explicit Bash execution via shebang
- Minimal and transparent implementation

---

## Requirements

- Linux (tested on Ubuntu / Debian)
- bash
- curl
- jq
- Slack OAuth Token with the following scope:
  - `users.profile:write`

---

## Setup

### 1. Install dependencies
sudo apt install curl jq


 
# 日本語訳　Todayly

外部 API から「今日は何の日か」のデータを取得し、  
Slack のプロフィールステータスを更新するための  
cron 実行向け Bash スクリプトです。

---

## 概要

このスクリプトは `cron` から安全に実行されることを前提に設計されています。  
シェル互換性の問題を避けるため Bash を明示的に使用し、  
機密情報は環境変数で管理します。

---

## 特徴

- 外部 API から「今日は何の日か（記念日）」の情報を取得
- Slack のプロフィールステータスを自動更新
- cron 実行を前提とした設計
- shebang による Bash の明示指定
- 最小構成で分かりやすい実装

---

## 前提条件（Requirements）

- Linux（Ubuntu / Debian で動作確認済み）
- bash
- curl
- jq
- 以下のスコープを持つ Slack OAuth Token
  - `users.profile:write`

---

## セットアップ

### 1. 依存パッケージのインストール

```bash
sudo apt install curl jq
