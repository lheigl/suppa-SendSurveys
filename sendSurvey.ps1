#Fill out From field with the desired send as address, add link to survey in the body of the paragraph
#rly straightforward, sends using Send-MailMessage and all attributes are provided as variables, body is in html. Don't use quotes in any html tags

$From = "com"
$Subject = "Flexential Survey"
$SMTPServer = "smtp.office365.com"
$SMTPPort = "587"
$SMTPCred = (Get-Credential)
$YourName = Read-Host -Prompt "Your Name"
$To = Read-Host -Prompt "To"
$Name = Read-Host -Prompt "Customer Name"
$Inc = Read-Host -Prompt "INC Number"
$Company = Read-Host -Prompt "Company"

$Body = "Hello $Name,<br>Thank you for allowing Flexential to assist you with your issue, ticket $Inc. <br> <br>Below is a link to a survey regarding your experience today. We would greatly appreciate your feedback! Please make sure to completely fill out the Name, Email, and Phone Number section in order for the survey to process properly.<br><br>Survey Link Here<br><br>Over the next few days there is a possibility you will receive a randomly generated survey from our ticketing system. There is no need to fill out the 2nd survey at that time unless you have any further follow-up comments to add.<br><br>Thank you, Flexential <font color=white>$YourName</font><br>(866) 732-5836 | support@peak10.com<br>Data Center & Network Services | Cloud Services | Managed Services<br><a href=https://www.linkedin.com/company/peak-10>LinkedIn</a> | <a href=https://twitter.com/peak_ten>Twitter</a> | <a href=https://www.facebook.com/PeakTen>Facebook</a> | <a href=http://www.peak10.com/peak-10-blog/>Flexential Blog</a> | <a href=http://www.peak10.com/>Flexential.com</a><br><img src=https://i.imgur.com/piNwT5o.png alt=flexential.com>"

Send-MailMessage -From $From -to $To -Subject $Subject -BodyAsHtml $Body -SmtpServer $SMTPServer -port $SMTPPort -UseSsl -Credential $SMTPCred
