$(document).ready(function(){

	function getHeadline() {
		var results = ''
		var papers = ['buzzfeed', 'the-guardian-uk', 'the-huffington-post', 'the-new-york-times', 'mirror']

		for (var i = 0; i < papers.length; i++) {
			$.get("https://newsapi.org/v1/articles?source=" + papers[i] + "&apiKey=a6b03a1b52f64218a40f82bd352dd8f9", function(data){
				for (var i = 0; i< 3; i++) {
					results += (data.articles[i].title) + ' ';
					console.log('hi!')
				}

			});
			// $elem = document.getElementById('storylist')

		}

	}
	getHeadline()

});
