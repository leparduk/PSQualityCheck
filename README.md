# PSQualityCheck

## Summary

This is a PowerShell module which runs a series of Pester 5 tests to validate code quality. It uses a combination of Pester tests, PSScriptAnalyzer and a set of quality standards to ensure consistent quality on PowerShell scripts and modules.

The quality standards are summarised here: [Quality Standards Summary](https://github.com/andrewrdavidson/PSQualityCheck/wiki/Standards)

## Releases

### PowerShell Gallery

[![psgallery version](https://img.shields.io/powershellgallery/v/psqualitycheck)](https://www.powershellgallery.com/packages/PSQualityCheck) [![downloads](https://img.shields.io/powershellgallery/dt/PSQualityCheck)](https://www.powershellgallery.com/packages/PSQualityCheck)

### GitHub

#### Release Version

[![github tag](https://img.shields.io/github/v/tag/andrewrdavidson/psqualitycheck?sort=semver)](https://github.com/andrewrdavidson/PSQualityCheck/releases?sort=semver) [![release date](https://img.shields.io/github/release-date/andrewrdavidson/psqualitycheck)](https://github.com/andrewrdavidson/PSQualityCheck/releases)

#### Development

[![devtag](https://img.shields.io/badge/branch-1.3.0-blue)](https://github.com/andrewrdavidson/PSQualityCheck/tree/release-1.3.0)
[![commits since 1.2.1](https://img.shields.io/github/commits-since/andrewrdavidson/psqualitycheck/1.2.1/main?include_prereleases)](https://github.com/andrewrdavidson/PSQualityCheck/releases/1.2.1)

#### Issues

[![open issues](https://img.shields.io/github/issues-raw/andrewrdavidson/psqualitycheck)](https://github.com/andrewrdavidson/PSQualityCheck/issues?q=is%3Aopen+is%3Aissue) [![closed](https://img.shields.io/github/issues-closed-raw/andrewrdavidson/psqualitycheck)](https://github.com/andrewrdavidson/PSQualityCheck/issues?q=is%3Aissue+is%3Aclosed)

## Plans

If you want to see the plans and the progress of the steps within, click [Release Plans](https://github.com/andrewrdavidson/PSQualityCheck/wiki/Release-Plan)

## History

Is available here [Release History](https://github.com/andrewrdavidson/PSQualityCheck/wiki/Release-History)

## Prerequisites

This module requires:

* PowerShell 5.1 or PowerShell 7.1 or later
* Pester 5.1 or later
* PSScriptAnalyzer 1.19.1 or later

Optional items:

* Extra PSScriptAnalyzer rules (used by SonarQube) are available here:<br/>[https://github.com/indented-automation/ScriptAnalyzerRules](https://github.com/indented-automation/ScriptAnalyzerRules)
* Extra PSScriptAnalyzer rules (used by VSCode) are available here:<br/>[https://github.com/PowerShell/PSScriptAnalyzer/tree/master/Tests/Engine/CommunityAnalyzerRules](https://github.com/PowerShell/PSScriptAnalyzer/tree/master/Tests/Engine/CommunityAnalyzerRules)

## Installation

### Preferred Method

From the PSGallery:

`Install-Module -Name PSQualityCheck`

## Usage

See the [Usage](https://github.com/andrewrdavidson/PSQualityCheck/wiki/Usage) page

## Pester Tests

A quick description of the available Pester tests with their tags:

* [Module Test Details](https://github.com/andrewrdavidson/PSQualityCheck/wiki/Module-Tests)
* [Script Test Details](https://github.com/andrewrdavidson/PSQualityCheck/wiki/Script-Tests)

## Tests

### PowerShell version/PSQualityCheck/Operating System testing matrix

|PowerShell Version|PSQualityCheck Version|Operating System Result
|:---|:---|:---|
|7.1.1|1.2.1|![Windows 10 - Pass](https://img.shields.io/badge/windows%2010-pass-brightgreen)|
|7.1.1|1.2.0|![Windows 10 - Pass](https://img.shields.io/badge/windows%2010-pass-brightgreen)|
|7.1.1|1.1.1|![Windows 10 - Pass](https://img.shields.io/badge/windows%2010-pass-brightgreen)|
|7.1.0|1.1.0|![Windows 10 - Pass](https://img.shields.io/badge/windows%2010-pass-brightgreen) ![Server 2019 - Pass](https://img.shields.io/badge/server%202019-pass-brightgreen) ![Server 2016 - Pass](https://img.shields.io/badge/server%202016-pass-brightgreen) ![Ubuntu 20.04 - Pass](https://img.shields.io/badge/ubuntu%2020.04-pass-brightgreen)|
|5.1|1.1.0|![Windows 10 - Fail](https://img.shields.io/badge/windows%2010-pass-brightgreen) ![Server 2019 - Pass](https://img.shields.io/badge/server%202019-pass-brightgreen) ![Server 2016 - Pass](https://img.shields.io/badge/server%202016-pass-brightgreen)|n/a|

### RuleSet/PSQualityCheck/PowerShell version testing matrix

|RuleSet|PSQualityCheck Version|PowerShell Result|
|:---|:---|:---|
|None|1.2.1|![PowerShell 7.1.1 - Pass](https://img.shields.io/badge/powershell%207.1.1-pass-brightgreen)|
|None|1.2.0|![PowerShell 7.1.1 - Pass](https://img.shields.io/badge/powershell%207.1.1-pass-brightgreen)|
|None|1.1.1|![PowerShell 7.1.1 - Pass](https://img.shields.io/badge/powershell%207.1.1-pass-brightgreen)|
|None|1.1.0|![PowerShell 7.1.0 - Pass](https://img.shields.io/badge/powershell%207.1.0-pass-brightgreen) ![PowerShell 5.1 - Pass](https://img.shields.io/badge/powershell%205.1-pass-brightgreen)|
|None|1.0.10|![PowerShell 7.1.0 - Pass](https://img.shields.io/badge/powershell%207.1.0-pass-brightgreen) ![PowerShell 5.1 - Pass](https://img.shields.io/badge/powershell%205.1-pass-brightgreen)|
|[indented-automation](https://github.com/indented-automation/ScriptAnalyzerRules)<br/>(used by SonarQube)|1.2.1|![PowerShell 7.1.1 - Pass](https://img.shields.io/badge/powershell%207.1.1-pass-brightgreen)|
|[indented-automation](https://github.com/indented-automation/ScriptAnalyzerRules)<br/>(used by SonarQube)|1.2.0|![PowerShell 7.1.1 - Pass](https://img.shields.io/badge/powershell%207.1.1-pass-brightgreen)|
|[indented-automation](https://github.com/indented-automation/ScriptAnalyzerRules)<br/>(used by SonarQube)|1.1.1|![PowerShell 7.1.1 - Pass](https://img.shields.io/badge/powershell%207.1.1-pass-brightgreen)|
|[indented-automation](https://github.com/indented-automation/ScriptAnalyzerRules)<br/>(used by SonarQube)|1.0.10|![PowerShell 7.1.0 - Pass](https://img.shields.io/badge/powershell%207.1.0-pass-brightgreen) ![PowerShell 5.1 - Pass](https://img.shields.io/badge/powershell%205.1-pass-brightgreen)|
|[PSScriptAnalyzer](https://github.com/PowerShell/PSScriptAnalyzer/tree/master/Tests/Engine/CommunityAnalyzerRules)<br/>(used by VSCode)|1.0.9|![PowerShell 7.1.0 - Fail](https://img.shields.io/badge/powershell%207.1.0-fail-red) ![PowerShell 5.1 - Further Testing To Be Performed](https://img.shields.io/badge/powershell%205.1-not%20run-lightgrey)|
