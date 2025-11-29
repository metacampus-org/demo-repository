# 🎓 metaCAMPUS

**Blockchain-Powered Academic Credential Management System**

[![Next.js](https://img.shields.io/badge/Next.js-15.2.4-black)](https://nextjs.org/)
[![Algorand](https://img.shields.io/badge/Algorand-TestNet-blue)](https://algorand.com/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.0-blue)](https://www.typescriptlang.org/)
[![License](https://img.shields.io/badge/license-MIT-green)](./LICENSE)

> A decentralized platform for academic administration through a massively open online, decentralized autonomous organization, delivering efficiency tokenomics via student owned transcripts, validation of competency, and a process for agentic credentialing on the Algorand blockchain.

---

## 🌟 Features

### For Students
- 📜 **View Academic Transcripts** - Access your complete academic record on the blockchain
- 🏆 **Request Course Badges** - Submit requests for course completion badges
- 🔍 **Find Student Hash** - Locate your unique blockchain identifier
- 💾 **Download Transcripts** - Export your academic data as JSON

### For Universities
- 👨‍🎓 **Onboard Students** - Register new students on the blockchain
- 📚 **Manage Transcripts** - Add courses and update student records
- ✅ **Approve Badges** - Review and approve badge requests
- 🔐 **Verify Records** - Validate student credentials

### For Corporations
- 👨‍🎓 **Onboard Employees** - Register new personnel on the blockchain
- 📚 **Manage Corporate Learning** - Add courses and update personnel records
- ✅ **Approve Badges** - Review and approve badge requests
- 🔐 **Verify Records** - Validate credentials

### For Super Admins
- 🏛️ **Institution Management** - Approve registrations
- 📊 **System Statistics** - Monitor platform-wide metrics
- 🔗 **Blockchain Monitoring** - Track all transactions

---

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ and npm/pnpm
- Pera Wallet (for blockchain interactions)
- Git

### Installation

```bash
# Clone the repository
git clone https://github.com/YOUR_USERNAME/metacampus.git
cd metacampus

# Install dependencies
npm install
# or
pnpm install

# Set up environment variables
cp .env.example .env.local
# Edit .env.local with your configuration

# Run development server
npm run dev
# or
pnpm dev
```

Open [https://localhost:3000](https://localhost:3000) in your browser.
\\add socket layer encryption security feature
---

## 🔧 Configuration

### Environment Variables

Create a `.env.local` file in the root directory:

```bash
# Algorand Node Configuration
NEXT_PUBLIC_ALGOD_SERVER=https://testnet-api.4160.nodely.dev
NEXT_PUBLIC_ALGOD_PORT=443
NEXT_PUBLIC_ALGOD_TOKEN=

# Algorand Indexer Configuration
NEXT_PUBLIC_INDEXER_SERVER=https://testnet-idx.4160.nodely.dev
NEXT_PUBLIC_INDEXER_PORT=443
NEXT_PUBLIC_INDEXER_TOKEN=

# Smart Contract App IDs (TestNet)
NEXT_PUBLIC_AUTH_APP_ID=733353488
NEXT_PUBLIC_BADGE_APP_ID=733353489

# Network Configuration
NEXT_PUBLIC_NETWORK=TestNet
```

---

## 📦 Tech Stack

### Frontend
- **Framework:** Next.js 15.2.4 (App Router)
- **Language:** TypeScript
- **Styling:** Tailwind CSS
- **UI Components:** shadcn/ui
- **State Management:** React Context API

### Blockchain
- **Network:** Algorand (TestNet/MainNet)
- **SDK:** AlgoSDK v3
- **Wallet:** Pera Wallet integration
- **Smart Contracts:** PyTeal (deployed)

### Storage
- **Development:** Browser localStorage
- **Production:** Blockchain + IPFS (planned)

---

## 🏗️ Project Structure

```
metacampus/
├── app/                      # Next.js app directory
│   ├── page.tsx             # Landing page
│   ├── student/             # Student portal
│   ├── university-admin/    # University admin portal
│   └── super-admin/         # Super admin dashboard
├── components/              # React components
│   ├── ui/                  # shadcn/ui components
│   ├── header.tsx           # App header
│   ├── route-guard.tsx      # Route protection
│   └── wallet-button.tsx    # Wallet connection
├── contexts/                # React contexts
│   └── wallet-context.tsx   # Wallet state management
├── lib/                     # Core business logic
│   ├── algorand-client.ts   # Algorand blockchain client
│   ├── transcript-service.ts # Transcript management
│   ├── badge-service.ts     # Badge management
│   └── file-storage-service.ts # Local storage
├── docs/                    # Documentation
├── public/                  # Static assets
└── .env.local              # Environment variables (not in git)
```

---

## 🔐 Smart Contracts

### Deployed on Algorand TestNet

#### Authentication Contract
- **App ID:** `733353488`
- **Purpose:** User role management (student, university, *corporate admin*, super admin)
- **Explorer:** [View on Lora](https://lora.algokit.io/testnet/application/733353488)

#### Badge Management Contract
- **App ID:** `733353489`
- **Purpose:** Course completion badge issuance and verification
- **Explorer:** [View on Lora](https://lora.algokit.io/testnet/application/733353489)

#### EQ2 Derivative Specialization Token Issuance
- **App ID:** `*`
- **Purpose:** Define Expected User Object State
- **Explorer:** [View on Lora](https://lora.algokit.io/testnet/application/*)

---

## 🎯 User Roles

### Student (Role: 0)
- View personal transcripts
- Request course completion badges
- Download academic records
- Find student hash

### University Admin (Role: 1)
- Onboard new students
- Add courses to transcripts
- Approve badge requests
- Verify student records

### **Corporate Admin (Role: 2)**
- *Onboard personnel*
- *Add EQ2 Specialization Tokens to personnel file*
- *Track Expected vs. Actual Efficiency*
- *Verify prior records*

### Super Admin (Role: 3)
- Approve institutional registrations
- View system-wide statistics
- Monitor blockchain transactions
- *Ensure correct manifold settings*

---

## 🔄 Workflow

### Student Onboarding
1. University admin onboards student with personal info
2. System generates unique student hash (blockchain identifier)
3. Student record stored on blockchain
4. Student can access portal with wallet

### Transcript Management
1. University admin adds courses to student transcript
2. Courses include: name, grade, credits, semester, etc.
3. GPA calculated automatically
4. Updates stored on blockchain

### Badge Issuance
1. Student requests course completion badge
2. University admin reviews request
3. Admin approves badge
4. Badge minted on blockchain
5. Badge appears in student profile

### Personnel Onboarding
1. Corporate HR Admin Onboarding
2. Validation and Update of Personnel Files
3. EQ2 Efficiency Token Assignment
4. Model organizational efficiency gains

---

## 📱 Wallet Integration

### Pera Wallet
metaCAMPUS uses Pera Wallet for secure blockchain interactions:

1. **Install Pera Wallet:**
   - Mobile: [iOS](https://apps.apple.com/app/id1459898525) | [Android](https://play.google.com/store/apps/details?id=com.algorand.android)
   - Web: [Pera Web Wallet](https://web.perawallet.app)

2. **Connect Wallet:**
   - Click "Connect Wallet" in the app
   - Scan QR code or use WalletConnect
   - Approve connection in Pera Wallet

3. **Sign Transactions:**
   - All blockchain operations require wallet signature
   - Review transaction details before signing
   - Transactions are free on TestNet

---

## 🧪 Testing

### Local Testing
```bash
# Run development server
npm run dev

# Build for production
npm run build

# Start production server
npm start
```

### Blockchain Testing
- Use TestNet for all development
- Get free ALGO from [TestNet Faucet](https://bank.testnet.algorand.network/)
- Monitor transactions on [Lora Explorer](https://lora.algokit.io/testnet)

---

## 🚀 Deployment

### Deploy to AWS

1. **Push to GitHub:**
   ```bash
   git init
   git add .
   git commit -m "your commit message"
   git remote add origin https://github.com/metacampus-org/demo-repository.git
   git push -u origin [YOUR BRANCH]
   ```
2. **Submit Pull Request to Master:**
   instructions for submitting a proper pull request are outlined in README.md

3. **Deploy to AWS:**
   - Login to the environment
   - Push your local commit to your dedicated dev environment
   - Add environment variables per below

4. **Configure Environment Variables:**
   - Add all variables from `.env.local`
   - Ensure `NEXT_PUBLIC_*` prefix for client-side variables

See [README.md](./README.md) for detailed instructions.

---

## 📚 Documentation

- **[Quick Start Guide](./docs/QUICK_START.md)** - Get started quickly
- **[Deployment Guide](./README.md)** - Deploy to dev
- **[Project Status](https://github.com/orgs/metacampus-org/projects/1)** - Current project state
- **[Documentation Index](./docs/*)** - *All documentation*

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Clone the repository
2. Create a named developer branch (`git checkout -b metacampus-org/metacampus-*`)
3. Commit your changes (`git commit -m 'your-branch-commit-message'`)
4. Push to the branch (`git push origin your-branch/your-commit`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

---

## 🔗 Links

- **Live Demo:** [demo.metacampus.org]
- **Documentation:** [docs/](./docs/)
- **Algorand Explorer:** [Lora TestNet](https://lora.algokit.io/testnet)
- **Pera Wallet:** [perawallet.app](https://perawallet.app)

---

## 🙏 Acknowledgments

- **Algorand Foundation** - Blockchain infrastructure
- **Pera Wallet** - Wallet integration
- **AWS** - Hosting and deployment
- **Next.js Team** - Framework
- **shadcn/ui** - UI components

---

## 📞 Support

- **Account Specific Support** - support@metacampus.org
- **General Inquiries** - info@metacampus.org

---

## 🗺️ Roadmap

### Current MVP (v1.0.0)
- ✅ Student transcript management
- ✅ Badge request and approval system
- ✅ University admin portal
- ✅ Super admin dashboard
- ✅ Pera Wallet integration

### Planned Alpha Release (v1.1.0)
- ⏭️ Student transfer management
- ⏭️ EQ2 Derivative Tokenomics for Bachelor's
- ⏭️ EQ2 Derivative Tokenomics for Master's
- ⏭️ Multi-Tenant support
- ⏭️ Curriculum SLO API

### Planned MainNet Release (v1.3.0)
- ⏭️ MainNet deployment & GTM
- ⏭️ Integrations with existing SIS/CM systems

---

## 📊 Status

- **Version:** 1.0.0
- **Status:** Production Ready ✅
- **Network:** Algorand TestNet
- **Last Updated:** November 27, 2025

---

**Built with ❤️ using Algorand blockchain technology**