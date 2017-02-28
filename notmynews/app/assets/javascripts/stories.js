$(document).ready(function(){


  function ArticleNews(source) {


    var apiKey = '52fe927b3c4f4fe28bcf38d0b2e82875'
    var url = 'https://newsapi.org/v1/articles?source=' + source + '&apiKey=' + apiKey
    $.get(url , function(data) {

      $('#storylist').append(data.articles[0].title )
    })
  }
	var papers = ['buzzfeed', 'the-guardian-uk', 'the-huffington-post', 'the-new-york-times', 'mirror']
	for (var i = 0; i < papers.length; i++){
		ArticleNews(papers[i])

	}


})
