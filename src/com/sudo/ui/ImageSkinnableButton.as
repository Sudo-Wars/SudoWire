package com.sudo.ui {
import com.sudo.skin.ImageButtonSkin;

import spark.components.Button;

[Style(name="upImage", inherit="no", type="Class")]
[Style(name="downImage", inherit="no", type="Class")]
[Style(name="overImage", inherit="no", type="Class")]
[Style(name="disabledImage", inherit="no", type="Class")]
public class ImageSkinnableButton extends Button {
    public function ImageSkinnableButton() {
        super();
        setStyle("skinClass", ImageButtonSkin);
    }
}
}
