param($installPath, $toolsPath, $package, $project)

$project.Object.References | Where-Object { $_.Name -eq "EPDM.Interop.epdm" } |  ForEach-Object { $_.EmbedInteropTypes = $false }
$project.Object.References | Where-Object { $_.Name -eq "EPDM.Interop.EPDMResultCode" } |  ForEach-Object { $_.EmbedInteropTypes = $false }