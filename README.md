# 👑 TOTO AI MASTER — Singapore TOTO + 4D AI Analysis Platform

> **Advanced AI-Powered Lottery Analytics & Statistical Prediction Modeling Engine**  
> Supporting **Singapore Pools TOTO (6/49)** and **Singapore Pools 4D (0000–9999)**.

---

## 🌟 Key Capabilities & Features

### 1. Main Dashboard
- **Dual Singapore Pools Modes**: One-click toggling between **Singapore TOTO** (6/49 + Additional) and **Singapore 4D** (23 prizes: 1st, 2nd, 3rd, 10 Starters, 10 Consolations).
- **Latest Draw Hero Cards**: Displays official Draw Numbers, Dates, Venues, Jackpot estimations, and prize breakdowns.
- **Visual 3D Lottery Balls**: Golden gradient 3D physics-styled numbers for TOTO winning numbers, ruby red for the additional ball, and high-contrast digital LED badges for 4D.
- **Quick Statistical Cards**: Hot numbers, cold numbers, Odd/Even split ratios, and High/Low balances.
- **Draw History Explorer**: Live search by draw number or date, pagination, and cascade draw indicators.

### 2. Singapore TOTO Analysis
- **Number Frequency (1–49)**: Interactive Chart.js histogram tracking historical hit counts and deviation from the theoretical uniform expectation of $6/49 \approx 12.24\%$.
- **Hot & Cold Matrix**: Sortable table with current drought gaps, average intervals, historical max droughts, and momentum scores.
- **Odd / Even Breakdown**: Analysis comparing actual draw percentages against theoretical binomial probabilities (3O-3E: 33.3%, 4O-2E: 24.0%, 2O-4E: 25.0%).
- **High / Low Analysis**: Low numbers (1–24) vs High numbers (25–49) distribution.
- **Sum Distribution Bell Curve**: Tracks the sweet spot around the 150.0 theoretical mean (115–185 range).
- **Chi-Square Goodness-of-Fit Test**: Mathematical validation ($p > 0.05$) verifying fairness and normal lottery variance.
- **Previous Winning Combinations Checker**: Interactive 1–49 picker scanning all past draws for matches across Group 1 (Jackpot) through Group 7.

### 3. Singapore 4D Analysis
- **Complete Prize Structure Analysis**: Detailed breakdown for 1st Prize, 2nd Prize, 3rd Prize, 10 Starter Prizes, and 10 Consolation Prizes.
- **Digit Position Frequencies**: Individual frequency distributions (0 to 9) for Thousands (1st), Hundreds (2nd), Tens (3rd), and Units (4th / Last Digit).
- **First Digit & Last Digit Deep Dives**: Specific analysis of 1st Prize ending digits and starting digits.
- **Pair Number Analysis**: Top 10 most frequent Front Pairs (digits 1&2) and Back Pairs (digits 3&4).
- **Pattern Classification (Chart.js Doughnut)**:
  - **Single (ABCD)**: All 4 digits unique (~50.4% theoretical)
  - **Double (AABC)**: Exactly one pair of identical digits (~43.2% theoretical)
  - **Double Pair (AABB)**: Two distinct pairs (~2.7% theoretical)
  - **Triple (AAAB)**: Three identical digits (~3.6% theoretical)
  - **Quad (AAAA)**: All four identical digits (~0.1% theoretical)
- **Sequence Analysis**: Consecutive ascending/descending runs (e.g. 1234, 9876) vs partial runs.
- **4D Winning Number Checker**: Instant historical lookups for any 4-digit number.

### 4. AI Combinatorial Number Generators
#### TOTO Generators (6 Unique Numbers from 1 to 49 + 1 Additional Number):
1. **AI Statistical Engine**: Combines hot scores, 3:3 or 4:2 Odd/Even balance, High/Low balance, and sum sweet spot (115–185).
2. **Pure Random Pick**: Unbiased 6/49 pseudo-random selection.
3. **Hot Numbers Bias**: Leverages momentum from top recent draws.
4. **Cold / Overdue Reversion Pick**: Targets cyclical mean-reversion drought candidates.
5. **User Lucky Base + AI**: Choose 1 to 5 favorite numbers; AI strategically completes the set.

