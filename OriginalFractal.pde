int MAX = 50;
void setup(){
	size(500,500);
	background(0, 0);
	draw();
	float x = 0;
	float y = 0;
	float radii = 100;
}

void draw(){
	circleLoop(100, 250, 250, MAX);
}		

void circleLoop(float radii, float x, float y, float max ){
	max = max + 1;
	
		if(radii < max){
	circlesOut((float)(x + radii*Math.cos(2*Math.PI/360 * -90)/2), (float)(y + radii*Math.sin(2*Math.PI/360 * -90)/2), (float)(radii/1.5) );
	circlesIn((float)(x + radii*Math.cos(2*Math.PI/360 * -90)/2), (float)(y + radii*Math.sin(2*Math.PI/360 * -90)/2), (float)(radii/1.65) );
	// part b
	circlesOut((float)(x + radii*Math.cos(2*Math.PI/360 * +30)/2), (float)(y + radii*Math.sin(2*Math.PI/360 * +30)/2), (float)(radii/1.5) );
	circlesIn((float)(x + radii*Math.cos(2*Math.PI/360 * +30)/2), (float)(y + radii*Math.sin(2*Math.PI/360 * +30)/2), (float)(radii/1.65) );
	// part c
	circlesOut((float)(x + radii*Math.cos(2*Math.PI/360 * 150)/2), (float)(y + radii*Math.sin(2*Math.PI/360 * 150)/2), (float)(radii/1.5) );
	circlesIn((float)(x + radii*Math.cos(2*Math.PI/360 * 150)/2), (float)(y + radii*Math.sin(2*Math.PI/360 * 150)/2), (float)(radii/1.65) );

	circlesOut((float)250, (float)250, (float) radii);
		}else{

		//CIRCLE CYCLE
	circlesOut((float)(x + radii*Math.cos(2*Math.PI/360 * -90)/2), (float)(y + radii*Math.sin(2*Math.PI/360 * -90)/2), (float)(radii/1.5) );
	circlesIn((float)(x + radii*Math.cos(2*Math.PI/360 * -90)/2), (float)(y + radii*Math.sin(2*Math.PI/360 * -90)/2), (float)(radii/1.65) );
	// part b
	circlesOut((float)(x + radii*Math.cos(2*Math.PI/360 * +30)/2), (float)(y + radii*Math.sin(2*Math.PI/360 * +30)/2), (float)(radii/1.5) );
	circlesIn((float)(x + radii*Math.cos(2*Math.PI/360 * +30)/2), (float)(y + radii*Math.sin(2*Math.PI/360 * +30)/2), (float)(radii/1.65) );
	// part c
	circlesOut((float)(x + radii*Math.cos(2*Math.PI/360 * 150)/2), (float)(y + radii*Math.sin(2*Math.PI/360 * 150)/2), (float)(radii/1.5) );
	circlesIn((float)(x + radii*Math.cos(2*Math.PI/360 * 150)/2), (float)(y + radii*Math.sin(2*Math.PI/360 * 150)/2), (float)(radii/1.65) );

			//recurstion
	circleLoop(radii/1.5, (float)(x + radii*Math.cos(2*Math.PI/360 * -90)/2), (float)(y + radii*Math.sin(2*Math.PI/360 * -90)/2), max );
	circleLoop(radii/1.5, (float)(x + radii*Math.cos(2*Math.PI/360 * +30)/2), (float)(y + radii*Math.sin(2*Math.PI/360 * +30)/2), max );
	circleLoop(radii/1.5, (float)(x + radii*Math.cos(2*Math.PI/360 * 150)/2), (float)(y + radii*Math.sin(2*Math.PI/360 * 150)/2), max );

		}

}

public void keyPressed()//optional
{
	if(MAX > 1){
 		if(keyCode == DOWN){
			MAX -= 10;
		}
	}
	if(MAX < 250){
		if(keyCode == UP ){
		MAX += 10;
		}
	}
	System.out.println(MAX);
}

void circlesOut(float x, float y, float radii){
	fill(255);
	ellipse(x, y, radii, radii);
}
void circlesIn(float x, float y, float radii){
	fill(0);
	ellipse(x, y, radii, radii);
}