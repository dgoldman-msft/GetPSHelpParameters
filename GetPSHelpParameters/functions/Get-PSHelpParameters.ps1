function Get-HelpParameters {
    <#
    .SYNOPSIS
        Retrieve help parameters
    
    .DESCRIPTION
        This function will take a cmdlet or function and return all of the paramters that can be used. 
    
    .PARAMETER Name
        Cmdlet or function you will to pull information for
    
    .EXAMPLE
        PS C:\> Get-HelpParameters -Name Get-Date

    .EXAMPLE
        PS C:\> Get-HelpParameters -Name Get-Date -Examples

    .EXAMPLE
        PS C:\> GHP -Name Get-Date
    
    .NOTES
        Hitting enter will default to the first element in the array for shown parameters
    #>

    [Alias('ghp')]
    [cmdletbinding()]
    param(
        [ValidateNotNullOrEmpty()]
        [string]
        $Name,

        [switch]
        $Examples
    )

    process {
        $HelpInfo = Get-Help $Name -full
        $HelpExamples = $HelpInfo.examples.example
        $HelpParameters = $HelpInfo.parameters.parameter.name

        if($Examples)
        {
            $HelpExamples
            return
        }

        if (-NOT $HelpParameters)
        {
            Write-PSFMessage -Level Host -Message "No parameters found!"
            return
        }

        $counter = 0
        foreach ($param in $HelpParameters) {
            Write-PSFMessage -Level Host -Message "[<c='Green'>{0}</c>]: <c='Yellow'>{1}</c>" -StringValues $counter, $param
            $counter++
        }

        $answer = Read-Host "Which parameter do you want help info for?"
        Get-Help $Name -Parameter $HelpParameters[$answer]
    }
}