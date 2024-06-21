var bannerimg = $(".head .banner>div");
var lrbutton = $(".head .lrbutton>li");
var smallbutton = $(".head .smallbutton>li");
var index = 0;
var dingshiqi ;
zidong();
lrclick();
zhiding();
//这里负责图片切换
function imgqie(index){
	$.each(bannerimg,function(i,val){
		$(this).removeClass("show");
		$(this).addClass("hide");
		$(smallbutton[i]).addClass("btnstylehide");
	})
	$(bannerimg[index]).addClass("show");
	$(smallbutton[index]).removeClass("btnstylehide");
	$(smallbutton[index]).addClass("btnstyleshow");
}
//设定计时器，开始轮播
function zidong(){
	dingshiqi=setInterval(function(){
		if(index==bannerimg.length-1){
			index=0;
			imgqie(index);
		}else{
			index++;
			imgqie(index);
		}
	},4000)
}
//这里点击左右按钮，进行图片切换
function lrclick(){
	let leftbutton=lrbutton[0];
	let rightbutton=lrbutton[1];
	$(leftbutton).click(function(){
		clearInterval(dingshiqi);
		if(index==0){
			index=bannerimg.length-1;
			imgqie(index);
		}else{
			index--;
			imgqie(index);
		}
		zidong();
	})
	$(rightbutton).click(function(){
		clearInterval(dingshiqi);
		if(index==bannerimg.length-1){
			index=0;
			imgqie(index);
		}else{
			index++;
			imgqie(index);
		}
		zidong();
	})
}
//这里相当于点底下的小按钮进行跳转页面
function zhiding(){
	$.each(smallbutton,function(i,val){
		$(val).click(function(){
			clearInterval(dingshiqi);
			index=i;
			imgqie(index);
			zidong();
		})
	})
}