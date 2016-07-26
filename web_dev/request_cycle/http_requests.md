** # Common HTTP Status Codes: **

*200*	Succeeded
*300*	Multiple choicse can't be resolved into 1 choice
*301*   New Permenant URL
*302*	Temporary new URL
*304*	Conditional Searches where date modified fails, this is done to  			simplify and not over fill the cache with old posts already seen
*307*   Temporary URL only under certain circumstances
*400*	Not understood request due to syntax error in request
*401*	Need user authentication/unauthorized search
*403*	Refused/Understood and uthorized but refuesed none the less
*404*	No matching URL
*410*	No Longer available
*500*	Unexpected onditions preventing request from being fufilled
*501*	Server not supproting fucitonality
*503*	Unable to handle HTTP due to many reasons like crash, maintance, 
			over load
*550*	Server doesn't have permission to fufill request

// * ### Pages Used in the above search*
	* [HTTP Status Codes](https://www.smartlabsoftware.com/ref/http-status-codes.htm) *

** # Difference between GET Request and POST Requect and When Each is used **
## GET and POST are two of the most common Methods in HTTP searches
* ##GET
//	1. Retrieves a Document like tml, images, Javascript, css 
	2. Used for retrieving things that load in your browser 
	3. html loads can ask GET to load images that correspond

* ### When To Use a GET
	1. For things that load in your browswer

* ##POST 
// 1. Sends Data to the Server
	2. usally fromated in a web form  that does not have a query string like GETS but content type and lenght eaders are added

* ###  When to Use a POST
	1. Better than Get for sednign data to the server because it can take large amounts of datat where GET is not practical and has limiations with larger amounts of data
// * ### Pages Used in the above search *
	*[METHODS Info GET/POST etc](http://code.tutsplus.com/tutorials/http-headers-for-dummies--net-8039) *

** # What are COOKIES in relation to HTTP Requests
* Cookies are small text files, that have no excutable code they are plain text only
* This small text file is stored by a browser on the user's machine
* This file identifies an indviual user as it is sent back with each request
* In the login process on a webpage the cookie is set and then the coolie is sent with each request the user makes to the website as an identification/validator of the user

// * ### Pages Used in the above search *
	*[Cookies Explained the Simple Way](https://www.nczonline.net/blog/2009/05/05/http-cookies-explained/)*

// * ### Page Used for Formatting this Page in Markdown *
	*[MarkDown Basics](http://help.twitch.tv/customer/portal/articles/839490-markdown-basics) *


