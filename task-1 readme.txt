Let's start with Task 1: Git Repository Setup, Branching, and Merge Conflict Resolution.
Step 1: Install Git
If you haven’t installed Git yet, install it using
 sudo yum  install git -y
git --version


Step 2: Configure Git
Set up your Git username and email:
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
Check your Git config:

git config --list

Step 3: Initialize a Git Repository
Create a project folder and navigate into it:

mkdir devops-task
cd devops-task
Initialize Git:

git init
Create a README file:

echo "# DevOps Internship Task 1" > README.md
Add and commit:

git add .
git commit -m "Initial commit"
Step 4: Create and Work with Branches
Create a new branch named feature-branch:

git branch feature-branch
Switch to the new branch:

git checkout feature-branch

git switch feature-branch
Make changes (e.g., modify the README file):

echo "Feature added" >> README.md
git add .
git commit -m "Added a feature"
Step 5: Merge and Resolve Conflicts
Switch back to the main branch:

git checkout main
Modify the same line in README.md (to create a conflict):

echo "Main branch update" >> README.md
git add .
git commit -m "Updated in main branch"
Merge feature-branch into main:

git merge feature-branch
If there’s a conflict, Git will show a message. Open the conflicted file (README.md) and manually resolve it. The conflicting section will look like:
plaintext

<<<<<<< HEAD
Main branch update
=======
Feature added
>>>>>>> feature-branch
Modify the file to keep necessary changes.
Save and close the file.
Mark as resolved and complete the merge:

git add README.md
git commit -m "Resolved merge conflict"
Step 6: Push to GitHub
Create a repository on GitHub.
Link your local repo to GitHub:

git remote add origin https://github.com/yourusername/devops-task.git
Push your changes:

git push -u origin main
Deliverable for Task 1
A GitHub repository with a clear commit history.
Documentation explaining the merge conflict resolution process.
✅ Once you complete this, let me know, and we can move to Task 2! 🚀







