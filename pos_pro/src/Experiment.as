package
{
import flash.display.Sprite;
import mx.controls.*;
import mx.skins.halo.DateChooserYearArrowSkin;
import flash.geom.Point;
import opticsLibrary.PIElens;
import pie.graphicsLibrary.*;
import pie.uiElements.*;


public class Experiment 
{
/* TestProject Framework Handle */
private var pieHandle:PIE;

/**
 *
 * This section contains Definition Parameters
 *
 */
private var PIEaspectRatio:Number;
private var worldWidth:Number;
private var worldHeight:Number;

/**
 *
 * This section contains Drawing Objects
 *
 */
/* Display Parameters */
private var displayBColor:uint;
private var displayFColor:uint;
private var UIpanelBColor:uint;
private var UIpanelFColor:uint;
private var controlBColor:uint;
private var controlFColor:uint;

/**
 *
 * This section stores the handles of Drawing and UI Objects
 *
 */
private var Identity1:PIElabel;
private var Identity2:PIElabel;
private var Identity3:PIElabel;
private var Identity4:PIElabel;
private var Identity5:PIElabel;
private var Identity6:PIElabel;
private var Identity7:PIElabel;
private var Identity8:PIElabel;
private var Identity9:PIElabel;
private var Identity10:PIElabel;
private var Identity11:PIElabel;
private var Identity12:PIElabel;
private var Identity13:PIElabel;
private var Identity14:PIElabel;
private var Identity15:PIElabel;
private var Identity16:PIElabel;
private var Identity17:PIElabel;
private var Label1:PIElabel;
private var RadioButton1:PIEradioButton;
private var RadioButton2:PIEradioButton;
private var RadioButton3:PIEradioButton;
private var RadioButton4:PIEradioButton;
private var RadioButton5:PIEradioButton;
private var common_noun:PIEimage;
private var img2:PIEimage;
private var img3:PIEimage;
private var img4:PIEimage;
private var img5:PIEimage;
private var img6:PIEimage;
private var img7:PIEimage;
private var img8:PIEimage;
private var q3:PIElabel;
private var q4:PIElabel;
private var q5:PIElabel;
private var q6:PIElabel;
private var l:PIElabelledInput;
private var b:PIEradioButton;
private var i:Number;
private var c:Number;
private var k:Number;
private var r:String;
private var Answer:PIElabelledInput;
public function Experiment(pie:PIE)
{
    /* Store handle of PIE Framework */
    pieHandle = pie;

    /* Call a PIE framework function to set the dimensions of the drawing area, right panel and bottom panel */
    /* We will reserve 70% width and 850%height for the drawing area */
    pieHandle.PIEsetDrawingArea(0.7,0.85);
    /* Set the foreground ande background colours for the three areas */
    /* (Different panels are provided and you can set individually as well) */
    displayBColor = 0X0D0D0D;
    displayFColor = 0XBFBFBF;
    UIpanelBColor = 0X347CB8;
    UIpanelFColor = 0XCCCCCC;
    controlBColor = 0X8888DD;
    controlFColor = 0XCCCCCC;
    pieHandle.PIEsetDisplayColors(displayBColor, displayFColor);
    pieHandle.PIEsetUIpanelColors(UIpanelBColor, UIpanelFColor);

    /* Set the Experiment Details */
    pieHandle.showExperimentName("Proper_Noun_Or_Common_Noun");
    pieHandle.showDeveloperName("Abhiruchi Gupta");
    /* define the position of all the global (static) variables */
    /* Code in a single Function (recommended) for reuse */
    this.resetExperiment();

    /* Create UI Objects */
    this.createUIObjects();

    /* Create Experiment Objects */
    createExperimentObjects();
}

/**
 *
 * This function is called by the PIE framework to reset the experiment to default values
 * It defines the values of all the global (static) variables
 *
 */
public function resetExperiment():void
{
    /* Initialise World Origin and Boundaries */
    this.resetWorld();
}

/*
 * This function resets the world boundaries and adjusts display to match the world boundaries
 */
public function nextFrame():void {}
public function resetWorld():void
{
    /* get the PIE drawing area aspect ratio (width/height) to model the dimensions of our experiment area */
    PIEaspectRatio = pieHandle.PIEgetDrawingAspectRatio();
    /* Initialise World Origin and Boundaries */
    worldHeight  = 100;                            /* 100 meters height */
    worldWidth   = worldHeight * PIEaspectRatio;   /* match world aspect ratio to PIE aspect ratio */
	c = 0;
}

/**
 *
 * This function is called to create the Ui objects
 * It calls the appropriate PIE Framework functions to create the objects
 * It also sets the variables to point to cfallback code
 *
 */
public function createUIObjects():void
{
    Label1 = new PIElabel(pieHandle, "CHOOSE : ", 25,  0X339933, 0XF8F8F8);
	RadioButton1 = new PIEradioButton(pieHandle, "uipanel", "Common Noun", 1);
	RadioButton2 = new PIEradioButton(pieHandle, "uipanel", "Proper Noun", 2);
	RadioButton5 = new PIEradioButton(pieHandle, "uipanel", "TAKE QUIZ", 0);
	b = new PIEradioButton(pieHandle, "uipanel", "NEXT QUES.", 5);
	Answer = new PIElabelledInput(pieHandle, "Answer : \n", "", 0, 15, 0XAAAAAA);
	Answer.x = 800;
	Answer.y = 1200;
	b.x = 900;
	b.y = 900;
	b.addClickListener(new_display);
    Label1.x = 560;
	Label1.y = 140;
	RadioButton5.addClickListener(new_display);
	pieHandle.addRadioButton(RadioButton5);
	RadioButton1.addClickListener(new_display);
	RadioButton2.addClickListener(new_display);
	pieHandle.addRadioButton(RadioButton1);
	pieHandle.addRadioButton(RadioButton2);
}
/*
 *
 * This function is called to create the experiment objects
 * It calls the appropriate constructors to create drawing objects
 * It also sets callback variables to point to callback code
 *
 */
private function createExperimentObjects():void
{
   Identity1 = new PIElabel(pieHandle, "Common Nouns are any person, place, or ", 25,  0XFFFF44, 0X000000);
   Identity2 = new PIElabel(pieHandle, "thing. Common nouns are not capitalized", 25,  0XFFFF44, 0X000000);
   Identity3 = new PIElabel(pieHandle, "Proper Nouns are the name of a special person, .", 25,  0XFFFF44, 0X000000);
   Identity4 = new PIElabel(pieHandle, "place, or thing. Proper nouns are capitalized", 25,  0XFFFF44, 0X000000);
   l = new PIElabelledInput(pieHandle, "WELL DONE YOUR SCORE IS : \n", "", 0, 15, 0XAAAAAA);
  // common_noun = new PIEimage(pieHandle, 200, 120, 315, 270, PIEimageLocation.common_nounImgPtr);
   //proper_noun = new PIEimage(pieHandle, 200, 120, 315, 270, PIEimageLocation.proper_nounImgPtr);
   Identity1.x = 10;Identity1.y = 45;
   Identity2.x = 10;Identity2.y = 45;
   Identity3.x = 10;Identity3.y = 45;
   Identity4.x = 10;Identity4.y = 45; 
}
/* This function is called whenever a radio button is selected and the work is performed according to the choosen step*/
public function new_display(index:Number):void {
	if (index == 1) {
	pieHandle.addChild(Identity1);
	pieHandle.addChild(Identity2);
	pieHandle.addDisplayChild(common_noun);
	//button();
	}
}
/*
public function dr(Correct:Boolean):void
{
	if (Correct) {
	Answer.setInputText("Correct");
	k++;
	}
	else
	Answer.setInputText("Wrong");
}*/
/* This function is called to remove all the experiment objects*/
/*public function button():void {
	c++;
	switch (c) {
	case 1: remove_all(); pieHandle.addDisplayChild(Identity1);break;
	case 2: remove_all(); pieHandle.addDisplayChild(Identity2);break;
	case 3: remove_all(); pieHandle.addDisplayChild(Identity3);break;
	case 4: remove_all(); pieHandle.addDisplayChild(Identity4);break;
	case 5: remove_all(); pieHandle.addDisplayChild(Identity5);break;
	case 6: remove_all(); pieHandle.addDisplayChild(Identity6);break;
	case 7: remove_all(); pieHandle.addDisplayChild(Identity7);break;
	case 8: remove_all(); pieHandle.addDisplayChild(Identity8);break;
	case 9: remove_all(); pieHandle.addDisplayChild(Identity9);break;
	case 10: remove_all(); pieHandle.addDisplayChild(Identity10);break;
	case 11: remove_all(); pieHandle.addDisplayChild(Identity11);break;
	case 12: remove_all(); pieHandle.addDisplayChild(Identity12);break;
	case 13: remove_all(); pieHandle.addDisplayChild(Identity13);break;
	case 14: remove_all(); pieHandle.addDisplayChild(Identity14);break;
	case 15: remove_all(); pieHandle.addDisplayChild(Identity15);break;
	case 16: remove_all(); pieHandle.addDisplayChild(Identity16);break;
	case 17: remove_all(); pieHandle.addDisplayChild(Identity17); break;
	default : remove_all();
	l.setInputText(String(k));
	pieHandle.addDisplayChild(l); break;
	}
}
public function remove_all():void {
	if (q3.parent) q3.parent.removeChild(q3);
	if (q4.parent) q4.parent.removeChild(q4);
	if (q5.parent) q5.parent.removeChild(q5);
	if (q6.parent) q6.parent.removeChild(q6);
	if (l.parent) l.parent.removeChild(l);
	if (Identity1.parent) Identity1.parent.removeChild(Identity1);
	if (Identity2.parent) Identity2.parent.removeChild(Identity2);
	if (Identity3.parent) Identity3.parent.removeChild(Identity3);
	if (Identity4.parent) Identity4.parent.removeChild(Identity4);
	if (Identity5.parent) Identity5.parent.removeChild(Identity5);
	if (Identity6.parent) Identity6.parent.removeChild(Identity6);
	if (Identity7.parent) Identity7.parent.removeChild(Identity7);
	if (Identity8.parent) Identity8.parent.removeChild(Identity8);
	if (Identity9.parent) Identity9.parent.removeChild(Identity9);
	if (Identity10.parent) Identity10.parent.removeChild(Identity10);
	if (Identity11.parent) Identity11.parent.removeChild(Identity11);
	if (Identity12.parent) Identity12.parent.removeChild(Identity12);
	if (Identity13.parent) Identity13.parent.removeChild(Identity13);
	if (Identity14.parent) Identity14.parent.removeChild(Identity14);
	if (Identity15.parent) Identity15.parent.removeChild(Identity15);
	if (Identity16.parent) Identity16.parent.removeChild(Identity16);
	if (Identity17.parent) Identity17.parent.removeChild(Identity17);
}*/
}
}