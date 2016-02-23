// Assume webbrowser is loaded to location.Craigslist.com

////////////////////// Handle Login part ///////////////////////////////////
// Logs into Craigslist. Returns true if successful, false if login fails
bool login()
	{
	//// Check if the website the browser is at is Craigslist.com home page (by checking HTML?). If not...
	//// Go to a generic Craigslist.com.
	if(website_is_craigslist_homepage == false)
		{ webbrowser.GoTo(www.craigslist.com); }
	
	//// Run JavaScript to click "My Account" to log in

	//// Fill in the fields for username and password using javascript.
	// Click Log In button using JavaScript

	//// Check that the user is correctly logged in. By checking the HTML of the page?
	//// If yes, app moves on.
	//// If no, have the app handle that the login failed, and they can try again if they want.
	
	bool loginworked = false; // By default set to false
	if(websiteshowsuserloggedin == true)
		{ loginworked = true; } // Our login worked so set the variable to true
	else
		{ loginworked = false; } // Our login failed so set the variable to false
	
	
	return loginworked; // Return true or false
	}
////////////////////////////////////////////////////////////////////////////

////////////////////// Handle Posting Listing part /////////////////////////
//// Now the webbrowser should still be open if the user logged in before.
//// If not it's a fresh webbrowser.

bool PostListing() // Not sure if variables will be passed in as parameters, or if they're available in a public class
	{
	bool listingisdone = false;;
	//// Go to Craigslist home page in web browser 
	//// (Need to go to home page first because if they logged in before, they might be on some weird account page)
	
	// Check that page is correct
	// Run Javascript to click PostToClassifies
	
	/// Check that the page is actually correct
	// Run JavaScript command to click For Sale By Owner
	// Run JavaScript command to click Continue button
	
	// Check that page is correct
	// Run JavaScript command to click Cars & Trucks
	// Run JavaScript command to click Continue button
	
	// Check that page is correct
	// Run JavaScript command to click location (we'll have to write code to check zip code)
	// Run JavaScript command to click Continue button
	
	// Check if page is for Manhattan/SF. If yes, click "i dont wanna specify" or whatever
	// Run JavaScript to continue in that case
	
	//// Now we should be on the page to post info.
	// Run a bunch of Javascript to populate the fields.
	// Javascript to hit continue.
	
	//// Now we're at the add images page
	// Somehow handle the adding of the images
	// Javascript to continue
	
	//// Now we're at the "okay loser, hit the button to publish" page
	// Run JavaScript to hit the publish button
	//// The listing should be published at this point. 
	
	// Check page. If it has that "go check your email, successfully published" stuff
	// or some other metric to know the listing was published, then
	if (PageIsCorrect("publish successful!" == true)
		{ listingisdone = true; }
	
	return listingisdone;
	}
////////////////////////////////////////////////////////////////////////////

////////////////////////// Functions ///////////////////////////////////////
// Functions are just code blocks that get reused multiple times

//////////////////////////////////////
// Javascript function
// Given a string command, run the command as javascript on the page (like we did in Chrome's Console)
void JavaScriptCommand(NSString command)
	{
	// Code to run the command
	}
//////////////////////////////////////

//////////////////////////////////////
// Change Webpage
// Given a string URL, navigate to a new webpage in UIWebView
// From: http://stackoverflow.com/questions/5342830/changing-a-url-and-reloading-the-uiwebview
- (void)changeURL:(NSString)url
	{
    urlString = [NSString stringWithFormat:@url];
    [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    [searchBar setShowsCancelButton:NO animated:YES];
	} 
//////////////////////////////////////

//////////////////////////////////////	
// Page is correct
// Check that a page is correct
// There might be a better way to do this, but for now I think checking HTML works
bool PageIsCorrect(string exactHTML)
	{
	bool correctness = true; // By default we'll assume true
	// exactHTML will be a string unique to the page we're checking to make sure it's correct
	
	if (HTML_of_page_we're_currently_on.Contains(exactHTML) == true)
		{ boolcorrectness = true; }
	else
		{ correctness = false; }
		
	return correctness;
	}
//////////////////////////////////////

////////////////////////////////////////////////////////////////////////////