**First steps:**
- We went to the repository here: https://github.com/githubteacher/github-for-developers-2016-04
- Made tour a repository, or project, to see the
  - code view, where you see all files belonging to the project
  - README.md, where projects describe more about themselves
  - Issues, a place to have conversations and collaborate without introducing new code
  - Pull requests, a place to collaborate while introducing new code
- Comment on [this issue](https://github.com/githubteacher/github-for-developers-2016-04/issues/10) to become a collaborator on the project
- Practice making issues [in the issues tab of the class repository](https://github.com/githubteacher/github-for-developers-2016-04/issues) (Optional)


- **You can find that visual of the GitHub flow later at this link:** https://guides.github.com/introduction/flow/

**Branches**
- You can check your current branch by running `git branch`
- We created a branch by running `git branch ght-hello-world`
- We went to that branch by running `git checkout ght-hello-world`

**Git version and Git Configurations**
- We checked our git version by running `git --version`
- If you need to, you can install it [here](https://git-scm.com/)
- If you don't already have GitHub Desktop, you can install it [here](https://desktop.github.com/)
- Clone the repository by running `git clone https://github.com/githubteacher/github-for-developers-2016-04.git` (Make sure you are in the directory where you want the repository to be when you run this command)
- Set up your Git configurations by running these commands:
  - `git config --global user.name "your name"`
  - `git config --global user.email <youremail@email.com>`
  - `git config --global core.editor <editor>`
  - `git config --global push.default simple`
  - `git config --global fetch.prune true`
  - Windows ONLY: `git config --global core.autocrlf true`
  - Mac and Linux ONLY: `git config --global core.autocrlf input`
- Check your configurations by running `git config -l`

**Review of working locally**
- Working on our new branch, we created a new file by running `touch hello_world.cc`
- You can see the files in your current directory by running `ls`
- See what is going on with Git by running `git status`. This command is :heart:!
- When you want to create a branch and go to the branch in the same command, run `git checkout -b <branchname>`.
- To delete a branch, run `git branch -d <branchname>`.
- We learned about 'working', 'staging', and 'history' and how commits fit into those areas using [this resource](https://training.github.com/kit/modules/CONT-CLI-04_Two_Stage_Commit.html).
- Run `git status` frequently throughout these next steps.
- Change your file from 'working' to 'staging' by running `git add hello_world.cc`
- Change your file from 'staging' to 'history' by running `git commit`
- You'll notice your text editor opens. Write a 'commit message' that tells a story of the changes you just made.
- Create a new file, and go through the process again. This way, we'll have two commits to work with.
- Here are some shortcuts to know about in the future:
  - To automatically stage all files that have been changed, run `git commit -a`. Note: This will only work for files that are already being tracked, not brand new files.
  - Avoid the text editor in the commit by running `git commit -m "commit message"`
  - To write an extended commit that's longer than usual, run 
```
`git commit -am"messagetitle
>
> By pressing enter in the command line without closing the quotes, you changed the settings. Close by writing the quotes."`
```

**Review of moving from Git to GitHub**
- We talked about _remote_, and how we can see details about it by running `git remote` and `git remote show origin`
- 'Push' our changes on the current branch to GitHub.com by running `git push origin <branchname>`
- Set a 'upstream branch' relationship between our local branch and the GitHub.com remote branch by running `git branch --set-upstream-to=origin/<remote-branch-name>`
  - This means we only have to run `git push` and `git pull` in the future
  - A shortcut for this would be to run `git push -u origin <branch-name>`
- `git branch` and `git branch a` will help you see what is going on with your local and remote branches
- On GitHub.com, open a pull request in our [class repository](https://github.com/githubteacher/github-for-developers-2016-04) by clicking the green "New pull request" button.
  - Make sure your pull request says `base: master` and `compare: <your-new-branch>`
  - Give it a good title and some information within the body of the message. Bonus points for using [markdown](https://guides.github.com/features/mastering-markdown/) and emojis!
  - You can add labels and assignees to pull requests and issues
- Using @ is important - you can mention people or teams to give them a notification to see your issue or pull request.
- Notifications are an important part of GitHub. You can customize these several ways.
  - For GitHub in general, [Settings/notificatons](https://github.com/settings/notifications)
  - For repositories, at the top of a repository page on GitHub.com by clicking "Watch"
  - For individual issues and pull requests by clicking "unsubscribe" on the right hand side of the webpage
- On the pull request page, we talked about the different tabs for 'conversation', 'commits', and 'files changed'.
  - 'Conversation' is where you and your colleagues can collaborate on your changes. This view includes comments as well as notes of when changes happen.
  - 'Commits' shows a history of what commits were added - this is why your commit messages matter - they tell a story.
  - 'Files changed' will let you see the actual code in several different formats. You also can make line level comments from this view.

**Pull Requests**
- Typically, you only will close your own pull requests.
- On your own pull request, if all is green and there are no conflicts, go ahead and merge your branch.
- After merging a branch, it's part of the 'GitHub Flow' to go ahead and delete it.
  - This is a major difference between Git and some older version control systems. In Git, branch often, merge often, and delete branches often.
- Back in the command line, we're going to pull down the changes from GitHub.com in the remote repository.
- We'll get to the master branch by running `git checkout master`.
- Get the changes locally by running `git pull`
  - `git pull` is a combination of the commands `git fetch` and `git merge`
  
**Review of GitHub flow**
- [GitHub flow](https://guides.github.com/introduction/flow/): branch, commit, pull request, collaborate, and merge.
- Git is a Distributed Version Control System, DVCS, meaning all computers with local copies have the entire repository, just like the remote server repository
**Practice GitHub flow**
- Please re-clone the repository
  - In the terminal, get back to the class repository on your own computer
  - Type `git config --get core.autocrlf`. This should say "input" on Mac/Linux and "true" for Windows.
  - If it isn't set correctly, type `git config core.autocrlf true` for Windows and `git config core.autocrlf input` for Mac/Linux.
  - Type `git clone https://github.com/githubteacher/github-for-developers-2016-04.git`
- Discussed how Git stores commits
- Discussed branches, and how they are pointers to commits
- Discussed 'HEAD', how Git records what branch you are working on
- Type `git checkout -b <your-special-branchname-here>`
- Create a file on your branch, and track its status by typing `git status` in the command line
- Move all file to from 'untracked' to 'staging' by typing `git add .`
- Commit the file with `git commit -m "important short message telling a story"`
- See your changes: `git log --oneline --graph --decorate --all -3`
**Move changes to GitHub**
- Push changes to your branch on GitHub and connect those branches for the future: `git push -u origin <branchname>`
- Open a pull request on GitHub.com to merge your new branch to master.
  - Make sure it is set to `branch: master` and `compare: your-own-branch`
  - Please do not merge it just yet - just create the pull request.
  - Bonus points for markdown, @ mentions, and emojis :100:
- GitHub will cross-reference issues and pull requests automatically, making collaboration even easier.
- Comment on another pull request
- Make another change locally, then practice committing and pushing it to the branch
  - Automatically close a corresponding issue when a pull request is merged by including `fix`, `close`, or `resolve` in the commit message.
- Merge your pull request :ta-da:
- Delete the branch
**Update your local repository**
- Go back to your master branch locally: `git checkout master`
- Update our local copy: `git pull`, a combination of `git fetch` and `git prune`
- Delete your branch locally: `git branch -d <your-branch-name>`

**Creating Aliases**
- Set up an alias in configurations: `git config --global alias.<desired-alias> "the long version of the command that you want the alias to run, without git at the beginning, and with the desired flags"`

**Helpful Commands**
- We made a new file, and renamed it with `git mv`
- Remove files with `git rm`

**Local Diffs**
- View local diff diagram [here](https://training.github.com/kit/modules/CONT-CLI-11_Viewing-local-diffs.html)

**Rewriting History**
- Change a commit message with `git commit -a --amend`
- Undo all changes with a commit with `git revert <first-4-of-commit#>`

**More helpful commands: Reset**
- `git reset` changes where 'HEAD' is historically
- To practice, create a new branch: `git checkout -b <demo-branch-name>`
- Add text to the README with: `echo 'lorem ipsum' >> README.md`
- Commit these changes with `git commit -am"add first dummy line`
- Add more files
  - `echo 'a second line' >> README.md`
  - `git commit -am"a second line"`
  - `echo 'a third line' >> README.md`
  - `git commit -am"a third line"`
- See your recent log history: `git lga-5`
- Reset soft back to one of the earlier commits: `git reset --soft <first 4 of commit ID>`
- See that log: `git lga -5`
- Check our status to see what is staged: `git status`
- `git diff --staged`
- `git commit -m"add additional two lines"`
- `git reset soft` moves head, but doesn't change the state of any of the files
- The default for `git reset` is `git reset --mixed`.
- Try it with `git reset <first four of commit ID>`
  - Don't forget to use `git lga -5` and `git status` to see how it works
- Now, let's use `git reset --hard <first 4 of commit ID>`
  - Warning: If you `git reset --hard` and there are uncommitted changes, they will be gone forever. :( 
- See how these changes work with `git lga -5`, `git status`, and `cat README.md`

**Git Reflog**
- In case you were worried that `git reset` had done some damage to your commits, you should know about `git reflog`
- `git reflog` shows local commit history, even if you got rid of them with `git reset`
- This means you can `git reset` **back** to the commits you just got rid of!
- Warning: The commits in the reflog do not live forever!
  - Reflog information exists only 30-90 days based on your settings.
  - Reflog information is only local - not on the remote repository or any other collaborator's repositories
  
