from git import Repo
import os
#Objects
class changes:
      removeFiles =[]
      addFiles = []
      removLines = []
      addLines = []

class commit:
      def __init__(self,hash,author,date,message):
          self.hash = hash
          self.author =author
          self.date = date 
          self.message = message
     
      Changes = changes()

#Use gitPython module
repo = Repo('/home/yehia/Documents/openclassroom projects')
assert not repo.bare
heads = repo.heads
repo.commit('master')

#Use os Module


gitLogCommand = os.popen('git log').read()
#print(gitLogCommand)
Commits = [] 
splitAllCommits = gitLogCommand.split('commit')


for i in range(1,len(splitAllCommits)):
    splitCommit = splitAllCommits[i].split("\n")
   
    makeThemAllInOneString = splitCommit
    makeThemAllInOneString = " ".join(makeThemAllInOneString)
    checkForMerge = "Merge: " in makeThemAllInOneString
    checkForRevert = "This reverts " in makeThemAllInOneString
    checkIfCommit = "Author: " in makeThemAllInOneString
    if checkForMerge or checkForRevert or not(checkIfCommit) :
       continue 
   
    commitHash = splitCommit[0]
    commitHash = commitHash[1:]
    commitAuthor = splitCommit[1].split(":")
    commitAuthor = commitAuthor[1]
    commitAuthor =commitAuthor[1:]
    commitDate = splitCommit[2].split("Date")
    commitDate = commitDate[1]
    commitDate =commitDate[4:]
    commitMsg = splitCommit[4]
    commitMsg =commitMsg[4:]
    Commits.append(commit(commitHash,commitAuthor,commitDate,commitMsg))
     
print(Commits[0].author)

 

 