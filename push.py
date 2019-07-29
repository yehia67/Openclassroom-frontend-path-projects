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
def get_str_between(s, before, after):
     beforeIndex = s.find(before)
     afterIndex = s.find(after)
     return s[beforeIndex+len(before):afterIndex]

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
filename = changes[0:spaceIndeces]
addedLines = "File location " + filename + " new Lines At :"
removedLines = "File location " + filename + " removed Lines At :"
lineChanges = changes.split("\n")
for i in range(0,len(lineChanges)):
    print(lineChanges[i])
    print("---------------------------------------------------------------------------------------------------------------------------------")  
for i in range(0,len(lineChanges)):
    line =  lineChanges[i]
    counter = ""
    if line[0:4] == "@@ -": 
       counter = get_str_between(lineChanges[i],"@@ -",",") 
       print(counter)  
       i = i + 1
       while i < len(lineChanges):
            line = lineChanges[i]
            if line[0:4] == "@@ -":
                i = i - 1
                break
            if line[0:2] == "+ ":
                addedLines += "\n" + "Line " + str(counter) + " with content " + line[2:len(line)]
                counter = int(counter) + 1
            elif line[0:2] == "- ":
                removedLines += "\n" + "Line " + str(counter) + " with content " + line[2:len(line)]
                counter = int(counter) + 1
            else:
                counter = int(counter) + 1
            i = i +1

print(addedLines)                      
print(removedLines)                      
            
            
       
   
#for i in range(1,len(getModifiedFilesNames)): 


for i in range(0,len(Commits)-1):
    getDeletedFiles = os.popen('git diff --name-only   --diff-filter=D  '+ Commits[i].hash +' ' + Commits[i+1].hash).read()
    if getDeletedFiles != '':
        Commits[i+1].addRemovedFiles(getDeletedFiles)
    getCreatedFiles = os.popen('git diff --name-only   --diff-filter=D  '+ Commits[i].hash +' ' + Commits[i+1].hash).read()
    if  getCreatedFiles != '':
        Commits[i+1].addAddFiles(getCreatedFiles) 
   
   
       





 

 

 