(function(a){a.fn.aceResponsiveMenu=function(j){var g={resizeWidth:"768",animationSpeed:"fast",accoridonExpAll:false};var j=a.extend(g,j),i=j,f=i.resizeWidth,c=i.animationSpeed,d=i.accoridonExpAll,b=a(this),e=a(this).attr("data-menu-style");b.find("ul").addClass("sub-menu");b.find("ul").siblings("a").append('<span class="arrow "></span>');if(e=="accordion"){a(this).addClass("collapse")}if(a(window).innerWidth()<=f){h()}a(window).resize(function(){h()});function h(){var k=a(window).innerWidth();if(k<=f){b.find("li.menu-active").removeClass("menu-active");b.find("ul.slide").removeClass("slide").removeAttr("style");b.addClass("collapse hide-menu");b.attr("data-menu-style","");a(".menu-toggle").show()}else{b.attr("data-menu-style",e);b.removeClass("collapse hide-menu").removeAttr("style");a(".menu-toggle").hide();if(b.attr("data-menu-style")=="accordion"){b.addClass("collapse");return}b.find("li.menu-active").removeClass("menu-active");b.find("ul.slide").removeClass("slide").removeAttr("style")}}a("#menu-btn").click(function(){b.slideToggle().toggleClass("hide-menu")});return this.each(function(){b.on("mouseover","> li a",function(){if(b.hasClass("collapse")===true){return false}a(this).off("click","> li a");a(this).parent("li").siblings().children(".sub-menu").stop(true,true).slideUp(c).removeClass("slide").removeAttr("style").stop();a(this).parent().addClass("menu-active").children(".sub-menu").slideDown(c).addClass("slide");return});b.on("mouseleave","li",function(){if(b.hasClass("collapse")===true){return false}a(this).off("click","> li a");a(this).removeClass("menu-active");a(this).children("ul.sub-menu").stop(true,true).slideUp(c).removeClass("slide").removeAttr("style");return});b.on("click","> li a",function(){if(b.hasClass("collapse")===false){}a(this).off("mouseover","> li a");if(a(this).parent().hasClass("menu-active")){a(this).parent().children(".sub-menu").slideUp().removeClass("slide");a(this).parent().removeClass("menu-active")}else{if(d==true){a(this).parent().addClass("menu-active").children(".sub-menu").slideDown(c).addClass("slide");return}a(this).parent().siblings().removeClass("menu-active");a(this).parent("li").siblings().children(".sub-menu").slideUp().removeClass("slide");a(this).parent().addClass("menu-active").children(".sub-menu").slideDown(c).addClass("slide")}})})}})(jQuery);