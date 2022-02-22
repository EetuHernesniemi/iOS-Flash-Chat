# iOS-Flash-Chat
This is a messaging application with login features for iOS. The online chatting functionality uses features provided by Google Firebase.

# Required setup
1. Edit the xcode project file and set unique bundle identifier to your copy of the source code.
2. Login to firebase at https://firebase.google.com/
3. Create new iOS project. Set the iOS app bundle identifier in the firebase project to be the same as the one in your xcode project file at step 1.
4. Download the firebase config file "GoogleService-Info.plist" for the firebase project. Set the file to root of the source code.
5. Drag the downloaded file as a reference in xcode into the "Flash Chat" folder.
6. Install cocoapods.
7. run command pod install from the terminal at the root directory of the xcode project.
8. Build the app and run it.
