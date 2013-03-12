import processing.opengl.*;

import java.util.Collection;

import de.umass.lastfm.Artist;
import de.umass.lastfm.Track;

// last.fm api key
String key = "[YOUR-API-KEY-HERE]"; //this is the key used in the last.fm API examples online.

String artist = "Beatles";

// album data
Album album;
Album tmp;
String album_name;
String album_artist;
int album_year;
PImage album_cover;

// text positioning variables
int fontsize;
int ypos;

// variables for the album cover distortion
int circle_size;
int x, y, loc;
boolean doAlbumDistort;
int w;
int h;

void setup()
{
  size(300,400,OPENGL);
    
  background(102);  // set background colour
  
  // import Raleway Thin font
   
  
  // album distortion variables
  circle_size = 12;
  doAlbumDistort = true;
  
  ypos = 50; 
  
  loadRandomAlbum(artist);
}

void draw()
{
  if (doAlbumDistort)
  {
    distortAlbumCover();
  }
  else
  {
    displayAlbumInfo(); 
  }
}

void loadRandomAlbum(String ar_name)
{
    Collection<Album> topAlbums = Artist.getTopAlbums(ar_name, key);
    
    Iterator<Album> iterator = topAlbums.iterator();
    int r = int(random(topAlbums.size()));
    
    for (int i = 0;i < r;i++)
    {
      if (iterator.hasNext())
      {
        tmp = iterator.next();
      }
    }
       
    getAlbumInfo(tmp.getArtist(),tmp.getName());
}

// get Album Metadata and cover image
void getAlbumInfo(String ar,String al)
{
  // get the album as an Album object  
  album = Album.getInfo(ar,al,key); // get album info
   album_name = album.getName(); // get album name
  album_artist = album.getArtist(); // get album artist

  // get album cover
  
  String imageSize = "EXTRALARGE";  // set image size

  Set<ImageSize> s = album.availableSizes(); // get a set of available image sizes
  
  // if the set contains the image size we are looking for
  if (s.contains(ImageSize.valueOf(imageSize)))
  {   
     album_cover = loadImage(album.getImageURL(ImageSize.valueOf(imageSize)));
     album_cover.resize(300, 300);
     loadPixels();
     w = album_cover.width;
     h = album_cover.height;
  }
 

}

void displayAlbumInfo()
{
  doAlbumDistort = false;
  background(102);
  
  image(album_cover,0,0);
  ypos = h+30;
  
  //stroke(1);
  fill(255);
  text(album_name,10,ypos);
  fill(204);
  ypos = ypos+fontsize+10;
  text(album_artist,10,ypos);
  //ypos = ypos+fontsize+20;
  //text(album_year,20,ypos);
}

// distort the album cover stored in album_cover
void distortAlbumCover()
{  
  // Pick a random point
  x = int(random(w));
  y = int(random(h));
  loc = x + y*w;
  
  // Look up the RGB color in the source image

  float r = red(album_cover.pixels[loc]);
  float g = green(album_cover.pixels[loc]);
  float b = blue(album_cover.pixels[loc]);
  noStroke();
  
  // Draw an ellipse at that location with that color
  fill(r,g,b,100);
  ellipse(x,y,circle_size,circle_size); 
}

void mousePressed()
{
  if (doAlbumDistort)
  {
    doAlbumDistort = false; 
  }
  else
  {
    loadRandomAlbum(artist);
    background(102);
    doAlbumDistort = true; 
  }
}
