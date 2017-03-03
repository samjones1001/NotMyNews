$(document).ready(function(){

  $.get('/papers', function(data){
    var papers = data.paper;

   for (var k = 0; k < 3; k++){
     for (var i = 0; i < papers.length; i++){
       newsArticles(papers[i], k);
      }
    }
  });
});

function newsArticles(source, articleNo) {

  var apiKey = '52fe927b3c4f4fe28bcf38d0b2e82875';
  var url = 'https://newsapi.org/v1/articles?source=' + source + '&apiKey=' + apiKey;
  $.get(url , function(data) {
    var paperName = source.replace(/-/g, " ").toUpperCase();
    $('#storylist').append("<li style='list-style:none'><div class='storybox'><div class='storyinfo'>" + "<a href='" + data.articles[articleNo].url + "'>"
       + data.articles[articleNo].title + "</a>" + "<br>" + data.articles[articleNo].description
       + "<br>" + paperName + "</div><br><img class='storyphoto' src='" + data.articles[articleNo].urlToImage
       + "' height='150'>" +
       "<iframe width='0' height='0' border='0' name='dummyframe' id='dummyframe' style='display:none;''></iframe>"
       + "<form action='/savedlinks' method='post' target='dummyframe'>"
       + "<input class='input' type='text' style='display:none;' name='Title' value='"  + data.articles[articleNo].title + "'>"
       + "<input class='input' type='text' style='display:none;' name='Url' value='" + data.articles[articleNo].url + "'>"
       + "<input class='input' type='text' style='display:none;' name='Description' value='" + data.articles[articleNo].description +"'>"
       + "<input class='input' type='text'  style='display:none;' name='Source' value='" + paperName + "'>"
       + "<input class='input' type='text' style='display:none;' name='Image' value='" + data.articles[articleNo].urlToImage + "'>"
       + "<input type='submit' value='Save'>"
       + "</form>"
       + "<br></div></li><hr class='storysplitter'><br>"
    );
  });
}
