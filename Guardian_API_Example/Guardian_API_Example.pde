import com.francisli.processing.http.*;
 
String api_key = "[YOUR-API-KEY-HERE]"; //put your API key here
 
JSONObject allTitles; 
 
HttpClient client;
 
void setup() {
  // create new client
  client = new HttpClient(this, "content.guardianapis.com");
  
  // instantiate a new HashMap
  HashMap params = new HashMap();
 
  // pass parameters as key-value pairs
  params.put("q", "Cameron");
  params.put("format", "json");
  params.put("api-key", api_key);
 
  // make the request
  client.GET("search", params);
}
 
void responseReceived(HttpRequest request, HttpResponse response) {
  // print the json response as a string
 // println(response.getContentAsString());
 // check for HTTP 200 success code
  if (response.statusCode == 200) {
    JSONObject results = response.getContentAsJSONObject();
 
    // get just the list of artists
    allTitles = results.get("response").get("results");
 
    // we asked for a JSON response from Songkick, so use size() and get() to access elements
    for (int i = 0; i < allTitles.size(); i++) {
      // get the displayName element in the array and return as a String
      String webTitle = allTitles.get(i).get("webTitle").stringValue();
 
      // print out the name
      println("Article " + i + ": " + webTitle);
    }
  } else {
    // output the entire response as a string
    println(response.getContentAsString());
  }
}
 
void draw() {
  

 
}
