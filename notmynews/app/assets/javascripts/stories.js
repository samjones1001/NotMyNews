$(document).ready(function(){


  function newsArticles(source) {

    var apiKey = '52fe927b3c4f4fe28bcf38d0b2e82875'
    var url = 'https://newsapi.org/v1/articles?source=' + source + '&apiKey=' + apiKey
    $.get(url , function(data) {
      var paperName = source.replace(/-/g, " ").toUpperCase()
      console.log(paperName)
      $('#storylist').append("<ul><li>" + "<a href='" + data.articles[0].url + "'>"  + data.articles[0].title + "</a>" + "<br>" + data.articles[0].description + "<br>" + paperName + "<br>" + "<img src='"+ data.articles[0].urlToImage + "'>" + "</li></ul>" + "<br>")

    })
  }

  function paperReader(papers) {
  	 var papers = ['buzzfeed', 'the-guardian-uk', 'the-huffington-post', 'the-new-york-times', 'mirror']
  	for (var i = 0; i < papers.length; i++){
  		newsArticles(papers[i])
    }
	}

  paperReader();

})
