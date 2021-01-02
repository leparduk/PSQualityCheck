Describe "Get-FileContent.Tests" {

    Context "Parameter Tests" {

        $mandatoryParameters = @(
            'Path'
        )

        foreach ($parameter in $mandatoryParameters) {

            It "should have $parameter as a mandatory parameter" -TestCases @{ 'parameter' = $parameter } {

                # Check whether the parameter exists
                (Get-Command -Name 'Get-FileContent').Parameters[$parameter].Name | Should -BeExactly $parameter

                # Check whether or not it's mandatory
                (Get-Command -Name 'Get-FileContent').Parameters[$parameter].Attributes.Mandatory | Should -BeTrue

            }

        }

    }

    Context "Function tests" {

    }

}
