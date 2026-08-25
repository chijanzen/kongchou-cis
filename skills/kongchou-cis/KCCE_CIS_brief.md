# 港洲營建事業 — CIS 攜帶版規範（給任何 AI 用）

> 這是可攜的單檔品牌規範。要讓 AI（Hermes / GPT / Claude / NotebookLM…）依港洲 CIS
> 產簡報、網頁、報告或任何對外物，就把本檔內容貼進它的 system prompt 或上傳為知識檔。
> **純文字規範可直接貼；logo 圖檔請見文末「資產取得」段。**

## 使用方式（依平台）
- **貼 system prompt / 一般 chat（GPT、Hermes、API 模型）**：整段貼上「品牌基本～Do/Don't」即可。
- **上傳知識檔（Custom GPT、Claude Projects）**：連同 `design-tokens.json` 與 logo PNG 一起上傳。
- **NotebookLM**：僅作查詢參考（回答顏色/規範），無法生成帶 logo 的成品。
- **產 HTML/簡報時**：logo 用文末的「取得方式」擇一（托管網址最佳）。

---

## 一、品牌基本
- 中文名：港洲營建事業
- 英文名：KONG CHOU CONSTRUCTION ENTERPRISE
- 標語：地平線上的新藝術　The new art on horizon.
- 品牌精神：專業 Profession · 誠信 Integrity · 創新 Innovation

## 二、標準色（藍為主 60–70%，綠為輔與強調；紅/金一般簡報網頁不用）
| 用途 | 名稱 | HEX |
|---|---|---|
| 主色（品牌藍） | brand_blue | `#1B4E96` |
| 深藍（封面/頁尾底） | blue_dark | `#143C74` |
| 中藍（漸層/hover） | blue_mid | `#2E74C4` |
| 淺藍（區塊底） | blue_soft | `#E9F1FB` |
| 商標綠（強調） | brand_green | `#2E9130` |
| 中綠 | green_mid | `#4CB749` |
| 淺綠（區塊底） | green_soft | `#EAF6E9` |
| 主文字 | ink | `#14243A` |
| 副文字 | ink_soft | `#4A5A6E` |
| 分隔線 | line | `#DCE4EE` |
| 底色 | paper | `#F6F9FC` |

## 三、字體
- 中文：Noto Sans TC（網頁）／ Microsoft JhengHei（簡報）
- 英文：Inter（網頁）／ Calibri（簡報）
- 中文標題用粗體；英文副名全大寫並加字距。

## 四、Logo（重點規則）
- 主 logo 檔：**`Kcce_logo.png`**（彩色，含「川」標＋KONG CHOU 字樣）。
- **淺底**用彩色版 `Kcce_logo.png`；**深底**用反白版 `Kcce_logo_white.png`。
- 三山「川」形：藍外、綠中，下方一條基座橫桿。
- 一律與名稱組合鎖定使用，四周留白 ≥ 標誌高度的 1/2。禁止變形、改色、加陰影、旋轉。

## 五、版型
**簡報（8 版型）**：封面(深藍)→目錄→章節分頁(藍)→內容(文+圖)→三欄卡片→數據亮點→左右對照→結尾聯絡頁(深藍)。深底頁放封面與結尾，淺底頁放內容。
**網頁**：品牌條(含 logo)→Hero 首頁→內容區塊→圖文兩欄→綠底行動帶→頁尾。顏色集中在 CSS `:root`，改一處全站同步。
**視覺母題**：交疊三角形(綠/青/藍)＋半調網點，放封面/頁尾角落，不要拉成整條色帶或滿版。

## 六、Do / Don't
- **Do**：一個主色主導、綠色只作點綴與強調；標題與內文字級明顯對比；每頁/每區塊都要有視覺元素。
- **Don't**：不用純藍以外亂加的顏色；不用標題底線或整條色帶；不用米色/暖色底；不置中內文（只置中標題）；不留截斷或溢出文字。

## 七、企業資訊（頁尾/封底用）
- 總公司：台中市西屯區工業區一路 68 號 12 樓
- TEL 04-23584372　FAX 04-23587331　WEB www.kcce.com.tw

---

## 資產取得（logo 圖檔怎麼給 AI）
本機檔案（打包/上傳時附上）：
- `assets/Kcce_logo.png` — 主 logo（淺底）
- `assets/Kcce_logo_white.png` — 反白版（深底）
- `assets/design-tokens.json` — 色彩/字體/資訊的機器可讀來源
- `references/deck-template.pptx`、`references/web-template.html` — 空白範本

三種給法擇一：
1. **托管網址（推薦，一勞永逸）**：把上列 logo 放到公開網址，AI 產 HTML 時直接引用。填入你的網址：
   - `LOGO_LIGHT_URL = https://<你的網址>/Kcce_logo.png`
   - `LOGO_DARK_URL  = https://<你的網址>/Kcce_logo_white.png`
2. **上傳檔案**：Custom GPT / Claude Projects 直接把 PNG 當知識檔上傳，模型可看圖並填入範本。
3. **base64 內嵌**：要單檔自包含的 HTML/EDM 時，把 PNG 轉 base64 data-URI 貼進 `<img src="...">`（如需我可即時產出 data-URI）。
