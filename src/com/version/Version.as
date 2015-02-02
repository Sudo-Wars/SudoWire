package com.version {
public class Version {
    include "GitVersion.as";

    public static const VERSION:String = '16.1.6';
    public static const RELEASETYPE:String = 'Beta';
    public static const BUILDSTRING:String = "SudoWire Version " + VERSION + ":" + RELEASETYPE + " (" + git_number + ")";
    public static const BUILDTIME:String = build_date + " From Commit " + git_number;

    public static const TESTING:Boolean = false;
}
}
