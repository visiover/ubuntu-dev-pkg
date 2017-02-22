# Introduction

Multiple git workflow exisits. Choosing the right git workflow depends on the type of project, the team size, the deployment frequency and the deployment environement.

---
# Most used git workflows

* Centralized workflow
* Feature branch workflow
* Forking workflow
* Gitflow workflow (nvie)
* Gitflow workflow (avh)
* "Anti-Gitflow" workflow
* Gitlab flow
* Github workflow

---

<!-- page_number: true -->

# Centralized workflow

* All the changes are committed to master.

* Uses a central repository to serve as the single point-of-entry for all changes to the project.

* This workflow doesn’t require any other branches besides master.

<!-- footer: Source : www.atlassian.com/git/tutorials/comparing-workflows -->

---

# Feature branch workflow

* Development should take place in a dedicated branch instead of the master branch.

* Master branch should never contain broken code.

* Makes pull requests possible.

* Feature branches are pushed to the central repository.


![feature branch](https://www.atlassian.com/dam/jcr:f78ecc23-1371-4ce9-b2c0-b7a9fe706b21/01.svg "Feature branch workflow")

<!-- footer: Source : www.atlassian.com/git/tutorials/comparing-workflows -->

---

# Forking workflow

* The project maintainer initializes the official repository.

* Developers **fork** the official repository.

* Developers work on their features.

* Developers File a pull request with the main repository, which lets the project maintainer know that an update is ready to be integrated. 

* The project maintainer integrates their features.

<!-- footer: Source : www.atlassian.com/git/tutorials/comparing-workflows -->


![forking](https://www.atlassian.com/dam/jcr:5c0941ff-a8b5-435b-a092-2167705f1e97/01.svg "forking")

<!-- footer: Source : www.atlassian.com/git/tutorials/comparing-workflows -->


---

# Gitflow (nvie)

* Set of git extensions to provide high-level repository operations.


```shell
git flow feature start myFeature
```

* Turns most of the steps into one-line commands

* Since the original project seems to be abondoned a lot forks have emerged most popular ones are **AVH** and **HubFlow**.

* Several separate branches always exist, each one for a different purpose.

* sourceTree, Tower ... 

* Uses two branches to record the history of the project. 
The **master** branch stores the official release history, 
and the **develop** branch serves as an integration branch for features.

* Features only live in the local dev and not in the remote server


![gitflow](http://nvie.com/img/git-model@2x.png)


<!-- footer: Source:http://nvie.com/posts/a-successful-git-branching-model/ -->

---
# Gitflow workflow (AVH Edition) A VirtualHome

* A collection of Git extensions to provide high-level repository operations for Vincent Driessen's branching model (gitflow).

* This fork adds functionality not added to the original branch.

* Seems that the original project nvie/gitflow has been abandoned. (last commit in 2013, 81 pr, 182 issues)

[petervanderdoes/gitflow-avh](https://github.com/petervanderdoes/gitflow-avh)

---

# Anti-gitflow workflow
GitFlow considered harmful:
* Over-engineered solution to a non-existent problem.
* Heavy approach, makes the project's history completely unreadable.
* The master/develop split is redundant.
* Complex and prone to errros. 
 
**Solution :** 
* One eternal branch "master", all the other branches are temporary.
* Features are merged to master.
* Releases and tags are done from master.
* Bugfixes are branched out from releases


<!-- footer: Source: http://endoflineblog.com/gitflow-considered-harmful -->


---
# Github Workflow
* Continuous deploy.
* Anything in the master branch is deployable.
* Pull request / Code review based.
* Only master and features branches.

* Create a feature from master, commit to tha branch locally and regurarly push your work. Open a pull request at any time, merge back to master when reviewed and deploy immediatly.

---

# Git lab flow

* Same as github flow + deployments, environments, releases and integrations.

* Introduces the concept of a production branch for the situation where you are not in control of the exact release moment.

* You can have a script to deploy and tag for you whenever you are ready to deply.

<!-- footer: Source : https://about.gitlab.com/2014/09/29/gitlab-flow/ -->

---
# Git lab flow - Production branch


![gitlab flow production](https://about.gitlab.com/images/git_flow/production_branch.png)

---
## Git lab flow - Environment branches (staging ...)


![git lab environement](https://about.gitlab.com/images/git_flow/environment_branches.png)


---
**Git lab flow - Release branches** 
![gitlab release](https://about.gitlab.com/images/git_flow/release_branches.png)
