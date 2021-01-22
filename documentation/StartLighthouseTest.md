# Start Lighthouse Test
Task that starts a lighthouse test.

[<= Back](../README.md)

## Parameters
### Group: Settings
#### Environment Id
**[string]** - **required**  
The environment id that you get from the lighthouse test website.  
**Example:** `mRgLgE3uCx7RVHc5gzFu1gWtssxcYraL0CvLCMJblkbxweO9`  
**Default value:** `$(EnvironmentId)`

#### Commit
**[string]** - **optional**  
The last commit on the repo.  
**Example:** `39889e73f5aaaa2bacda86bfdc6180f1c7b5ed7d`  
**Default value:** `$(Commit)`

### Group: ErrorHandlingOptions
#### ErrorActionPreference
**[pickList]** - **required**  
How the task should handle errors.  
**Example:** `600`  
**Default value:** `stop`  
**Options:**  
- **Stop**: Terminate the action with error.
- **Continue**: Display any error message and attempt to continue execution of subsequence commands.
- **SilentlyContinue**: Don't display an error message continue to execute subsequent commands.

[<= Back](../README.md)
