import twitter4j.conf.*;
import twitter4j.*;
import twitter4j.auth.*;
import twitter4j.api.*;

ConfigurationBuilder cb = new ConfigurationBuilder();
TwitterFactory tf; 
twitter4j.Twitter twitter;
QueryResult result;

int i = 0;

void setup()
{
  size(800, 600);

  cb.setDebugEnabled(true);
  cb.setOAuthConsumerKey("[PUT-KEY-HERE]");
  cb.setOAuthConsumerSecret("[PUT-KEY-HERE]");
  cb.setOAuthAccessToken("[PUT-KEY-HERE]");
  cb.setOAuthAccessTokenSecret("[PUT-KEY-HERE]");

  tf = new TwitterFactory(cb.build());

  twitter = tf.getInstance();

  try {
    Query query = new Query("#OWS");

    result = twitter.search(query);
  } 
  catch (TwitterException te) {
    te.printStackTrace();
    System.out.println("Failed to search tweets: " + te.getMessage());
    System.exit(-1);
  }
  
  frameRate(5);
}

void draw()
{
  fill(0, 1);
  rect(0, 0, width, height);


  fill(255, random(50, 150));



  List<Status> tweets = result.getTweets();
 
  //System.out.println("@" + tweet.getUser().getScreenName() + " - " + tweet.getText());
  text(tweets.get(i).getText(), random(width), random(height),300,200);
  //}
}

