#########################################################
# Increase User Hardening
# Add additional users that should not have a specific right to increase the hardening of this script.
#########################################################
$AdditionalUsersToDenyNetworkAccess = @(      #CIS 2.2.21 - This adds additional users to the "Deny access to this computer from the network" to add more than guest and built-in admin
  "batchuser"
)
$AdditionalUsersToDenyRemoteDesktopServiceLogon = @(  #CIS 2.2.26 - This adds additional users to the "Deny log on through Remote Desktop Services" if you want to exclude more than just the guest user
  "batchuser"
  ,"batchadmin"
)
$AdditionalUsersToDenyLocalLogon = @(         #CIS 2.2.24 - This adds additional users to the "Deny log on locally" if you want to exclude more than just the "guest" user.
  "batchuser"
  ,"batchadmin"
)
# Ensure the additional users specified for settings exist to prevent issues with applying policy
$existingUsers = (Get-LocalUser).Name
foreach ($u in $AdditionalUsersToDenyLocalLogon) {
  if (!$existingUsers.Contains($u)) {
    $AdditionalUsersToDenyLocalLogon = $AdditionalUsersToDenyLocalLogon | Where-Object { $_ -ne $u }
  }
}
foreach ($u in $AdditionalUsersToDenyRemoteDesktopServiceLogon) {
  if (!$existingUsers.Contains($u)) {
    $AdditionalUsersToDenyRemoteDesktopServiceLogon = $AdditionalUsersToDenyRemoteDesktopServiceLogon | Where-Object { $_ -ne $u }
  }
}
foreach ($u in $AdditionalUsersToDenyNetworkAccess) {
  if (!$existingUsers.Contains($u)) {
    $AdditionalUsersToDenyNetworkAccess = $AdditionalUsersToDenyNetworkAccess | Where-Object { $_ -ne $u }
  }
}
