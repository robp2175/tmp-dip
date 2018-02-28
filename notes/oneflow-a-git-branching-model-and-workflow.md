# OneFlow - a Git branching model and workflow
http://endoflineblog.com/
Adam Ruka

# How not?
![Branching workflow: git-flow and github-flow | Numergent](http://numergent.com/images/dev/git-flow.png)

# Why not?

## Because
- Hell a lot of long-live branches.
- Too complicated.
- Too chaotic.

## And why OneFlow?
- Single long-live branch, therefore simple.
- Clean history, therefore useful.

# How can it look like?
![OneFlow example](https://raw.githubusercontent.com/qeef/tmp-dip/master/notes/oneflow-example2.png)

# Branching
- Main branch.
- Feature branches.
- Release branches.
- Hotfix branches.

# Main branch
- Only long-live branch.
- Let's call it `master`.

# Feature branch
- New features and bugfixes for upcoming release.
- Cooperation, can be push forced.

## Checkout from `master`
```
$ git checkout -b feature/my-feature master
```

## Merge to `master`
```
$ git checkout feature/my-feature
$ git rebase -i master
$ git checkout master
$ git merge --no-ff feature/my-feature
$ git push origin master
$ git branch -d feature/my-feature
```

# Feature branch in picture
![Feature branch](http://endoflineblog.com/img/oneflow/feature-branch-rebase-and-merge-final.png)

# Release branch
- Prepare project to be released.

## Start from right commit on `master`
```
git checkout -b release/2.3.0 9efc5d
```

## Merge to `master`
```
$ git checkout release/2.3.0
$ git tag 2.3.0
$ git checkout master
$ git merge --no-ff release/2.3.0
$ git push --tags origin master
$ git branch -d release/2.3.0
```

# Release branch in picture
![Release branch](http://endoflineblog.com/img/oneflow/release-branch-merge-final.png)

# Hotfix branch
- For critical defect solutions.

## Start from last version tag
```
$ git checkout -b hotfix/2.3.1 2.3.0
```

## Merge to `master`
```
$ git checkout hotfix/2.3.1
$ git tag 2.3.1
$ git checkout master
$ git merge --no-ff hotfix/2.3.1
$ git push --tags origin master
$ git branch -d hotfix/2.3.1
```

# Hotfix branch in picture
![Hotfix branch](http://endoflineblog.com/img/oneflow/hotfix-branch-merge-final.png)

# OneFlow in development example
![OneFlow example](https://raw.githubusercontent.com/qeef/tmp-dip/master/notes/oneflow-example.png)

# OneFlow after merge example
![OneFlow example](https://raw.githubusercontent.com/qeef/tmp-dip/master/notes/oneflow-example3.png)

# References
- http://endoflineblog.com/oneflow-a-git-branching-model-and-workflow
- http://numergent.com/images/dev/git-flow.png
- http://gitgraphjs.com/
