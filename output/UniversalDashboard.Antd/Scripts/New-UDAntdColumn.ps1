<#
.SYNOPSIS
    Sample control for UniversalDashboard.
.DESCRIPTION
    Sample control function for UniversalDashboard. This function must have an ID and return a hash table.
.PARAMETER Id
    An id for the component default value will be generated by new-guid.
.EXAMPLE
    PS C:\> <example usage>
    Explanation of what the example does
.INPUTS
    Inputs (if any)
.OUTPUTS
    Output (if any)
.NOTES
    General notes
#>
function New-UDAntdColumn {
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [string]$ClassName,
        [Parameter()]
        [hashtable]$Style,
        [Parameter(mandatory)]
        [scriptblock]$Content,
        [Parameter()]
        [string]$Offset,
        [Parameter(Mandatory)]
        [string]$Span,
        [Parameter()]
        [string]$Pull,
        [Parameter()]
        [string]$Push,
        [Parameter()]
        [string]$Order,
        [Parameter()]
        [string]$Xs,
        [Parameter()]
        [string]$Sm,
        [Parameter()]
        [string]$Md,
        [Parameter()]
        [string]$Lg,
        [Parameter()]
        [string]$Xl,
        [Parameter()]
        [string]$Xxl
    )

    End {

        @{
            assetId = $AssetId 
            isPlugin = $true 
            type = "ud-antd-col"
            id = $Id
            className = $ClassName
            style = $Style
            content = $Content.Invoke()
            offset = $Offset
            order = $Order
            pull = $Pull
            push = $Push
            span = $Span
            xs = $Xs
            sm = $Sm
            md = $Md
            lg = $Lg
            xl = $Xl
            xxl = $Xxl
        }

    }
}