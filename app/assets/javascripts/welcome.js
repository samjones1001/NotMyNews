$(document).ready(function(){

  function newsArticles(source, articleNo) {

    var apiKey = '52fe927b3c4f4fe28bcf38d0b2e82875';
    var url = 'https://newsapi.org/v1/articles?source=' + source + '&apiKey=' + apiKey;
    $.get(url , function(data) {
      var paperName = source.replace(/-/g, " ").toUpperCase();
      $('#splashscreen').append("<ul><li>" + "<a href='" + data.articles[articleNo].url + "'>"  + data.articles[articleNo].title + "</a>" + "<br>" + data.articles[articleNo].description  + "<br>" + paperName + "<br><img src='" + data.articles[articleNo].urlToImage + "'height='150' ><br></li></ul><br>" );
    });
  }

  $.get('http://localhost:3000/papers', function(data){
    papers = data.paper


     for (var i = 0; i < 3; i++){
       newsArticles(papers[Math.floor((Math.random() * 15))], 0);
      }

  })
});
