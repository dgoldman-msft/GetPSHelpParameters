# Description

Get-PSHelpParameters

This helper function will quickly return parameters for and cmdlet or function

[1 ms] C:\> Get-HelpParameter -Name Get-Help
[12:21:28][Get-HelpParameter] [0]: Category
[12:21:28][Get-HelpParameter] [1]: Component
[12:21:28][Get-HelpParameter] [2]: Detailed
[12:21:28][Get-HelpParameter] [3]: Examples
[12:21:28][Get-HelpParameter] [4]: Full
[12:21:28][Get-HelpParameter] [5]: Functionality
[12:21:28][Get-HelpParameter] [6]: Name
[12:21:28][Get-HelpParameter] [7]: Online
[12:21:28][Get-HelpParameter] [8]: Parameter
[12:21:28][Get-HelpParameter] [9]: Path
[12:21:28][Get-HelpParameter] [10]: Role
[12:21:28][Get-HelpParameter] [11]: ShowWindow

Which parameter do you want help info for?: 0

-Category <System.String[]>
    Displays help only for items in the specified category and their aliases. Conceptual articles are in the HelpFile
    category.

    The acceptable values for this parameter are as follows:
    - Alias
    - Cmdlet
    - Provider
    - General
    - FAQ
    - Glossary
    - HelpFile
    - ScriptCommand
    - Function
    - Filter
    - ExternalScript
    - All
    - DefaultHelp
    - Workflow
    - DscResource
    - Class
    - Configuration

    Required?                    false
    Position?                    named
    Default value                None
    Accept pipeline input?       False
    Accept wildcard characters?  false
