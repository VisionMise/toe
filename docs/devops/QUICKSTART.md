# Quick Start Guide - GitHub Repository Setup

## Current Status

✅ **Completed:**
- Git repository initialized
- All files committed (2 commits)
- Remote configured: `https://github.com/visionmise/toe.git`
- Setup script created

⚠️ **Required:**
- GitHub CLI authentication
- Repository creation on GitHub
- Push to GitHub

## 🚀 Quick Setup (3 Commands)

```bash
# 1. Authenticate with GitHub
gh auth login

# 2. Run the automated setup script
./.agent/devops/setup-github.sh

# 3. Verify (optional)
gh repo view visionmise/toe --web
```

## Alternative: Manual Setup

```bash
# 1. Authenticate
gh auth login

# 2. Create repository
gh repo create visionmise/toe --public --source=. --remote=origin

# 3. Push code
git push -u origin main
```

## Token-Based Authentication

If `gh auth login` doesn't work:

```bash
# 1. Create token at: https://github.com/settings/tokens/new
#    Required scopes: repo, workflow

# 2. Save token to file
echo "your_token_here" > ~/.gh-token

# 3. Authenticate
gh auth login --with-token < ~/.gh-token

# 4. Clean up
rm ~/.gh-token
```

## Verification

After setup, verify everything worked:

```bash
# Check repository exists
gh repo view visionmise/toe

# View in browser
gh repo view visionmise/toe --web

# Verify remote
git remote -v

# Check branch
git branch -vv
```

## Troubleshooting

**Q: Authentication keeps failing**  
A: Try token-based auth or SSH instead:
```bash
git remote set-url origin git@github.com:visionmise/toe.git
```

**Q: Repository already exists**  
A: Just push the code:
```bash
git push -u origin main
```

**Q: Permission denied**  
A: Ensure you have access to the visionmise account or create under your own account

## Next Steps

After successful push:
1. Visit https://github.com/visionmise/toe
2. Add repository description
3. Add topics (ai, agents, automation)
4. Review README.md
5. Consider enabling branch protection

## Files Created

- `.agent/devops/setup-github.sh` - Automated setup script
- `.agent/devops/github-setup-report.md` - Detailed report
- `.agent/devops/QUICKSTART.md` - This guide

---

**Need help?** Review the detailed report: `.agent/devops/github-setup-report.md`
