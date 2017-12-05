$(window).scroll(function () {		           
				if($(window).scrollTop() > 680){
					$(".menu-wrap").addClass("top-menu");
				} else {
					$('.menu-wrap').removeClass('top-menu');
				}            
        });
//$('#data_permintaan').dataTable();	
var NewSensor,chart1,chart2,chart3,chart4;


$(function () {
    $(document).ready(function () {
        Highcharts.setOptions({
            global: {
                useUTC: false
            }
        });

    });
});

function change_maps(){           
    $.ajax({
    	type	: 'post',
	data	: {},
	url 	: 'ajax/maps.jsp',
	success	: function(result){            
            $("#ajaxmaps").html(result);
       }
    });  
    /*setTimeout(function (){
        change_maps();
    }, 1000);
    */
    
}

function tampil_popup(id,name,tipe){
    if(tipe=='ROV')
        link = 'detail';
    else 
        link = 'detail_image'
    $.ajax({
    	type	: 'post',
	data	: {id:id},
	url 	: 'ajax/'+link+'.jsp',
	success	: function(result){            
            $(".popup_modal").html(result);
            $("#modal_button").click();
            $(".name_rov").html(name);
       }
    });  
}


function new_sensor(id,id_old){            
    clearTimeout(NewSensor);
    $.ajax({
    	type	: 'post',
	data	: {id:id,id_old:id_old},
	url 	: 'ajax/new_sensor.jsp',
	success	: function(result){            
            $("#new_sensor").html(result);
        }       
    });          
    if( $("#modal-target").hasClass('in')){        
        NewSensor = setTimeout(function (){
            new_sensor(id,id_old);
        }, 5000);        
    } 
}

function new_sensor_image(id,id_old){            
    clearTimeout(NewSensor);
    $.ajax({
    	type	: 'post',
	data	: {id:id,id_old:id_old},
	url 	: 'ajax/new_sensor_image.jsp',
	success	: function(result){            
            $("#new_sensor_image").after(result);
        }       
    });          
    if( $("#modal-target").hasClass('in')){        
        NewSensor = setTimeout(function (){
            new_sensor(id,id_old);
        }, 5000);        
    } 
}
