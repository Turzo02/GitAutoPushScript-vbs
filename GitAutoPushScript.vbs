' Save as git-smart.vbs

Dim shell, firstTime, repoURL, commitMsg, scriptName
scriptName = WScript.ScriptName

Set shell = CreateObject("WScript.Shell")

firstTime = MsgBox("Is this your first time pushing this project to GitHub?", vbYesNo + vbQuestion, "Git Auto Push")

commitMsg = InputBox("Enter your commit message:", "Commit Message")
If commitMsg = "" Then
    WScript.Echo "No commit message entered. Exiting."
    WScript.Quit
End If

Dim gitCmds

If firstTime = vbYes Then
    repoURL = InputBox("Enter your GitHub repo URL (e.g., https://github.com/username/repo.git):", "GitHub Repo URL")
    If repoURL = "" Then
        WScript.Echo "No repo URL entered. Exiting."
        WScript.Quit
    End If

    gitCmds = "git init && " & _
              "git add . && " & _
              "git reset " & scriptName & " && " & _
              "git commit -m """ & commitMsg & """ && " & _
              "git remote add origin " & repoURL & " 2>nul && " & _
              "git remote -v && " & _
              "git branch -M main && " & _
              "git push -u origin main"

Else
    gitCmds = "git add . && " & _
              "git reset " & scriptName & " && " & _
              "git commit -m """ & commitMsg & """ && " & _
              "git push"
End If

shell.Run "cmd.exe /k " & gitCmds
