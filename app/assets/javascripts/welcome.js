$(document).ready(function(){

  function newsArticles(source, articleNo) {

    var apiKey = '52fe927b3c4f4fe28bcf38d0b2e82875';
    var url = 'https://newsapi.org/v1/articles?source=' + source + '&apiKey=' + apiKey;
    $.get(url , function(data) {
      var paperName = source.replace(/-/g, " ").toUpperCase();
      $('#splashscreen').append("<ul class='storylist'><li><div class='splashbox'><div class='storyinfo'><a href='" + data.articles[articleNo].url + "'>"  + data.articles[articleNo].title + "</a><br>" + data.articles[articleNo].description  + "<br>" + paperName + "<br></div><img class='storyphoto' src='" + data.articles[articleNo].urlToImage + "'></div></li><hr class='storysplitter'></ul>" );
    });
  }

  $.get('/papers', function(data){
    var papers = data.paper;


     for (var i = 0; i < 3; i++){
       newsArticles(papers[Math.floor((Math.random() * papers.length))], 0);
      }

  });
});
