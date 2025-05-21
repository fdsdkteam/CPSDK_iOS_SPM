# CPSDK_iOS_SPM

**CPSDK SPM Integration**

Add the SDK as a Swift Package. More detailed instructions can be found below:

###### Step-by-Step Integration

1. Open Xcode
2. Navigate to File -> Swift Packages -> Add Package Dependency.
3. Paste the CPSDK SPM URL: https://github.com/fdsdkteam/CPSDK_iOS_SPM.
4. Select Up to Next Major version and make sure you have the latest version (e.g., 1.4.6).
5. Click "Add Package" button to finish.
6. You should now see the swift package (CPSDK_iOS_SPM 1.4.6) in the project navigator.

###### Updating to the Latest Version:
If you are updating from a previous version of the SDK, follow these steps:
1.	Open Xcode
2.	Navigate to File -> Packages -> Update to Latest Package Versions.

  	This step will ensure that Xcode fetches the latest version specified by the version constraints in your project.
  	
  	
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

Lastest iOS SDK version is - **1.4.6**

PaymentSDK, PayWithMyBank and RLTMXProfiling frameworks should be **Embed & Sign** in the project.


# **Minimum OS versions supported.**

| Tool| Version| 
|---------------|------|
|Xcode |16.2| 
|Swift |5|
|iOS Deployment Target |13.0| 



# **oAuth Completion.**

We needed to add the Url Scheme for deeplinking in order to complete oAuth. The format for the Url Scheme should be like below,

URL **Identifier** would be - **bank.oauth/{appUniqueIdentifier}**

URL **Scheme** would be - **cpsdk**

Take URL Identifier **bank.oauth/sampleApp**, for instance. In this case, sampleApp is the app's unique identifier.

Kindly find the info.plist code snippet below,

![image](https://github.com/user-attachments/assets/3e0d4f75-e539-4aef-9a1f-f0b2c00f10cf)



<img width="1292" alt="PaymentSDK_V1 3 6_SampleApp_URLScheme" src="https://github.com/user-attachments/assets/6c1b13f4-b14a-41ac-8860-1e67bca52c65">
