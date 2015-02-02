package com.sudo.classes {

import flash.utils.ByteArray;

[Bindable]
[Table("traffic")]
public class TrafficData {
    public function TrafficData() {
    }
    [Id]
    [Column]
    public var id:int;
    [Column]
    public var itemNo:int;
    [Column]
    public var sessionId:String;
    [Column]
    public var server:String;
    [Column]
    public var userName:String;
    [Column]
    public var time:Date;
    [Column]
    public var timeDiff:uint;
    [Column]
    public var direction:String;
    [Column]
    public var cmd:String;
    [Column]
    public var data:Object;
    [Column]
    public var raw:ByteArray;

}
}
