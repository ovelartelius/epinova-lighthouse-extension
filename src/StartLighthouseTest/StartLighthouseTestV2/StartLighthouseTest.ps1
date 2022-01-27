[CmdletBinding()]
Param(
    $EnvironmentId,
    $Commit,
    $ErrorActionPreference
)

try {
    # Get all inputs for the task
    $environmentId = $EnvironmentId
    $commit = $Commit
    $errorAction = $ErrorActionPreference

    $global:ErrorActionPreference = $errorAction
    ####################################################################################

    Write-Host "Inputs:"
    Write-Host "EnvironmentId: $environmentId"
    Write-Host "Commit: $commit"

    $baseUrl = "https://lighthouse.epinova.no/api/job"
    $headers = @{
        'content-type' = 'application/json'
    }

    $body = '{ "environmentId":"' + $environmentId + '", "metadata": { "commit":"' + $commit + '" } }'    

    $result = Invoke-RestMethod -Uri $baseUrl -Method "Post" -Headers $headers -Body $body
    Write-Output $result

    ####################################################################################

    Write-Host "---THE END---"

}
catch {
    Write-Verbose "Exception caught from task: $($_.Exception.ToString())"
    throw
}

