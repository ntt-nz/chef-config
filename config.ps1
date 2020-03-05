$vm_name =$args[0]
$env_name =$args[1]
"node_name  '$vm_name'"| add-content c:\chef\client.rb -Encoding UTF8
[System.Environment]::SetEnvironmentVariable('APPENV',$env_name,[System.EnvironmentVariableTarget]::Machine)
Powershell C:\opscode\chef\bin\chef-client.bat --runlist role[bootstrap]
