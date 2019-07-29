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
          self.Changes.addFiles.append(addDirectory) 
      def addRemovedLines(self,removeLines):
          self.Changes.removLines.append(removeLines)
      def addAddLines(self,addLines):
          self.Changes.addLines.append(addLines)         
# c3e9bc2672301d709109f536aa5a6038eff1e2db    7acd6ec2a8abbde0a950de2520b12318483fd7f5      
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
     
getModifiedFiles = os.popen("git diff    --diff-filter=M   c3e9bc2672301d709109f536aa5a6038eff1e2db 7acd6ec2a8abbde0a950de2520b12318483fd7f5").read()
getModifiedFilesNames = getModifiedFiles.split("diff --git a")
changes = getModifiedFilesNames[1]
spaceIndeces = changes.find(" ")
print(spaceIndeces)
filename = changes[0:spaceIndeces]
print(filename)
#for i in range(1,len(getModifiedFilesNames)): 


for i in range(0,len(Commits)-1):
    getDeletedFiles = os.popen('git diff --name-only   --diff-filter=D  '+ Commits[i].hash +' ' + Commits[i+1].hash).read()
    if getDeletedFiles != '':
        Commits[i+1].addRemovedFiles(getDeletedFiles)
    getCreatedFiles = os.popen('git diff --name-only   --diff-filter=D  '+ Commits[i].hash +' ' + Commits[i+1].hash).read()
    if  getCreatedFiles != '':
        Commits[i+1].addAddFiles(getCreatedFiles) 
   
   
       





 

 

 