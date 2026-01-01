#!/bin/bash

# Branch Integration Script
# This script completes the integration of copilot/add-logo-to-website into copilot/develop-professional-website
# and deletes the copilot/add-logo-to-website branch

set -e  # Exit on error

echo "=========================================="
echo "Branch Integration Script"
echo "=========================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to print colored output
print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠ $1${NC}"
}

print_error() {
    echo -e "${RED}✗ $1${NC}"
}

# Check if we're in a git repository
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    print_error "Not a git repository. Please run this script from the repository root."
    exit 1
fi

print_success "Git repository found"

# Check if required branches exist
echo ""
echo "Checking branch status..."

if ! git rev-parse --verify copilot/develop-professional-website > /dev/null 2>&1; then
    print_error "Branch 'copilot/develop-professional-website' not found locally"
    echo "Fetching from remote..."
    git fetch origin copilot/develop-professional-website:copilot/develop-professional-website
fi

if ! git rev-parse --verify copilot/add-logo-to-website > /dev/null 2>&1; then
    print_warning "Branch 'copilot/add-logo-to-website' not found locally"
    echo "Fetching from remote..."
    git fetch origin copilot/add-logo-to-website:copilot/add-logo-to-website || {
        print_warning "Could not fetch copilot/add-logo-to-website (may already be deleted)"
    }
fi

print_success "Branches verified"

# Show current state
echo ""
echo "Current branch state:"
git branch -a | grep copilot || echo "No copilot branches found"

# Step 1: Checkout the target branch
echo ""
echo "Step 1: Checking out copilot/develop-professional-website..."
git checkout copilot/develop-professional-website
print_success "Checked out copilot/develop-professional-website"

# Step 2: Verify the merge is already done
echo ""
echo "Step 2: Verifying integration..."
if git log --oneline | grep -q "Update logo to use actual PrithviTech logo image"; then
    print_success "Integration already complete - logo commits found"
else
    print_warning "Logo commits not found - attempting merge..."
    if git rev-parse --verify copilot/add-logo-to-website > /dev/null 2>&1; then
        git merge copilot/add-logo-to-website --no-edit
        print_success "Merge completed"
    else
        print_error "Cannot merge - source branch not found"
        exit 1
    fi
fi

# Step 3: Push to remote
echo ""
echo "Step 3: Pushing integrated branch to remote..."
read -p "Push copilot/develop-professional-website to remote? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    git push origin copilot/develop-professional-website --force-with-lease
    print_success "Pushed copilot/develop-professional-website to remote"
else
    print_warning "Skipped push to remote"
fi

# Step 4: Delete local branch
echo ""
echo "Step 4: Deleting local copilot/add-logo-to-website branch..."
if git rev-parse --verify copilot/add-logo-to-website > /dev/null 2>&1; then
    git branch -d copilot/add-logo-to-website 2>/dev/null || git branch -D copilot/add-logo-to-website
    print_success "Deleted local branch copilot/add-logo-to-website"
else
    print_warning "Local branch copilot/add-logo-to-website not found (may already be deleted)"
fi

# Step 5: Delete remote branch
echo ""
echo "Step 5: Deleting remote copilot/add-logo-to-website branch..."
read -p "Delete remote copilot/add-logo-to-website branch? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    if git ls-remote --heads origin copilot/add-logo-to-website | grep -q copilot/add-logo-to-website; then
        git push origin --delete copilot/add-logo-to-website
        print_success "Deleted remote branch copilot/add-logo-to-website"
    else
        print_warning "Remote branch copilot/add-logo-to-website not found (may already be deleted)"
    fi
else
    print_warning "Skipped remote branch deletion"
fi

# Summary
echo ""
echo "=========================================="
echo "Integration Complete!"
echo "=========================================="
echo ""
echo "Final state:"
git branch -a | grep copilot || echo "No copilot branches found"
echo ""
print_success "Integration successful!"
echo ""
echo "You now have:"
echo "  - copilot/develop-professional-website with all logo changes integrated"
echo "  - copilot/add-logo-to-website branch deleted"
echo ""
