#!/bin/bash
set -e

echo "=== Setting up test repository for SAAS-31508 ==="
echo ""

# Initialize git if not already
if [ ! -d .git ]; then
    git init
    echo "✓ Git initialized"
fi

# Create .gitignore
cat > .gitignore << EOF
node_modules/
.DS_Store
*.log
EOF

echo "✓ Files created"
echo ""
echo "Next steps:"
echo "1. Create a new repository in GitHub: https://github.com/Aqua-Sec-Test-2"
echo "2. Add remote: git remote add origin https://github.com/Aqua-Sec-Test-2/trivy-nil-pointer-test.git"
echo "3. Commit and push:"
echo "   git add ."
echo "   git commit -m 'Initial commit: Test repo for SAAS-31508'"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "4. Configure secrets in GitHub repo settings:"
echo "   - AQUA_KEY"
echo "   - AQUA_SECRET"
echo "   - TRIVY_USERNAME"
echo "   - TRIVY_PASSWORD"
echo ""
echo "5. Create a PR to trigger the workflow and reproduce the bug"
echo ""

