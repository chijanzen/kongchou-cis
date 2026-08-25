# NotebookLM × 港洲 CIS — 簡報產出流程

> 目的：用 NotebookLM 快速產出**符合港洲 CIS**的簡報。
> 心法：NotebookLM 是「**以來源為本**」的工具，輸出品質 = 你餵的來源 ＋ 你給的自訂提示。
> 控制它只有這兩件事。搭配同資料夾的 [`notebooklm_prompt.md`](notebooklm_prompt.md) 使用。

---

## Step 0 — 建一個「港洲品牌」固定 Notebook（一次設好、長期重用）

新建一個 Notebook，命名如「港洲｜品牌工廠」，固定放這幾個**品牌來源**（Google 官方支援上傳 brandbook 當風格參考）：

- `KCCE_CIS_brief.md` — 攜帶版 CIS 規範
- `assets/Kcce_logo.png` — 彩色 logo（淺底）
- `assets/Kcce_logo_white.png` — 反白 logo（深底）

這個 Notebook 就是你的「港洲工廠」，之後每個案子都在它底下開，不用重設品牌。

## Step 1 — 加入該案內容當來源

把這次要做的內容丟進 Sources（越聚焦越準）：
- 工程說明、標單摘要、會議紀錄、Word / PDF、簡報草稿、甚至網址都行。
- 掃描 PDF 先 **OCR**、刪掉無關頁，避免它抓錯重點。

## Step 2 —（可選）先用 Chat 抓骨架

在生成前，先在 Chat 問：
> 「幫我把這些來源整理成 8 頁簡報大綱，每頁一個重點、條列式。」

確認結構對了再生成，能大幅減少來回。

## Step 3 — 生成簡報並套 CIS

進 **Studio → Slide Deck（簡報）→ Customize**，把 [`notebooklm_prompt.md`](notebooklm_prompt.md) 的自訂提示整段貼上（已把港洲色彩／字體／logo／版型／禁忌寫好）。核心：

- 主色品牌藍 `#1B4E96`（佔 60–70%）、深藍 `#143C74` 作封面/結尾底、商標綠 `#2E9130` 只作點綴
- 封面/章節/結尾＝深藍底白字＋反白 logo；內容頁＝白底、藍標題、彩色 logo
- 標題置中、內文靠左；**不用**紅/金/暖色、不用整條色帶、不置中內文

## Step 4 — 檢視並匯出

生成後檢視 → 匯出 **PPTX** 或 **PDF**。

---

## 要「精準符合 CIS」的最後一哩

NotebookLM 的品牌套用是**近似**：藍主調＋綠點綴＋白底可達成，但 **logo 精準擺放不保證**。因此：

| 需求 | 做法 |
|---|---|
| 對內、求快 | 直接用它匯出的 PPTX |
| 對外、求精準 | 用它產「**內容**」→ 匯出 PPTX 後套 `references/deck-template.pptx` 版型，或在 PowerPoint 把 logo/色微調到位 |

> 一句話：**NotebookLM 負責「講什麼」，CIS 範本負責「長什麼樣」。**

## 加分習慣

- **一個 Notebook 一個主題**，不相關的案子別混（來源越聚焦，輸出越準）。
- 生成內容是**初稿**：數字類務必對照真實資料核對（它會潤飾/推測）。
- 場合選型：**Audio/Video Overview** 適合教育訓練/對外導覽；**Slide Deck** 適合正式簡報。

## 常見問題

- **色彩沒完全對？** NotebookLM 不吃精準 hex，屬近似；要準就走「最後一哩」。
- **logo 沒出現/位置怪？** 確認 logo 已加進 Sources；仍不保證，最終以 PPTX 微調為準。
- **抓錯重點？** 回頭清來源（去雜訊/OCR），或先用 Chat 定大綱再生成。
