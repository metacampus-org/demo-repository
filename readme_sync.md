# MetaCAMPUS Badge Manager

[![Next.js](https://img.shields.io/badge/Next.js-15.2.4-black)](https://nextjs.org/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.9.2-blue)](https://www.typescriptlang.org/)
[![Algorand](https://img.shields.io/badge/Algorand-Blockchain-00D4FF)](https://algorand.com/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A blockchain-powered academic credential management platform built on Algorand. MetaCAMPUS enables universities to issue, manage, and verify digital academic badges and transcripts with cryptographic proof of authenticity.

## 🌟 Features

### Blockchain Integration
- **Algorand Smart Contracts**: Secure, tamper-proof credential storage
- **Pera Wallet Integration**: Easy wallet connection and transaction signing
- **Multi-wallet Support**: Defly Connect and Pera Wallet support
- **Real-time Verification**: Instant credential verification on the blockchain

### Role-Based Access Control
- **Super Admin**: Platform-wide management and university approval
- **University Admin**: Student management, badge issuance, transcript creation
- **Students**: View credentials, share verified transcripts

### Credential Management
- **Digital Badges**: Issue blockchain-verified academic achievements
- **Transcripts**: Store and share complete academic records
- **Badge Requests**: Streamlined approval workflow for credentials
- **Verification System**: Public verification of any issued credential

### Database & Storage
- **SQLite**: Local development database
- **PostgreSQL**: Production-ready database support
- **File Storage**: Secure document and credential storage
- **Curriculum Management**: Course and program tracking

## 🚀 Quick Start

### Prerequisites

- **Node.js**: 16.0.0 or higher
- **npm**: Latest version
- **Algorand Wallet**: [Pera Wallet](https://perawallet.app/) (mobile app)
- **Algorand Node** (optional): For local development

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/metacampus-org/demo-repository.git
   cd demo-repository
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up environment variables**
   
   Create a `.env.local` file in the root directory:
   ```bash
   # Algorand Configuration
   NEXT_PUBLIC_ALGOD_URL=http://localhost:8080
   NEXT_PUBLIC_INDEXER_URL=http://localhost:8980
   NEXT_PUBLIC_ALGOD_TOKEN=
   NEXT_PUBLIC_INDEXER_TOKEN=
   
   # Smart Contract
   NEXT_PUBLIC_APP_ID=0
   NEXT_PUBLIC_ALGORAND_NETWORK=testnet
   
   # Super Admin Wallet
   NEXT_PUBLIC_SUPER_ADMIN_WALLET=
   
   # Database
   SQLITE_DB_PATH=./data/metacampus.db
   
   # Feature Flags
   NEXT_PUBLIC_ENABLE_UNIVERSITY_SIGNUP=true
   NEXT_PUBLIC_ENABLE_IPFS=false
   NEXT_PUBLIC_DEBUG_AUTH=false
   ```

4. **Run the development server**
   ```bash
   npm run dev
   ```

5. **Open your browser**
   
   Navigate to [http://localhost:3000](http://localhost:3000)

## 📖 Documentation

### Smart Contract Deployment

See [docs/BADGE_CONTRACT_DEPLOYMENT.md](docs/BADGE_CONTRACT_DEPLOYMENT.md) for detailed instructions on deploying the badge management contract to Algorand.

### Project Structure

```
metacampus/
├── app/                          # Next.js app directory
│   ├── api/                     # API routes
│   │   ├── blockchain/          # Blockchain operations
│   │   ├── curriculum/          # Course management
│   │   ├── storage/             # File storage
│   │   └── university-*/        # University management
│   ├── student/                 # Student dashboard
│   ├── university-admin/        # Admin dashboard
│   ├── super-admin/            # Super admin panel
│   └── onboarding/             # User onboarding
├── components/                  # React components
│   ├── ui/                     # Reusable UI components
│   └── *.tsx                   # Feature components
├── contexts/                    # React contexts
│   └── wallet-context.tsx      # Wallet state management
├── database/                    # Database layer
│   ├── crud.ts                 # CRUD operations
│   ├── db.ts                   # Database connection
│   └── types.ts                # Database types
├── lib/                        # Utility libraries
│   ├── algorand-client.ts     # Algorand client
│   ├── auth-service.ts        # Authentication
│   ├── badge-service.ts       # Badge management
│   ├── transcript-service.ts  # Transcript handling
│   └── env-validation.ts      # Environment validation
├── docs/                       # Documentation
└── public/                     # Static assets
```

### Key Technologies

- **Framework**: Next.js 15.2.4 with React 19
- **Blockchain**: Algorand SDK (algosdk)
- **Styling**: Tailwind CSS 4.1.9
- **UI Components**: Radix UI + shadcn/ui
- **Database**: SQLite (dev) / PostgreSQL (prod)
- **Forms**: React Hook Form + Zod validation
- **Analytics**: Vercel Analytics

### Available Scripts

```bash
# Development
npm run dev              # Start development server

# Production
npm run build           # Build for production
npm run start           # Start production server

# Testing & Debugging
npm run test:blockchain # Test blockchain integration
npm run test:full       # Run full test suite
npm run test:auth       # Test authentication
npm run debug:blockchain # Debug blockchain operations

# Smart Contract Deployment
npm run deploy:contract # Deploy auth contract (LoRa)
npm run deploy:simple   # Deploy simple auth contract

# Code Quality
npm run lint            # Run ESLint
```

## 🏗️ Architecture

### System Components

1. **metaCAMPUS Badge Management Smart Contract**
2. **Authentication Service** (Algorand-based)
3. **Database Layer** (SQLite/PostgreSQL)
4. **File Storage Service**
5. **API Routes** (Next.js API)
6. **Frontend Application** (Next.js + React)

### Authentication Flow

1. User connects Pera Wallet
2. Wallet address is verified against smart contract
3. User role is determined (Super Admin, University Admin, Student)
4. Access is granted based on role permissions

### Badge Issuance Workflow

1. University Admin creates badge request
2. Request is stored in database
3. Super Admin approves request
4. Badge is minted on Algorand blockchain
5. Student receives notification
6. Badge appears in student dashboard

## 🔐 Security

- **Blockchain Verification**: All credentials are cryptographically signed
- **Role-Based Access**: Granular permission system
- **Environment Validation**: Required configs checked on startup
- **Wallet Authentication**: No passwords, wallet-based auth only
- **Transaction Signing**: All blockchain operations require user approval

## 🌐 Deployment

### Environment Setup

For production deployment:

1. Set up Algorand node (or use AlgoNode/PureStake)
2. Deploy smart contracts to testnet/mainnet
3. Configure environment variables for production
4. Set up PostgreSQL database
5. Deploy to Vercel/AWS/your hosting platform

### Algorand Node Configuration

The app can connect to:
- **Local node**: For development
- **AlgoNode**: Free public API
- **PureStake**: Enterprise-grade API
- **Custom node**: Your own Algorand infrastructure

## 👥 Development Team

| Developer | Role |
|-----------|------|
| Ehu | Lead Developer |
| Rohan | Backend Engineer |
| Tyler | Frontend Engineer |
| Neil | Blockchain Engineer |
| George | DevOps Engineer |

## 🤝 Contributing

### Branch Naming Convention

Branches should be named with your username:
```bash
metacampus-{username}
```

Example: `metacampus-ehu`

### Development Workflow

1. Create feature branch from `master`
2. Implement changes with clear commits
3. Test thoroughly locally
4. Request review from 2+ developers
5. Get approval from leadership team member
6. Merge to `master`

### Code Review Requirements

- ✅ 2+ developer approvals
- ✅ 1+ leadership team approval (SVP, Managing Partner, or Governor)
- ✅ All tests passing
- ✅ No linting errors

## 🎯 Roadmap

### Current Focus
- ✅ Badge management system
- ✅ University signup workflow
- ✅ Transcript generation
- 🚧 IPFS integration for document storage
- 🚧 Enhanced verification UI
- 🚧 Mobile-responsive improvements

### Future Features
- Multi-chain support
- NFT badges
- Learning outcome tracking
- Automated curriculum validation
- Public badge showcase
- Integration APIs for third parties

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🔗 Links

- **Documentation**: See `/docs` folder
- **Issues**: GitHub Issues
- **Contact**: info@metacampus.org

## 🐛 Troubleshooting

### Common Issues

**Environment Configuration Errors**
- Ensure `.env.local` exists and all required variables are set
- Check that `NEXT_PUBLIC_APP_ID` is set after deploying contracts
- Verify `NEXT_PUBLIC_SUPER_ADMIN_WALLET` is a valid Algorand address

**Wallet Connection Issues**
- Install Pera Wallet on your mobile device
- Ensure you're on the correct network (testnet/mainnet)
- Check that your wallet has ALGO for transaction fees

**Smart Contract Errors**
- Verify the contract is deployed (check APP_ID)
- Ensure wallet has opted into the application
- Check transaction fees are sufficient

## 📊 Project Status

**Version**: 0.1.1  
**Status**: Active Development  
**Network**: Algorand Testnet  
**Last Updated**: November 27, 2025

---

**Built with ❤️ by the MetaCAMPUS team**
