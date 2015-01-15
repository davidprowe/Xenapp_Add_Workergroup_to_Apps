Add-PSSnapin Citrix*
#edit wg1 and wg2 with name of workergroups
$WG1 = "NAMEOFWGroup"
$WG1apps = get-xaapplication -WorkerGroupName $WG1 | select-object -property Browsername|Sort-Object -Property Browsername
#add WG2 to all apps listed in WG1
$WG2 = "NAMEOFWGroup2"
ForEach ($record in $WG1apps){
$appname = $record.BrowserName
Add-XAApplicationWorkerGroup "$appname" -WorkerGroupNames $WG2
}