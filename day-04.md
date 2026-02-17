## ADVANCED SHELL SCRIPTING + VERSION CONTROL FOUNDATIONS

## DATE : 
15th FEB, 2026
16th FEB, 2026
17th FEB, 2026

## GOALS : 

-> Deepen shell scripting with:
 – Error handling
 – Exit codes
 – Redirection and /dev/null
 – Variable expansion
 – Argument parsing
 – Functions and parameters

-> Learn Git fundamentals:
 – What Git is and why DevOps depends on it
 – Difference between a filesystem and a version control system
 – Core Git workflow (add, commit, log, restore, status)
 – Branching concepts
 – Clone vs Fork
 – Pull and Push on Remote repositories 
 – SSH authentication with GitHub


## OUTPUT/RESULT :

-> ADVANCED SHELL SCRIPTING:


1. Why Shell is Important in DEVOPS:
-> Shell scripting enables infrastructure automation, deployment scripting, CI/CD jobs, cron jobs, and server-level automation. DevOps engineers use the shell for:
 - Provisioning setup scripts
 - Monitoring scripts
 - Log parsing
 - Automation pipelines
 - System diagnostics
 - Shell acts as glue between tools.
 

2. Exit Codes and Error Handling:
-> Every Linux command returns an exit code:
    0 → Success
    Non-zero → Failure
    Example: echo $? # Shows last command exit status
-> Basic error handling:
    if [ $? -ne 0 ]; then
    echo "Command failed."
    exit 1
    fi
->Better approach:
     set -e # Exit immediately if any command fails
     Custom error handling:
     command || { echo "Failed"; exit 1; }
    *This is critical in CI/CD pipelines where failure must stop execution.*

3. Functions and Arguments:
->Function definition:
    my_function() {
    echo "Hello $1"
    }
->Calling function:
    my_function Pragya
   
    $1, $2 → positional parameters
    $@ → all arguments
    $# → number of arguments
    *This is used to modularize automation scripts.*

5. Variable Expansion:
    ${var}
    ${var:-default} → default value if unset
    ${var:=default} → assign default
    ${#var} → length
    *Variable expansion prevents runtime failures in production scripts.*

6. Argument Parsing:
  Basic example:
  if [ $# -lt 1 ]; then
  echo "Usage: script.sh <filename>"
  exit 1
  fi
  *Used in deployment scripts and automation tools.*
  
7. Redirection:
    append
    < input
    2> stderr
    &> stdout + stderr
    Example: command > output.txt 2>&1
    /dev/null concept:
    command > /dev/null 2>&1
 *Used to suppress unwanted output in cron jobs or automation.*


-> GIT & VERSION CONTROL FOUNDATIONS


1. What is Git?
  Git is a distributed version control system that tracks changes in source code and maintains history.
In DevOps, Git is:
- Source of truth
- Trigger for CI/CD pipelines
- Collaboration backbone
- Infrastructure-as-Code version manager

2. File System vs Git:
File System:
 - Stores the latest version only
 - No history tracking
 - Manual backups
Git:
 - Tracks changes (commits)
 - Maintains history
 - Supports branching
 - Enables collaboration
 - Provides rollback capability

3. Core Git Workflow:
- Initialize:
  git init
- Check status:
  git status
- Add files:
  git add file.txt
  git add .
- Commit:
  git commit -m "message"
- View logs:
  git log 
  git log --oneline
- Restore file:
  git restore file.txt
- Configure:
  git config --global user.name "YourName"
  git config --global user.email "you@email.com"

4. Branching Concepts:
 Branch = isolated development line
- Create branch:
  git branch feature
- Create and switch:
  git checkout -b feature
or
  git switch -c feature
- Switch branch:
  git switch main
- List branches:
  git branch

*Branching allows parallel development without breaking the main codebase.*

5. Clone vs Fork:
 Clone:
  Creates a local copy of the remote repository
  git clone <repo-url>
 Fork:
  Creates personal copy on GitHub server (used in open-source contributions)

6. Remote Repositories:
- Check remotes:
    git remote -v
- Add remote:
    git remote add origin <url>
- Push:
    git push origin main
- Pull:
    git pull origin main
- SSH Authentication
    Generate key using ssh-keygen 
    Add public key to GitHub
- Clone using SSH:
    git clone git@github.com:user/repo.git
*SSH avoids repeated username/password authentication and is an industry standard.*


## KEY LEARNING:

• Shell scripting is not just command chaining — it is structured automation logic.
• Error handling determines reliability in production environments.
• Redirection and exit codes are foundational for CI/CD robustness.
• Git is not just a backup tool; it is the backbone of DevOps workflows.
• Branching enables safe experimentation and parallel development.
• SSH authentication is mandatory for professional Git usage.
• DevOps growth requires thinking in terms of automation reliability, not just command execution.






