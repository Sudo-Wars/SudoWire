/**
 * Created by administrator on 2/2/15.
 */
package assets.preloader {
import flash.display.DisplayObject;
import flash.events.ProgressEvent;

import mx.preloaders.SparkDownloadProgressBar;

public class SudoPreloader extends SparkDownloadProgressBar {
    public function SudoPreloader() {
        super();
    }

    [Embed("SudoWirePreLoader.png")]
    [Bindable]
    private var Logo:Class;
    private var logo:DisplayObject;


    override public function initialize():void {
        super.initialize();
    }

    override protected function createChildren():void
    {
        if (!logo) {
            logo = new Logo();

            var startX:Number = Math.round((stageWidth - logo.width) / 2);
            var startY:Number = Math.round((stageHeight - logo.height) / 2);

            logo.x = startX;
            logo.y = startY;
            addChild(logo);
        }
//        super.createChildren();
    }

    override protected function showDisplayForInit(elapsedTime:int, count:int):Boolean {
        return true;
    }

    override protected function showDisplayForDownloading(elapsedTime:int, event:ProgressEvent):Boolean {
        return true;
    }

    override protected function setInitProgress(completed:Number, total:Number):void {
        // Nothing to do
    }

    private function show():void {
        // swfobject reports 0 sometimes at startup
        // if we get zero, wait and try on next attempt
        if (stageWidth == 0 && stageHeight == 0)
        {
            try
            {
                stageWidth = stage.stageWidth;
                stageHeight = stage.stageHeight
            }
            catch (e:Error)
            {
                stageWidth = loaderInfo.width;
                stageHeight = loaderInfo.height;
            }
            if (stageWidth == 0 && stageHeight == 0)
                return;
        }
//        _showingDisplay = true;
        createChildren();
    }
}
}
