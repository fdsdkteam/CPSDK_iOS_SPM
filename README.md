# CPSDK_iOS_SPM

**CPSDK SPM Integration**

Add the SDK as a Swift Package. More detailed instructions can be found below:

###### Step-by-Step Integration

1. Open Xcode
2. Navigate to File -> Swift Packages -> Add Package Dependency.
3. Paste the CPSDK SPM URL: https://github.com/fdsdkteam/CPSDK_iOS_SPM.
4. Select Up to Next Major version and make sure you have the latest version (e.g., 1.4.9).
5. Click "Add Package" button to finish.
6. You should now see the swift package (CPSDK_iOS_SPM 1.4.9) in the project navigator.

###### Updating to the Latest Version:
If you are updating from a previous version of the SDK, follow these steps:
1.	Open Xcode
2.	Navigate to File -> Packages -> Update to Latest Package Versions.

  	This step will ensure that Xcode fetches the latest version specified by the version constraints in your project.
   
Note: The Lottie framework has been added as a dependency via Swift Package Manager (https://github.com/airbnb/lottie-spm.git) in this release. It will be included alongside CPSDK_iOS_SPM.
  	
  	
###### Resolving Cache Issues:
If you face any issues with updating the package, such as checksum mismatch or not fetching the latest version, follow these steps to resolve local and package cache issues:
1.	**Reset Package Caches**:
   In Xcode: Navigate to File -> Packages -> Reset Package Caches.
  	Terminal Command: You can also reset package caches from the terminal:
  	**rm -rf ~/Library/Caches/org.swift.swiftpm/**
  	This will clear the Swift Package Manager cache and ensure it fetches the latest version.
2.	**Clear Derived Data**:
   Sometimes, issues may arise due to Xcode's derived data.
  	To clear derived data:
  	In Xcode: Go to Preferences -> Locations -> Derived Data and click the "Delete" button.
	Terminal Command: **rm -rf ~/Library/Developer/Xcode/DerivedData/**
3. **Clean Build Folder**:
   After resetting caches and clearing derived data, it's important to perform a clean build:
   In Xcode: Navigate to Product -> Clean Build Folder (Shift + Command + K).
   This will ensure any outdated build artifacts are removed, and a fresh build is performed.



###### **SPM Usage**

1. import PaymentSDK
2. import PayWithMyBank
3. import RLTMXProfiling

Lastest iOS SDK version is - **1.4.9**

PaymentSDK, PayWithMyBank and RLTMXProfiling frameworks should be **Embed & Sign** in the project.


# **Minimum OS versions supported.**

| Tool| Version| 
|---------------|------|
|Xcode |16.2| 
|Swift |5|
|iOS Deployment Target |13.0| 



# **oAuth Completion.**

Please go through the SDK technical integration document for the details.
