$(document).ready(function(){

  function newsArticles(source, articleNo) {

    var apiKey = '52fe927b3c4f4fe28bcf38d0b2e82875';
    var url = 'https://newsapi.org/v1/articles?source=' + source + '&apiKey=' + apiKey;
    $.get(url , function(data) {
      var paperName = source.replace(/-/g, " ").toUpperCase();
      $('#storylist').append("<ul><li>" + "<a href='" + data.articles[articleNo].url + "'>"  + data.articles[articleNo].title + "</a>" + "<br>" + data.articles[articleNo].description  + "<br>" + paperName + "<br><img src='" + data.articles[articleNo].urlToImage + "'height='150' ><br></li></ul><br>" );
    });
  }

  $.get('/papers', function(data){
    var papers = data.paper;

   for (var k = 0; k < 3; k++){
     for (var i = 0; i < papers.length; i++){
       newsArticles(papers[i], k);
      }
    }
  });
});
