# Badge Management Contract Deployment Guide

## Contract Details

**Purpose**: Manages student badges and academic credentials on Algorand blockchain

**Features**:
- Create badge requests
- Approve badge requests (admin only)
- Mint/create badges
- Verify badges

## Deployment via Lora

### Step 1: Go to Lora Txn Wizard
https://lora.algokit.io/testnet

Click "Txn Wizard" → "Application Call" → Select "Create" for On Complete

### Step 2: Paste Base64 Programs

**Approval Program (base64):**
```
I3ByYWdtYSB2ZXJzaW9uIDYKdHhuIEFwcGxpY2F0aW9uSUQKaW50IDAKPT0KYm56IG1haW5fbDEwCnR4bmEgQXBwbGljYXRpb25BcmdzIDAKYnl0ZSAiY3JlYXRlX2JhZGdlX3JlcXVlc3QiCj09CmJueiBtYWluX2w5CnR4bmEgQXBwbGljYXRpb25BcmdzIDAKYnl0ZSAiYXBwcm92ZV9iYWRnZV9yZXF1ZXN0Igo9PQpibnogbWFpbl9sOAp0eG5hIEFwcGxpY2F0aW9uQXJncyAwCmJ5dGUgImNyZWF0ZV9tZXRhX2JhZGdlIgo9PQpibnogbWFpbl9sNwp0eG5hIEFwcGxpY2F0aW9uQXJncyAwCmJ5dGUgInZlcmlmeV9iYWRnZSIKPT0KYm56IG1haW5fbDYKZXJyCm1haW5fbDY6CnR4biBOdW1BcHBBcmdzCmludCAyCj09CmFzc2VydAppbnQgMQpyZXR1cm4KbWFpbl9sNzoKdHhuIFNlbmRlcgpnbG9iYWwgQ3JlYXRvckFkZHJlc3MKPT0KYXNzZXJ0CnR4biBOdW1BcHBBcmdzCmludCAyCj09CmFzc2VydApieXRlICJiYWRnZV9kYXRhIgp0eG5hIEFwcGxpY2F0aW9uQXJncyAxCmNvbmNhdAp0eG5hIEFwcGxpY2F0aW9uQXJncyAxCmFwcF9nbG9iYWxfcHV0CmJ5dGUgInRpbWVzdGFtcCIKdHhuYSBBcHBsaWNhdGlvbkFyZ3MgMQpjb25jYXQKZ2xvYmFsIExhdGVzdFRpbWVzdGFtcAphcHBfZ2xvYmFsX3B1dApieXRlICJ0b3RhbF9iYWRnZXMiCmJ5dGUgInRvdGFsX2JhZGdlcyIKYXBwX2dsb2JhbF9nZXQKaW50IDEKKwphcHBfZ2xvYmFsX3B1dAppbnQgMQpyZXR1cm4KbWFpbl9sODoKdHhuIFNlbmRlcgpnbG9iYWwgQ3JlYXRvckFkZHJlc3MKPT0KYXNzZXJ0CnR4biBOdW1BcHBBcmdzCmludCAyCj09CmFzc2VydApieXRlICJhcHByb3ZlZCIKdHhuYSBBcHBsaWNhdGlvbkFyZ3MgMQpjb25jYXQKYnl0ZSAiYXBwcm92ZWQiCmFwcF9nbG9iYWxfcHV0CmJ5dGUgImFwcHJvdmVkX2F0Igp0eG5hIEFwcGxpY2F0aW9uQXJncyAxCmNvbmNhdApnbG9iYWwgTGF0ZXN0VGltZXN0YW1wCmFwcF9nbG9iYWxfcHV0CmludCAxCnJldHVybgptYWluX2w5Ogp0eG4gTnVtQXBwQXJncwppbnQgMgo9PQphc3NlcnQKYnl0ZSAiYmFkZ2VfcmVxdWVzdCIKdHhuYSBBcHBsaWNhdGlvbkFyZ3MgMQpjb25jYXQKdHhuYSBBcHBsaWNhdGlvbkFyZ3MgMQphcHBfZ2xvYmFsX3B1dApieXRlICJ0aW1lc3RhbXAiCnR4bmEgQXBwbGljYXRpb25BcmdzIDEKY29uY2F0Cmdsb2JhbCBMYXRlc3RUaW1lc3RhbXAKYXBwX2dsb2JhbF9wdXQKYnl0ZSAidG90YWxfcmVxdWVzdHMiCmJ5dGUgInRvdGFsX3JlcXVlc3RzIgphcHBfZ2xvYmFsX2dldAppbnQgMQorCmFwcF9nbG9iYWxfcHV0CmludCAxCnJldHVybgptYWluX2wxMDoKYnl0ZSAiY29udHJhY3RfdmVyc2lvbiIKYnl0ZSAiMi4wIgphcHBfZ2xvYmFsX3B1dApieXRlICJ0b3RhbF9iYWRnZXMiCmludCAwCmFwcF9nbG9iYWxfcHV0CmJ5dGUgInRvdGFsX3JlcXVlc3RzIgppbnQgMAphcHBfZ2xvYmFsX3B1dAppbnQgMQpyZXR1cm4K
```

**Clear Program (base64):**
```
BoEBQw==I3ByYWdtYSB2ZXJzaW9uIDYKaW50IDEKcmV0dXJuCg==
```

### Step 3: Set State Schema

**IMPORTANT - Use these exact values:**
- **Global Byte Slices**: 10
- **Global Integers**: 2
- **Local Byte Slices**: 10
- **Local Integers**: 2

### Step 4: Deploy

1. Click "Build Transaction"
2. Connect Pera Wallet (scan QR with phone)
3. Approve the transaction
4. Wait ~10 seconds
5. **Copy the Application ID**

### Step 5: Update Environment

Add to `.env.local`:
```bash
NEXT_PUBLIC_BADGE_APP_ID=<733353489>
```

## After Deployment

Your MetaCAMPUS app will have:
- ✅ Authentication Contract (App ID: 748159417)
- ✅ Badge Management Contract (App ID: <new-id>)

Both contracts working together for full functionality!

## Cleanup Lora

To delete the duplicate auth contract (748158465):
1. Go to Lora → "App Lab"
2. Find application 748158465
3. Click delete/remove
4. Confirm deletion

---

**Ready to deploy?** Follow the steps above!