#### 4D Generators (Strictly 4 Digits with Leading Zeros, 0000–9999):
1. **AI Statistical Generator**: Position-by-position weighting + optimal pattern synthesis.
2. **Random 4D Generator**: 0000–9999 uniform random selection.
3. **Hot Number Generator**: Prioritizes highest frequency digits & pairs.
4. **Cold Number Generator**: Incorporates overdue digits across all positions.
5. **Pair Number Generator**: Focuses on top front and back pairs.
6. **Double Digit Generator**: Guarantees AABC or AABB pattern structures.
7. **Favourite Number Generator**: Integrates user lucky digits with leading zeros.

### 5. Automatic Results Update Engine
- **Duplicate Prevention**: Idempotent drawNumber verification.
- **Date Verification**: Strictly checks Singapore Pools draw days (Mon/Thu for TOTO; Wed/Sat/Sun for 4D).
- **Scheduled Background Sync**: Automatic background hourly updater + manual on-demand trigger in Admin Panel.
- **Audit Logging**: Every sync event and admin modification is logged with timestamps.

### 6. Administration Panel (`/admin`)
- **TOTO Draw Management**: Add verified draws, edit existing records, delete entries.
- **4D Draw Management**: Add 1st, 2nd, 3rd, 10 starters, 10 consolations.
- **Bulk Historical Data Import**: JSON bulk importer with automatic deduplication.
- **User Role Management**: Promote/demote users between `user` and `admin`.
- **System Health & Audit Trail**: Real-time Node memory usage, process uptime, and recent actions.

---

## 🛠️ Technology Stack

| Layer | Technology |
| :--- | :--- |
| **Frontend** | React 18, Vite, Tailwind CSS, Chart.js, react-chartjs-2, Lucide Icons, Canvas Confetti |
| **Backend** | Node.js (Express), REST API, CORS, Helmet, Child Process IPC |
| **AI Statistics** | Python 3 Mathematical Engine (`analytics.py`, `generator.py`) |
| **Database** | MongoDB (Mongoose) with intelligent auto-fallback to persistent local JSON store |
| **Authentication** | JWT (JSON Web Tokens), bcryptjs password hashing |
| **Theme** | Dark Navy Blue (`#030712`, `#0a1128`) + Imperial Gold (`#f59e0b`, `#fbbf24`) |

---

## 🚀 Getting Started

### Prerequisites
- **Node.js**: v18+ (verified on Node v24)
- **Python**: 3.8+ (standard library only, zero heavy external packages required)
- **MongoDB** *(Optional)*: If running MongoDB, specify `MONGODB_URI` in `.env`. Otherwise, the system uses the embedded persistent storage engine automatically.

### Running the Application
From the project root:
```bash
# Option 1: Double-click start.bat (Windows)

# Option 2: Run via Terminal
cd backend
node server.js
```

Open your browser at:
👉 **`http://localhost:5000`**

---

## 🔐 Default Credentials

| Role | Email | Password |
| :--- | :--- | :--- |
| **Administrator** | `admin@totoai.sg` | `AdminPassword123!` |
| **Demo User** | `demo@totoai.sg` | `UserPassword123!` |

*(One-click fill buttons are provided on the Sign-In modal for convenience!)*

---

## ⚠️ Responsible Gaming Disclaimer

> **IMPORTANT**: Historical patterns and statistical frequencies cannot predict future lottery results. Every lottery draw is an independent random event. All generated combinations are mathematical suggestions, not guaranteed winning numbers. Play responsibly. Strictly 18+.  
> National Council on Problem Gambling Hotline: **1800-6-668-668**.

