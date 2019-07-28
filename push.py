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
          self.Changes = changes()
     
      
      def addRemovedFiles(self,removeDirectory):
          self.Changes.removeFiles.append(removeDirectory)
      def addAddFiles(self,addDirectory):
          self.Changes.removeFiles.append(addDirectory) 
      def addRemovedLines(self,removeLines):
          self.Changes.removeFiles.append(removeLines)
      def addAddLines(self,addLines):
          self.Changes.removeFiles.append(addLines)         
      
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
     
#for i in range(0,len(Commits)-1):

gitDiffCommand = os.popen('git diff '+ Commits[2].hash+" "+Commits[2+1].hash).read()
print(gitDiffCommand)
 

 

 