<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Likes - maulik - phpDolphin</title>
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
<link rel="shortcut icon" href="http://phpdolphin.com/demo/favicon.ico">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	baseUrl = 'http://phpdolphin.com/demo';
	token_id = '75e5961b3192abda4725cffa14a98f28';
</script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.timeago.js"></script>
<script type="text/javascript" src="js/functions.js"></script>
</head>
<body>
<div id="loading-bar"><dd></dd><dt></dt></div>
<div class="topbar">
	<div class="header">
		<a href="http://phpdolphin.com/demo/index.php?a=feed" rel="loadpage"><div class="menu_btn logo-container"><div class="logo"></div></div></a>
		<div class="search-input"><input type="text" id="search" placeholder="search people, #hashtags, !groups" autocomplete="off" value=""></div>
		<div class="bc-container">
<div class="smiles-container scrollable" id="smiles-container" data-active-window=""><a onclick="addSmile(':)')" title=":)"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/smile.png" height="14" width="14"></a><a onclick="addSmile(':(')" title=":("><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/sad.png" height="14" width="14"></a><a onclick="addSmile(';)')" title=";)"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/wink.png" height="14" width="14"></a><a onclick="addSmile('xD')" title="xD"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/devil.png" height="14" width="14"></a><a onclick="addSmile('x(')" title="x("><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/angry.png" height="14" width="14"></a><a onclick="addSmile('=(')" title="=("><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/cry.png" height="14" width="14"></a><a onclick="addSmile(':*')" title=":*"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/kiss.png" height="14" width="14"></a><a onclick="addSmile(':D')" title=":D"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/laugh.png" height="14" width="14"></a><a onclick="addSmile(':x')" title=":x"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/love.png" height="14" width="14"></a><a onclick="addSmile('(:|')" title="(:|"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/sleepy.png" height="14" width="14"></a><a onclick="addSmile('B)')" title="B)"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/cool.png" height="14" width="14"></a><a onclick="addSmile(':P')" title=":P"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/cheeky.png" height="14" width="14"></a><a onclick="addSmile(':\\')" title=":\"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/confused.png" height="14" width="14"></a><a onclick="addSmile(':o')" title=":o"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/surprised.png" height="14" width="14"></a><a onclick="addSmile('&lt;3')" title="&lt;3"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/heart.png" height="14" width="14"></a><a onclick="addSmile('(y)')" title="(y)"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/like.png" height="14" width="14"></a></div>
<div class="bc-friends-container desktop" id="chat-window-friends-list"><div class="bc-friends-header" onclick="minimizeChatWindow('friends-list')" data-state="maximized"><div class="bc-friends-username">Online Friends (<span id="friends-count">0</span>)</div><div class="minimize_btn"></div><a href="http://phpdolphin.com/demo/index.php?a=settings&b=privacy" rel="loadpage" onclick="minimizeChatWindow('friends-list')"><div class="settings_btn c-s-icon"></div></a></div><div class="bc-friends-content scrollable" id="friends-list"></div><div class="c-w-input c-w-input-search"><input type="text" placeholder="Search in friends" id="search-window"></div></div>
</div>
<div class="menu-image"><div class="menu_arrow"></div><div class="menu_img"><img src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=50&h=50" title="maulik"/></div></div>
<a onclick="showNotification('', '1')"><div class="menu_btn" id="notifications_btn" title="Notifications" rel="loadpage"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/notification.png" id="notifications_img"></div></a>
<a onclick="showNotification('', '2')" id="messages_url"><div class="menu_btn" id="messages_btn" title="Messages"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/message.png"></div></a>
<a onclick="showNotification('', '3')"><div class="menu_btn" id="friends_btn" title="Friends"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/friends.png"></div></a>

<div id="menu-dd-container" class="menu-dd-container">
	<div class="menu-dd-content">
		<a href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik"  rel="loadpage"><div class="menu-dd-row">maulik</div></a><div class="menu-divider "></div><a href="http://phpdolphin.com/demo/index.php?a=feed"  rel="loadpage"><div class="menu-dd-row">News Feed</div></a><div class="menu-divider "></div><a href="http://phpdolphin.com/demo/index.php?a=notifications"  rel="loadpage"><div class="menu-dd-row">Notifications</div></a><div class="menu-divider "></div><a href="http://phpdolphin.com/demo/index.php?a=settings"  rel="loadpage"><div class="menu-dd-row">Settings</div></a><div class="menu-divider "></div><a href="http://phpdolphin.com/demo/index.php?a=feed&logout=1&token_id=75e5961b3192abda4725cffa14a98f28" ><div class="menu-dd-row">Log Out</div></a>
	</div>
</div>
<div class="notification-container">
	<div class="notification-content">
		<div class="notification-inner n-i-extended">
			<span id="global_page_url"><a href="http://phpdolphin.com/demo/index.php?a=notifications" rel="loadpage"><strong>View More Notifications</strong></a></span>
			<span id="chat_page_url"><a href="http://phpdolphin.com/demo/index.php?a=notifications&filter=chats" rel="loadpage"><strong>View More Messages</strong></a></span>
			<span id="friends_page_url"><a href="http://phpdolphin.com/demo/index.php?a=notifications&filter=friendships" rel="loadpage"><strong>View confirmed requests</strong></a></span>
			<a onclick="showNotification('close')" title="Close Notifications"><div class="delete_btn"></div></a>
		</div>
		<div id="notifications-content" class="scrollable"></div>
		<div class="notification-row"><div class="notification-padding"><a href="http://phpdolphin.com/demo/index.php?a=settings&b=notifications" rel="loadpage">Notifications Settings</a></div></div>
	</div>
</div>
<script>
chatr = 3000;
checkMessageTimeout = 10000;
checkChat(2);
function checkNewNotifications(x) {
	// Retrieve the current notification values
	xx = $("#friends_btn .notifications-number").html();
	xy = $("#notifications_btn .notifications-number").html();
	xz = $("#messages_btn .notifications-number").html();
	
	// If there are not current values, reset them to 0
	if(!xx) {
		xx = 0;
	}
	if(!xy) {
		xy = 0;
	}
	if(!xz) {
		xz = 0;
	}
	$.ajax({
		type: "POST",
		url: "http://phpdolphin.com/demo/requests/check_notifications.php",
		data: "for=1&token_id="+token_id,
		success: function(html) {
			// If the response does not include "No notifications" and is not empty show the notification
			if(html.indexOf("No notifications") == -1 && html !== "" && html !== "0") {
				var result = jQuery.parseJSON(html);
				if(result.response.global > 0) {
					$("#notifications_btn").html(getNotificationImage()+'<span class="notificatons-number-container"><span class="notifications-number">'+result.response.global+'</span></span>');
				} else {
					$("#notifications_btn").html(getNotificationImage());
				}
				if(result.response.friends > 0) {
					$("#friends_btn").html(getFriendsImage()+'<span class="notificatons-number-container"><span class="notifications-number">'+result.response.friends+'</span></span>');
				} else {
					$("#friends_btn").html(getFriendsImage());
				}
				if(result.response.messages > 0) {
					$("#messages_btn").html(getMessagesImageUrl()+'<span class="notificatons-number-container"><span class="notifications-number">'+result.response.messages+'</span></span>');
				} else {
					$("#messages_btn").html(getMessagesImageUrl());
				}
				
				totalNotifications = result.response.friends + result.response.global + result.response.messages;
				
				// If the new value is higher than the current one, and the current one is not equal to 0
				if(result.response.friends > xx && xx != 0 || result.response.friends == 1 && xx == 0) {
					checkAlert();
				} else if(result.response.global > xy && xy != 0 || result.response.global == 1 && xy == 0) {
					checkAlert();
				} else if(result.response.messages > xz && xz != 0 || result.response.messages == 1 && xz == 0) {
					checkAlert();
				}
			}
			stopNotifications = setTimeout(checkNewNotifications, 10000);
		}
	});
	notificationState = true;
}
checkNewNotifications();
checkNewMessages();

function getFriendsImage() {
	return '<img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/friends.png">';
}
function getNotificationImage() {
	return '<img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/notification.png">';
}
function getMessagesImageUrl() {
	return '<img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/message.png">';
}
</script>
<audio id="soundNewNotification"><source src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundNotification.ogg" type="audio/ogg"><source src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundNotification.mp3" type="audio/mpeg"><source src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundNotification.wav" type="audio/wav"></audio><audio id="soundNewChat"><source src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundChat.ogg" type="audio/ogg"><source src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundChat.mp3" type="audio/mpeg"><source src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundChat.wav" type="audio/wav"></audio>
	</div>
	<div class="search-container"></div>
</div>
<div id="content">
	

<div class="row-body content-profile">
	<div class="twelve columns">
					<div class="cover-container">
						<div class="cover-content">
							<a onclick="gallery('2057524718_1874670838_1097931744.jpg', '3099maulik', 'covers')" id="2057524718_1874670838_1097931744.jpg"><div class="cover-image" style="background-position: center; background-image: url(http://phpdolphin.com/demo/thumb.php?src=2057524718_1874670838_1097931744.jpg&w=900&h=200&t=c)">
							</div></a>
							<div class="cover-description">
								<div class="cover-avatar-content">
									<div class="cover-avatar">
										<a onclick="gallery('default.png', '3099maulik', 'avatars')" id="default.png"><span id="avatar3099maulik"><img src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=150&h=150"></span></a>
									</div>
								</div>
								<div class="cover-buttons">
									<a class="cover-button" rel="loadpage" href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik">Timeline</a><a class="cover-button" rel="loadpage" href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik&r=about">About</a><a class="cover-button" rel="loadpage" href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik&r=friends">Friends <span class="cover-button-value">(4)</span></a><a class="cover-button cover-button-active" rel="loadpage" href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik&r=likes">Likes <span class="cover-button-value">(2)</span></a><div class="message-btn button-normal" onclick="messageMenu('profile', 1)" id="profile-button"><div class="group-button menu-button" id="profile-btn"></div></div><div id="message-menuprofile" class="message-menu-container menu-profile-container"><a class="" rel="loadpage" href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik"><div class="message-menu-row">Timeline</div></a><a class="" rel="loadpage" href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik&r=about"><div class="message-menu-row">About</div></a><a class="" rel="loadpage" href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik&r=friends"><div class="message-menu-row">Friends <span class="profile-menu-value">(4)</span></div></a><a class=" profile-menu-active" rel="loadpage" href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik&r=likes"><div class="message-menu-row">Likes <span class="profile-menu-value">(2)</span></div></a>
			</div>
		
								</div>
								<div class="cover-description-content">
									<span id="author3099maulik"></span><span id="time3099maulik"></span><div class="cover-username-container"><div class="cover-username"><a href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik" rel="loadpage">maulik</a></div></div>
									<div class="cover-description-buttons"><div id="friend3099" class="friend-btn"></div></div>
								</div>
							</div>
						</div>
					</div>
				</div>
	<div class="nine columns" id="messages">
		
		<div id="load-content"></div>
		<div class="message-container"><div class="message-content"><div class="message-inner">
					<a href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik" rel="loadpage">maulik</a> liked <a href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik" rel="loadpage"><div class="like_btn like_btn_extended" style="float: none;"><img src="http://phpdolphin.com/demo/thumb.php?src=default.png&w=25&h=25&t=a"></div>maulik</a>'s <a href="http://phpdolphin.com/demo/index.php?a=post&m=4398" rel="loadpage"><strong>message</strong></a> - <span class="timeago" title="2016-01-26T04:35:45-05:00" style="float: none;">2016-01-26T04:35:45-05:00</span>
					 <div class="like_text_snippet">yo...</div></div></div></div><div class="message-container"><div class="message-content"><div class="message-inner">
					<a href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik" rel="loadpage">maulik</a> liked <a href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik" rel="loadpage"><div class="like_btn like_btn_extended" style="float: none;"><img src="http://phpdolphin.com/demo/thumb.php?src=default.png&w=25&h=25&t=a"></div>maulik</a>'s <a href="http://phpdolphin.com/demo/index.php?a=post&m=4359" rel="loadpage"><strong>message</strong></a> - <span class="timeago" title="2016-01-25T00:40:52-05:00" style="float: none;">2016-01-25T00:40:52-05:00</span>
					 <div class="like_text_snippet">maulik is mad...</div></div></div></div>
	<div id="profile-card"></div>
	</div>
	<div class="three columns">
		<div class="sidebar-container widget-about"><div class="sidebar-content"><div class="sidebar-header"><a href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik&r=about" rel="loadpage">About</a> <span class="sidebar-header-link"><a href="http://phpdolphin.com/demo/index.php?a=settings" rel="loadpage">Edit</a></span></div><div class="sidebar-list"><div class="about-icon about-work"></div>Works at: <strong>ldce</strong></div><div class="sidebar-list"><div class="about-icon about-location"></div>Lives in: <strong>ahmedabad, India</strong></div><div class="sidebar-list"><div class="about-icon about-calendar"></div>Born on: <strong>February 02, 2015</strong></div><div class="sidebar-list"><div class="about-icon about-male"></div>Gender: <strong>Male</strong></div><div class="sidebar-list"><div class="about-icon about-friends"></div>Friends: <strong><a href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik&r=friends" rel="loadpage">4 people</a></strong></div></div></div>

<div class="sidebar-container widget-archive"><div class="sidebar-content"><div class="sidebar-header">Archives</div><div class="sidebar-link sidebar-link-active"><a href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik" rel="loadpage">All time</a></div><div class="sidebar-link sidebar-dates"><a href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik&filter=201602" rel="loadpage">February - 2016</a></div><div class="sidebar-link sidebar-dates"><a href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik&filter=201601" rel="loadpage">January - 2016</a></div></div></div>
<div class="sidebar-container widget-friends"><div class="sidebar-content"><div class="sidebar-header"><a href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik&r=friends" rel="loadpage">Friends <span class="sidebar-header-light">(4)</span></a></div><div class="sidebar-padding"><a href="http://phpdolphin.com/demo/index.php?a=profile&u=vivekppatel24" rel="loadpage"><div class="sidebar-subscriptions"><div class="sidebar-title-container"><div class="sidebar-title-name">Vivek Patel</div></div><img src="http://phpdolphin.com/demo/thumb.php?src=1969592830_1551237559_1697813554.jpg&t=a&w=112&h=112"></div></a><a href="http://phpdolphin.com/demo/index.php?a=profile&u=deepushah4295" rel="loadpage"><div class="sidebar-subscriptions"><div class="sidebar-title-container"><div class="sidebar-title-name">deepushah4295</div></div><img src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=112&h=112"></div></a><a href="http://phpdolphin.com/demo/index.php?a=profile&u=heliseth" rel="loadpage"><div class="sidebar-subscriptions"><div class="sidebar-title-container"><div class="sidebar-title-name">heliseth</div></div><img src="http://phpdolphin.com/demo/thumb.php?src=1605501128_583316597_1369710842.jpg&t=a&w=112&h=112"></div></a><a href="http://phpdolphin.com/demo/index.php?a=profile&u=shalin" rel="loadpage"><div class="sidebar-subscriptions"><div class="sidebar-title-container"><div class="sidebar-title-name">shalin</div></div><img src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=112&h=112"></div></a></div></div></div>



	</div>
</div>

<div id="gallery">
	<div id="gallery-close"></div>
	<div class="image-container">
		<div class="gallery-container">
			<div class="image-content"></div>
			<div id="gallery-prev"></div>
			<div id="gallery-next"></div>
			<div class="gallery-close" onclick="gallery('close')"></div>
			<div class="gallery-footer">
				<div class="gallery-footer-container">
					  - <a onclick="gallery('close')"><div class="delete_btn"></div></a>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="likes" class="modal-large">
	<div class="modal-container modal-container-large">
		<div class="modal-inner">
			<div class="modal-title">People who like this</div>
		</div>
		<div class="message-divider"></div>
		<div class="modal-inner modal-inner-large">
			<div id="likes-result" class="modal-listing-results scrollable"></div>
		</div>
		<div class="message-divider"></div>
		<div class="modal-menu">
			<div class="modal-cancel button-normal" id="delete-cancel"><a onclick="likesModal(0, 0, 1)">Close</a></div>
		</div>
	</div>
</div>
</div>
<div id="share">
	<div class="modal-container">
		<div class="modal-inner">
			<div class="modal-title">Share</div>
		</div>
		<div class="message-divider"></div>
		<div class="modal-inner">
			<div class="modal-desc" id="share-desc">Are you sure do you want to share this message on your timeline?</div>
			<div class="modal-result" id="share-result"></div>
		</div>
		<div class="message-divider"></div>
		<div class="modal-menu">
			<div class="modal-cancel button-normal" id="share-cancel"><a onclick="doShare(0, 0)">Cancel</a></div>
			<div class="modal-btn button-active" id="share-btn"><a>Share</a></div>
			<div class="modal-close button-normal" id="share-close"><a onclick="doShare(0, 0)">Close</a></div>
		</div>
	</div>
</div>
<div id="delete">
	<div class="modal-container">
		<div class="modal-inner">
			<div class="modal-title">Delete</div>
		</div>
		<div class="message-divider"></div>
		<div class="modal-inner">
			<div class="modal-desc" id="delete0">Are you sure you want to delete this comment?</div>
			<div class="modal-desc" id="delete1">Are you sure you want to delete this message?</div>
			<div class="modal-desc" id="delete2">Are you sure you want to delete this chat message?</div>
			<div class="modal-result"></div>
		</div>
		<div class="message-divider"></div>
		<div class="modal-menu">
			<div class="modal-cancel button-normal" id="delete-cancel"><a onclick="deleteModal(0, 999)">Cancel</a></div>
			<div class="modal-btn button-active" id="delete-btn"><a>Delete</a></div>
		</div>
	</div>
</div>
<div class="modal-background"></div>
<div class="footer">
	<div class="footer-container">
		<div class="footer-links">
			<a href="http://phpdolphin.com/demo/index.php?a=page&b=tos" rel="loadpage">Terms of Use</a> - 
			<a href="http://phpdolphin.com/demo/index.php?a=page&b=privacy" rel="loadpage">Privacy Policy</a> - 
			<a href="http://phpdolphin.com/demo/index.php?a=page&b=disclaimer" rel="loadpage">Disclaimer</a> - 
			<a href="http://phpdolphin.com/demo/index.php?a=page&b=api" rel="loadpage">Developers</a> - 
			<a href="http://phpdolphin.com/demo/index.php?a=page&b=contact" rel="loadpage">Contact</a> - 
			<a href="http://phpdolphin.com/demo/index.php?a=page&b=about" rel="loadpage">About</a> - 
			<a href="http://phpdolphin.com/demo/index.php?a=admin" rel="loadpage">Admin</a>
		</div>
		<div class="footer-languages">
			Language: <a href="http://phpdolphin.com/demo/index.php?lang=english">English</a> - <a href="http://phpdolphin.com/demo/index.php?lang=romanian">Romanian</a>
		</div>
		<div class="footer-languages">
			Copyright &copy; 2016 phpDolphin. All rights reserved. Powered by <a href="http://phpdolphin.com" target="_blank">phpDolphin</a>.
		</div>
	</div>
</div>
</body>
</html>