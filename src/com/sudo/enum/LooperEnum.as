/**
 * Created by administrator on 1/15/15.
 */
package com.sudo.enum {
import flash.events.EventDispatcher;

public final class LooperEnum extends EventDispatcher {
    private static const CREATE:Object = {};

    public static const LOOPONE:LooperEnum = new LooperEnum(CREATE);
    public static const LOOPALL:LooperEnum = new LooperEnum(CREATE);
    public static const LOOPNONE:LooperEnum = new LooperEnum(CREATE);

    public function LooperEnum(permission:Object) {
        if (permission !== CREATE) {
            throw new Error("Enum cannot be instantiated");
        }
    }
}
}
