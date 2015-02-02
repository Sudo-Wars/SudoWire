/**
 * Created by administrator on 1/15/15.
 */
package com.sudo.ui {
import com.sudo.enum.LooperEnum;
import com.sudo.skin.LoopButtonSkin;

import flash.events.MouseEvent;

import spark.components.supportClasses.ButtonBase;

[SkinState("loopOne")]
[SkinState("loopAll")]
[SkinState("loopNone")]

[Style(name="loopOneImage", inherit="no", type="Class")]
[Style(name="loopAllImage", inherit="no", type="Class")]
[Style(name="loopNoneImage", inherit="no", type="Class")]

public class LoopButton extends ButtonBase {

    public function LoopButton() {
        super();
        setStyle("skinClass", LoopButtonSkin);
    }

    private var _loop:LooperEnum = LooperEnum.LOOPNONE;

    public function get loop():LooperEnum {
        return _loop;
    }

    public function set loop(state:LooperEnum):void {
        _loop = state;
    }

    override protected function getCurrentSkinState():String {
        //    <spark:states>
        //        <s:State name="loopOne" />
        //        <s:State name="loopAll" />
        //        <s:State name="loopNone" />
        //    </spark:states>
        if (_loop == LooperEnum.LOOPNONE) {
            return "loopNone";
        }
        if (_loop == LooperEnum.LOOPONE) {
            return "loopOne";
        }
        return "loopAll"
    }

    override protected function clickHandler(event:MouseEvent):void {
        if (loop == LooperEnum.LOOPNONE) {
            loop = LooperEnum.LOOPALL;
        } else if (loop == LooperEnum.LOOPALL) {
            loop = LooperEnum.LOOPONE;
        } else {
            loop = LooperEnum.LOOPNONE;
        }
    }
}
}
