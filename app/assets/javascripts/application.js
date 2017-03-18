
//= require jquery
//= require raphael.min
//= require bootstrap
//= require app
//= require bootstrap-table

$(document).ready(function(){
  $('.bootstrap-table').bootstrapTable({
      height: 700,
      striped: true
  });

  $('.bootstrap-table2').bootstrapTable({
      striped: true
  });
});