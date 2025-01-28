# CPSDK_iOS_Package
CPSDK iOS Swift Package Manager 

###### Download iOS CPSDK through Swift Package Manager

Lastest iOS version is - **1.3.9**

.package(url: "https://github.com/fdsdkteam/CPSDK", from: "1.3.9")

###### **SPM Usage**

import PaymentSDK
import PayWithMyBank
import RLTMXProfiling



###### Download xcframework zip files directly from GitHub.

iOS latest build is *PaymentSDK.v1.3.9.xcframework.zip* loacated at [CPSDK/IOS/Release/cp_sdk_library_release/](https://github.com/fdsdkteam/CPSDK/tree/master/IOS/Release/cp_sdk_library_release).

Latest [SDK Dependencies](https://github.com/fdsdkteam/CPSDK/tree/master/IOS/Release/SDK_Dependencies) versions are:
PaywithmyBank version 2.3.0 and RLTMXProfiling version 6.3.70

 - SDK Dependencies should be included along with the PaymentSDK in the Application and should be **Embed & Sign**.
 - Sample app - https://github.com/fdsdkteam/CPSDK/tree/master/IOS/CPDemo/2024/Oct/v1.3.9/CPSDKSampleApp
    


###### Minimum OS versions supported.

| Tool| Version| 
|---------------|------|
|Xcode |15.4| 
|Swift |5.8.1|
|iOS Deployment Target |13.0| 



###### oAuth Completion:

We needed to add the Url Scheme for deeplinking in order to complete oAuth. The format for the Url Scheme should be like below,

URL **Identifier** would be - **bank.oauth/{appUniqueIdentifier}**

URL **Scheme** would be - **cpsdk**

Take URL Identifier **bank.oauth/sampleApp**, for instance. In this case, sampleApp is the app's unique identifier.

Kindly find the info.plist code snippet below,

![image](https://github.com/user-attachments/assets/3e0d4f75-e539-4aef-9a1f-f0b2c00f10cf)



<img width="1292" alt="PaymentSDK_V1 3 6_SampleApp_URLScheme" src="https://github.com/user-attachments/assets/6c1b13f4-b14a-41ac-8860-1e67bca52c65">
