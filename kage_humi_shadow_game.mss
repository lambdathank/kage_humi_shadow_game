#include "lambda.h"

/*
　文字列は imgSetCurrent で有効になっているイメージに描画される。
*/
main()
{
	var type, stat;
	var txt;
	var x, y;
	var x1, y1, x2, y2;
	var but1,but1x,but1y,butapp1;
	var pl1,pl2;
	var y1plus,y2plus;
	var time1, time2, time3;
	var tyou1,tyou2;
	var t1x,t1y,t2x,t2y;
	var syu1;
	var s1x,s1y;
	var bg;
	x = 100;
	y = 100;
	x1 = 400;
	y1 = 100;
	x2 = 100;
	y2 = 100;
	t1x = 300;
	t1y = 100;
	t2x = 300;
	t2y = 400;
	s1x = 400;
	s1y = 400;
	SprSetLevel(22);
	txt = imgCreate(640,480,0,0);
	bg = imgLoad("bg.png", 0, 0);
	imgSetCurrent(txt);
	imgFill(31, 31, 31);
	txtSetColor(0, 0, 0);
	pl1 = imgLoad("man1.png", 6, 0);
	imgSetCurrent(pl1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	pl2 = imgLoad("man1.png", 9, 0);
	imgSetCurrent(pl2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	
	tyou1 = imgLoad("tyou1.png", 13, 0);
	imgSetCurrent(tyou1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(t1x, t1y);
	tyou2 = imgLoad("tyou1.png", 16, 0);
	imgSetCurrent(tyou2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(t2x, t2y);
	syu1 = imgLoad("syuwa1.png", 16, 0);
	imgSetCurrent(syu1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(s1x, s1y);
	timeSetFPS(30);
	timeClear();

	mosClear();
	sprRenderScreen();

	while(1)
	{
		inpClear();
		if(time1 < 60){
	pl1 = imgLoad("man1.png", 6, 0);
	imgSetCurrent(pl1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	pl2 = imgLoad("man1.png", 9, 0);
	imgSetCurrent(pl2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	if((x2 < (x1 + 64)) && (x1 < (x2 + 64)) && (y2 + 55 < (y1 + 55)) && (y1 < (y2 + 120))){
	txtOut("Player2WIN");
	}
	if((x1 < (x2 + 64)) && (x2 < (x1 + 64)) && (y1 + 55 < (y2 + 55)) && (y2 < (y1 + 120))){
	txtOut("Player1WIN");
	}
		}else if((time1 > 59)&&(time1 < 120)){
	if(y1plus==0){
	y1+=33;
	y2+=33;
	y1plus=1;
	}
	pl1 = imgLoad("man0.png", 6, 0);
	imgSetCurrent(pl1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	pl2 = imgLoad("man0.png", 9, 0);
	imgSetCurrent(pl2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	if((x2 < (x1 + 64)) && (x1 < (x2 + 64)) && (y2 + 31 < (y1 + 31)) && (y1 < (y2 + 87))){
	txtOut("Player2WIN");
	}
	if((x1 < (x2 + 64)) && (x2 < (x1 + 64)) && (y1 + 31 < (y2 + 31)) && (y2 < (y1 + 87))){
	txtOut("Player1WIN");
	}
		}else if((time1 > 119)&&(time1 < 180)){
	if(y1plus==1){
	y1-=33;
	y2-=33;
	y1plus=2;
	}
	pl1 = imgLoad("man1.png", 6, 0);
	imgSetCurrent(pl1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	pl2 = imgLoad("man1.png", 9, 0);
	imgSetCurrent(pl2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	if((x2 < (x1 + 64)) && (x1 < (x2 + 64)) && (y2 + 55 < (y1 + 55)) && (y1 < (y2 + 120))){
	txtOut("Player2WIN");
	}
	if((x1 < (x2 + 64)) && (x2 < (x1 + 64)) && (y1 + 55 < (y2 + 55)) && (y2 < (y1 + 120))){
	txtOut("Player1WIN");
	}
		}else if((time1 > 179)&&(time1 < 240)){
	if(y1plus==2){
	y1-=40;
	y2-=40;
	y1plus=3;
	}
	pl1 = imgLoad("man2.png", 6, 0);
	imgSetCurrent(pl1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	pl2 = imgLoad("man2.png", 9, 0);
	imgSetCurrent(pl2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	if((x2 < (x1 + 64)) && (x1 < (x2 + 64)) && (y2 + 94 < (y1 + 94)) && (y1 < (y2 + 160))){
	txtOut("Player2WIN");
	}
	if((x1 < (x2 + 64)) && (x2 < (x1 + 64)) && (y1 + 94 < (y2 + 94)) && (y2 < (y1 + 160))){
	txtOut("Player1WIN");
	}
		}else if((time1 > 239)&&(time1 < 300)){
	if(y1plus==3){
	y1+=40;
	y2+=40;
	y1plus=4;
	}
	pl1 = imgLoad("man1.png", 6, 0);
	imgSetCurrent(pl1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	pl2 = imgLoad("man1.png", 9, 0);
	imgSetCurrent(pl2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	if((x2 < (x1 + 64)) && (x1 < (x2 + 64)) && (y2 + 55 < (y1 + 55)) && (y1 < (y2 + 120))){
	txtOut("Player2WIN");
	}
	if((x1 < (x2 + 64)) && (x2 < (x1 + 64)) && (y1 + 55 < (y2 + 55)) && (y2 < (y1 + 120))){
	txtOut("Player1WIN");
	}
		}else if((time1 > 299)&&(time1 < 360)){
	if(y1plus==4){
	y1+=54;
	y2+=54;
	y1plus=5;
	}
	pl1 = imgLoad("man3.png", 6, 0);
	imgSetCurrent(pl1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	pl2 = imgLoad("man3.png", 9, 0);
	imgSetCurrent(pl2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	if((x2 < (x1 + 64)) && (x1 < (x2 + 64)) && (y2 < (y1 + 98)) && (y1 + 61 < (y2 + 61))){
	txtOut("Player2WIN");
	}
	if((x1 < (x2 + 64)) && (x2 < (x1 + 64)) && (y1 < (y2 + 98)) && (y2 + 61 < (y1 + 61))){
	txtOut("Player1WIN");
	}
		}else if((time1 > 359)&&(time1 < 420)){
	if(y1plus==5){
	y1+=0;
	y2+=0;
	y1plus=6;
	}
	pl1 = imgLoad("man4.png", 6, 0);
	imgSetCurrent(pl1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	pl2 = imgLoad("man4.png", 9, 0);
	imgSetCurrent(pl2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	if((x2 < (x1 + 64)) && (x1 < (x2 + 64)) && (y2 < (y1 + 119)) && (y1 + 61 < (y2 + 61))){
	txtOut("Player2WIN");
	}
	if((x1 < (x2 + 64)) && (x2 < (x1 + 64)) && (y1 < (y2 + 119)) && (y2 + 61 < (y1 + 61))){
	txtOut("Player1WIN");
	}
		}else if((time1 > 419)&&(time1 < 480)){
	if(y1plus==6){
	y1+=0;
	y2+=0;
	y1plus=7;
	}
	pl1 = imgLoad("man3.png", 6, 0);
	imgSetCurrent(pl1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x1, y1);
	pl2 = imgLoad("man3.png", 9, 0);
	imgSetCurrent(pl2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(x2, y2);
	if((x2 < (x1 + 64)) && (x1 < (x2 + 64)) && (y2 < (y1 + 98)) && (y1 + 61 < (y2 + 61))){
	txtOut("Player2WIN");
	}
	if((x1 < (x2 + 64)) && (x2 < (x1 + 64)) && (y1 < (y2 + 98)) && (y2 + 61 < (y1 + 61))){
	txtOut("Player1WIN");
	}
		}else{if(y1plus==7){
	y1-=54;
	y2-=54;
	y1plus=0;
	}
		time1=0;
		}
		if(keyGetState(KEY_A) == INP_PUSH)
		{
			x1-=1;
		}
		if(keyGetState(KEY_D) == INP_PUSH)
		{
			x1+=1;
		}
		if(keyGetState(KEY_W) == INP_PUSH)
		{
			y1-=1;
		}
		if(keyGetState(KEY_X) == INP_PUSH)
		{
			y1+=1;
		}
		if(keyGetState(KEY_G) == INP_PUSH)
		{
			x2-=1;
		}
		if(keyGetState(KEY_J) == INP_PUSH)
		{
			x2+=1;
		}
		if(keyGetState(KEY_Y) == INP_PUSH)
		{
			y2-=1;
		}
		if(keyGetState(KEY_N) == INP_PUSH)
		{
			y2+=1;
		}
	if(time2 < 3){
	tyou1 = imgLoad("tyou1.png", 13, 0);
	imgSetCurrent(tyou1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(t1x, t1y);
	tyou2 = imgLoad("tyou1.png", 16, 0);
	imgSetCurrent(tyou2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(t2x, t2y);
	}else if((time2 > 2)&&(time2 < 6)){
	tyou1 = imgLoad("tyou2.png", 13, 0);
	imgSetCurrent(tyou1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(t1x, t1y);
	tyou2 = imgLoad("tyou2.png", 16, 0);
	imgSetCurrent(tyou2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(t2x, t2y);
	}else{
	time2=0;
	}
	if(time3 < 12){
	syu1 = imgLoad("syuwa1.png", 16, 0);
	imgSetCurrent(syu1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(s1x, s1y);
	}else if((time3 > 11)&&(time3 < 24)){
	syu1 = imgLoad("syuwa2.png", 16, 0);
	imgSetCurrent(syu1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(s1x, s1y);
	}else if((time3 > 23)&&(time3 < 36)){
	syu1 = imgLoad("syuwa3.png", 16, 0);
	imgSetCurrent(syu1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(s1x, s1y);
	}else{
	time3=0;
	}
	imgSetCurrent(txt);
	time1+=1;
	time2+=1;
	time3+=1;
	timeWait();
	sprRenderScreen();
	}
}