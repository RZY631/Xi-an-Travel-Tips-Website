/*
	[JspRun!] (C)2022 JspRun Inc.
	This is NOT a freeware, use is subject to license terms

	$RCSfile: msn.js,v $
	$Revision: 1.1 $
	$Date: 2022/03/27 17:52:21 $
*/

function msnoperate(action, msn) {
	var actionArray = new Array();
	actionArray = {
		'reghotmail' : 'http://go.JspRun.com/?app=msn&linkid=1',
		'reglivemail' : 'http://go.JspRun.com/?app=msn&linkid=2',
		'regliveid' : 'http://go.JspRun.com/?app=msn&linkid=3',
		'download' : 'http://go.JspRun.com/?app=msn&linkid=4',
		'add' : 'http://go.JspRun.com/?app=msn&linkid=5&msn=' + msn,
		'chat' : 'http://go.JspRun.com/?app=msn&linkid=6&msn=' + msn
	}

	if(messengerInstalled()) {
		window.open(actionArray[action]);
	} else {
		window.open('http://go.JspRun.com/msn/msn.html','_blank','width=571, height=498');
	}
}

function messengerInstalled() {
      try {
            new ActiveXObject("MSNMessenger.P4QuickLaunch");
            return true;
      }
      catch (e) {
            return false;
      }
}