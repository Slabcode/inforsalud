$(document).ready(function($) {
	console.log("Funciona");
	var $description = $('.home_career .content_info .show_careers .career_description .info');
	var $description_aux = $('.home_career .content_info .show_careers .career_description .info');

	var $goals = $('.home_career .content_info .show_careers .career_goals .info');
	var $goals_aux = $('.home_career .content_info .show_careers .career_goals .info');

	$description.text($description_aux.text().substring(0,140) + " ...");
	$goals.text($goals_aux.text().substring(0,140) + " ...");

});