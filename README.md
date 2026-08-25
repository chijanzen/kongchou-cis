<p align="center">
  <img src="skills/kongchou-cis/assets/Kcce_logo.png" width="160" alt="KONG CHOU">
</p>

<h1 align="center">港洲營建事業 CIS Skill</h1>

<p align="center">
  <b>KONG CHOU CONSTRUCTION ENTERPRISE — 企業識別系統（CIS）</b><br>
  生成簡報／網頁／報告時，一律先套用此品牌視覺規範（色彩・字體・logo・版型）再填內容。
</p>

---

## 這是什麼

一個可安裝、可跨 AI 使用的**品牌識別 skill**。把港洲的色彩、字體、logo、版型與 Do/Don't
封裝成單一來源，讓 Claude Code、GPT、Cursor、Codex、NotebookLM 等產出的對外物都符合 CIS。

## 安裝（Claude Code plugin）

```bash
/plugin marketplace add chijanzen/kongchou-cis
/plugin install kongchou-cis@kongchou-cis
```

安裝後遇到港洲相關的簡報／網頁需求，Claude 會自動載入 `skills/kongchou-cis/SKILL.md` 規範。

## 給其他 AI 用

| 平台 | 做法 |
|---|---|
| **GPT / Cursor / Codex** | 把 [`skills/kongchou-cis/SKILL.md`](skills/kongchou-cis/SKILL.md) 或攜帶版 [`KCCE_CIS_brief.md`](skills/kongchou-cis/KCCE_CIS_brief.md) 貼進 system prompt／當知識檔上傳 |
| **NotebookLM** | 上傳 `KCCE_CIS_brief.md` + logo 當來源，生成簡報時貼 [`notebooklm_prompt.md`](skills/kongchou-cis/notebooklm_prompt.md) 的自訂提示 |
| **任何產 HTML/EDM** | 直接引用下方 logo CDN 網址 |

## Logo（CDN 直接引用）

推上 GitHub 後即可用 jsDelivr CDN 引用（`<img src="...">` 或任何 AI 產的網頁）：

```
彩色（淺底）：https://cdn.jsdelivr.net/gh/chijanzen/kongchou-cis@main/skills/kongchou-cis/assets/Kcce_logo.png
反白（深底）：https://cdn.jsdelivr.net/gh/chijanzen/kongchou-cis@main/skills/kongchou-cis/assets/Kcce_logo_white.png
```

## 品牌重點

- 主色 **品牌藍 `#1B4E96`**（佔 60–70%）、深藍 `#143C74`（封面/結尾底）、商標綠 `#2E9130`（點綴）
- 白底 `#F6F9FC`、主文字 `#14243A`；**不用**紅/金/暖色
- 中文黑體、英文全大寫加字距；標題置中、內文靠左
- 完整機器可讀值見 [`design-tokens.json`](skills/kongchou-cis/assets/design-tokens.json)

## 內容

```
.claude-plugin/            plugin + marketplace 設定（一鍵安裝）
skills/kongchou-cis/
  SKILL.md                 CIS 規範（skill 本體）
  KCCE_CIS_brief.md        攜帶版單檔規範（貼 prompt / 上傳用）
  notebooklm_prompt.md     NotebookLM 簡報自訂提示
  assets/                  Kcce_logo.png / _white / design-tokens.json / 向量
  references/              deck-template.pptx、web-template.html 空白範本
```

## License

[MIT](LICENSE) © 2026 港洲營建事業 KONG CHOU CONSTRUCTION ENTERPRISE
