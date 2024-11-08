#!/bin/bash

# 检查当前目录
echo "Current directory: $(pwd)"

# 检查 main 分支
echo "Checking main branch..."
git checkout main

# 检查文件和子模块
ls
git submodule status

# 检查提交历史
git log --oneline -n 5

# 检查 testingTwo 分支
echo "Checking testingTwo branch..."
git checkout testingTwo

# 检查文件和子模块
ls
cd submodule
ls
git submodule status
cd ..

# 检查提交历史
git log --oneline -n 5

# 检查 testingTwoTmp 分支
echo "Checking testingTwoTmp branch..."
git checkout testingTwoTmp

# 检查文件和子模块
ls
git submodule status

# 检查提交历史
git log --oneline -n 5

# 检查提交历史中的特定信息
echo "Checking commit messages..."
git log --oneline | grep "merge testingTwo secondly"

echo "Check completed."

cd git_repo
echo test1:file check:

git checkout main

echo check main branch
tmp2="README.md"
tmp=`ls|grep $tmp2`


if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi

tmp2="complex1.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
tmp2="complex2.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
tmp2="complex3.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
tmp2="complex4.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
tmp2="complex_end.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi

tmp2="cherry-pick.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi

tmp2="learnGit"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
tmp2="rebase.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
tmp2="stash.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
tmp2="stash2.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
tmp2="submodule"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi

tmp2="testingTwo.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi

tmp2="tmp.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
echo check main file successful

git checkout testingTwo

echo check testingTwo branch
tmp2="README.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi

tmp2="cherry-pick.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
tmp2="complex_end.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
tmp2="rebase.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
tmp2="submodule"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
tmp2="testingTwo.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
tmp2="tmp.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
echo check testingTwo file successful

git checkout testingTwoTmp

echo check testingTwoTmp branch
tmp2="README.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi

tmp2="testingTwoTmp.md"
tmp=`ls|grep $tmp2`
if test $tmp != $tmp2
then
    echo error: can not find $tmp2
    exit
fi
echo check testingTwoTmp file  successful

echo test2:log check:
git checkout main
echo check main branch

tmp2='creat first submodule'
tmp=`git log |grep "$tmp2"`

if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi

tmp2="complex 1 2 3 4"
tmp=`git log |grep "$tmp2"`

if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi

tmp2="stash second"
tmp=`git log |grep "$tmp2"`

if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi

tmp2="stash first"
tmp=`git log |grep "$tmp2"`

if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi

tmp2="cherry-pick third"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="cherry-pick second"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="cherry-pick first"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi

tmp2="rebase 1
    
    rebase 2
    
    rebase 3"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi

tmp2="merge testingTwo secondly"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi

tmp2="new the branch testingTwo"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="modify the readme only"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="write the readme firstly"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi

tmp2="Initial commit"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
echo check main log successful
git checkout testingTwo
echo check testingTwo branch

tmp2="creat second submodule"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="creat submodule in testingTwo"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="complex end"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="cherry-pick third"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="cherry-pick second"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="cherry-pick first"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="rebase 1
    
    rebase 2
    
    rebase 3"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi

tmp2="new the branch testingTwo"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="modify the readme only"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="write the readme firstly"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="Initial commit"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
echo check testingTwo log successful
git checkout testingTwoTmp
echo check testingTwoTmp branch

tmp2="new the branch testingTwoTmp"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="modify the readme only"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="write the readme firstly"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
tmp2="Initial commit"
tmp=`git log |grep "$tmp2"`
 
if [[ $tmp == "" ]]
then
    echo error: $tmp2: can not find this message
    exit
fi
echo check testingTwoTmp log successful
echo check successfully, you finish