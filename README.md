# Vidstagram

Product Description:

You’re building an app called Vidstagram, which is a simplistic video only version of Instagram. Core functionality should be:

1. Logging in view content (Firebase Auth)
a. User enters their full name and the phone number to log in
b. Just make sure its at least two words (don’t worry about validation)
2. Single screen with “feed” to display all posts (Firebase Functions + Firebase Firestore on backend)
    a. Sorted by creation date, descending
    b. Each “post cell” should display the video, date, user name who created it, and title of the post
c. Tap on the video to play/pause
3. Ability to create a new post with a title and upload a video (both required) (Firebase Storage + Firebase Functions + Firebase Firestore on backend)
a. Photos should be force cropped to a square
4. BONUS (Firebase Functions)​ - After uploading a post, you should increment a
“total_posts” property of the use Examples Usage:
1. User John Doe is the first user and creates an account on Vidstagram
2. The “Feed” is currently empty since no one has uploaded any
3. John then uploads a post with a video of his cat
4. After upload, the feed will consist of this singular post
5. User Jane Doe is the second user and creates an account on Vidstagram
6. Upon connecting, Jane will see the singular video posted by John
KRE8.TV Tech, 2020
7. John then uploads a post with a video of her dog
8. After upload, the feed will consist of these two videos, where Jane’s “Dog post” will be
above Jane’s video

Guidelines:
- You will need to use the following Firebase technologies for getting this project up &
running:
    ○ Firebase Auth
    ○ Firebase Functions
    ○ Firebase Firestore
    ○ Firebase Storage
    ○ Firebase Hosting
- Make sure to use ​source control​ (github or bitbucket) do manage your code, as well as show how you work with source management (commits, etc)

Design:
- Focus on usability, smoothness, functionality
- Should not be more than a few screens
