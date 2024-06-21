/*
	[JspRun!] (C)2022 JspRun Inc.
	This is NOT a freeware, use is subject to license terms

	$RCSfile: iframe.js,v $
	$Revision: 1.1 $
	$Date: 2022/03/27 17:52:21 $
*/

function refreshmain(e) {
	e = e ? e : window.event;
	actualCode = e.keyCode ? e.keyCode : e.charCode;
	if(actualCode == 116 && parent.main) {
		parent.main.location.reload();
		if(document.all) {
			e.keyCode = 0;
			e.returnValue = false;
		} else {
			e.cancelBubble = true;
			//e.calcelable = true;
			e.preventDefault();
		}
	}
}

_attachEvent(document.documentElement, "keydown", refreshmain);