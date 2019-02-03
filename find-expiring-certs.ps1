 Get-ChildItem -Recurse -Path cert: |
 where { $_.notafter -le (get-date).AddDays(30) -AND $_.notafter -gt (get-date) } |
 select thumbprint,subject,@{Name='DaysLeft';Expression={($_.notafter-(Get-Date)).Days}}
