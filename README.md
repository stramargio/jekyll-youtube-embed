# jekyll-youtube-embed
An easy to use Jekyll plugin to embed youtube videos

### Installation
Simply put the file `youtube.rb` in your Jekyll's `_plugins` folder.

### Usage
Insert the tag `{% youtube YOUTUBE_VIDEO_ID %}` where you want to embed the video.

### Responsive embedding
By default, the plugin print the youtube iframe inside a container div with `videoWrapper` class. If you want to make the iframe responsive, add these few CSS Lines to your stylesheet:

```css
/* Youtube responsive video container */
.videoWrapper {
  position: relative;
  padding-bottom: 56.25%; /* 16:9 */
  padding-top: 25px;
  height: 0;
}
.videoWrapper iframe {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}
```

That's all, folks! ;)