# Function to create a virtual machine
function CreateVM {
    $ResourceGroupName = Read-Host "Enter the name of the resource group for the Virtual Machine"
    Write-Host "Creating Virtual Machine in resource group '$test1'..."
    # Azure PowerShell command to create a virtual machine
    New-AzVM -ResourceGroupName $ResourceGroupName -Name "MyVM" -Location "eastus" -Image "Ubuntu20.04lts" -Size "Standard_B1s"
    Write-Host "Virtual Machine created in resource group '$test1'"
}

# Function to create a virtual network
function CreateVNet {
    $ResourceGroupName = Read-Host "Enter the name of the resource group for the Virtual Network"
    Write-Host "Creating Virtual Network in resource group '$test1'..."
    # Azure PowerShell command to create a virtual network
    New-AzVirtualNetwork -ResourceGroupName $ResourceGroupName -Name "Vnet1h2" -Location "eastus" -AddressPrefix "10.0.0.0/16"
    Write-Host "Virtual Network created in resource group '$test1'"
}

# Function to create a SQL Database
function CreateSQLDatabase {
    $ResourceGroupName = Read-Host "Enter the name of the resource group for the SQL Database"
    Write-Host "Creating SQL Database in resource group '$test1'..."
    # Azure PowerShell command to create a SQL database
    New-AzSqlDatabase -ResourceGroupName $ResourceGroupName -ServerName "SQL1" -DatabaseName "MyDatabase" -Edition "Basic" -RequestedServiceObjectiveName "Basic" -Location "eastus"
    Write-Host "SQL Database created in resource group '$test1'"
}

# Function to create a Storage Account
function CreateStorageAccount {
    $ResourceGroupName = Read-Host "Enter the name of the resource group for the Storage Account"
    Write-Host "Creating Storage Account in resource group '$test1'..."
    # Azure PowerShell command to create a storage account
    New-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name "storage1rtp5" -Location "eastus" -SkuName "Standard_LRS"
    Write-Host "Storage Account created in resource group '$test1'"
}

# Display menu
Write-Host "Azure Resource Installation Menu"
Write-Host "1) Virtual Machine"
Write-Host "2) Virtual Network"
Write-Host "3) SQL Database"
Write-Host "4) Storage Account"

# Prompt user to choose option
$choice = Read-Host "Enter your choice (1-4)"

# Process user choice
switch ($choice) {
    1 { CreateVM }
    2 { CreateVNet }
    3 { CreateSQLDatabase }
    4 { CreateStorageAccount }
    
}

