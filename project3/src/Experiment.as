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
private var label1:PIElabel;
private var label2:PIElabel;

private var circle1:PIEcircle;

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
    pieHandle.showExperimentName("Possessive pronoun");
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
    label1 = new PIElabel(pieHandle, "Learn possesive ", 25,  0X339933, 0XF8F8F8);
	label1 = new PIElabel(pieHandle, "Pronouns ", 25,  0X339933, 0XF8F8F8);
	pieHandle.addDisplayChild(label1);
	pieHandle.addDisplayChild(label2);
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
   
}
/* This function is called whenever a radio button is selected and the work is performed according to the choosen step*/
public function new_display(index:Number):void {
	
}

}
}