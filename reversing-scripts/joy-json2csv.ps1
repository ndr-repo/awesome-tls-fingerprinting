# run this after extracting fingerprint_db.json.gz
# https://github.com/cisco/joy/blob/master/fingerprinting/resources/fingerprint_db.json.gz
Get-Content -Path fingerprint_db.json | ConvertFrom-Json | Select-Object -ExpandProperty process_info | Sort-Object -Property application_category,process,os_info,prevalence | Select-Object -Property process,application_category,prevalence,sha256,os_info | ConvertTo-Csv -NoTypeInformation
