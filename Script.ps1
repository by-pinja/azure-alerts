$webHookReceiver = New-AzActionGroupReceiver `
    -Name 'FunctionAppWebHook' `
    -WebhookReceiver `
    -ServiceUri "https://adsasdfkfadsoafsdkfadsoodfsakdsfaoadfs.fi" `
    -UseCommonAlertSchema

$alertRules = .\Get-DefaultAlertRules.ps1 # | .\New-AlertRule.ps1 -ResourceType "Microsoft.Web/Sites" -Name "foo" -Description "foo" -Severity Critical -Criteria {} -WindowSize (new-timespan -Hours 1)
.\Apply-AlertRules.ps1 -ResourceGroup pekantesti1 -AlertRules $alertRules -ActionGroupReceiver $webHookReceiver