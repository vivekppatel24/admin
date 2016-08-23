<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>News Feed - phpDolphin</title>
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
<link rel="shortcut icon" href="imges/favicon.ico">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	baseUrl = 'http://phpdolphin.com/demo';
	token_id = '6ea7469e041960ad834e27727a405fef';
</script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.timeago.js"></script>
<script type="text/javascript" src="js/functions.js"></script>
</head>
<body>
<div id="loading-bar">
  <dd></dd>
  <dt></dt>
</div>
<div class="topbar">
  <div class="header"> <a href="index.html" rel="loadpage">
    <div class="menu_btn logo-container">
      <div class="logo"></div>
    </div>
    </a>
    <div class="search-input">
      <input type="text" id="search" placeholder="search people, #hashtags, !groups" autocomplete="off" value="">
    </div>
    <div class="bc-container">
      <div class="smiles-container scrollable" id="smiles-container" data-active-window=""><a onclick="addSmile(':)')" title=":)"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/smile.png" height="14" width="14"></a><a onclick="addSmile(':(')" title=":("><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/sad.png" height="14" width="14"></a><a onclick="addSmile(';)')" title=";)"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/wink.png" height="14" width="14"></a><a onclick="addSmile('xD')" title="xD"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/devil.png" height="14" width="14"></a><a onclick="addSmile('x(')" title="x("><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/angry.png" height="14" width="14"></a><a onclick="addSmile('=(')" title="=("><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/cry.png" height="14" width="14"></a><a onclick="addSmile(':*')" title=":*"><img src="#" height="14" width="14"></a><a onclick="addSmile(':D')" title=":D"><img src="#" height="14" width="14"></a><a onclick="addSmile(':x')" title=":x"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/love.png" height="14" width="14"></a><a onclick="addSmile('(:|')" title="(:|"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/sleepy.png" height="14" width="14"></a><a onclick="addSmile('B)')" title="B)"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/cool.png" height="14" width="14"></a><a onclick="addSmile(':P')" title=":P"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/cheeky.png" height="14" width="14"></a><a onclick="addSmile(':\\')" title=":\"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/confused.png" height="14" width="14"></a><a onclick="addSmile(':o')" title=":o"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/surprised.png" height="14" width="14"></a><a onclick="addSmile('&lt;3')" title="&lt;3"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/heart.png" height="14" width="14"></a><a onclick="addSmile('(y)')" title="(y)"><img src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/like.png" height="14" width="14"></a></div>
      <div class="bc-friends-container desktop" id="chat-window-friends-list">
        <div class="bc-friends-header" onclick="minimizeChatWindow('friends-list')" data-state="maximized">
          <div class="bc-friends-username">Online Friends (<span id="friends-count">0</span>)</div>
          <div class="minimize_btn"></div>
          <a href="http://phpdolphin.com/demo/index.php?a=settings&b=privacy" rel="loadpage" onclick="minimizeChatWindow('friends-list')">
          <div class="settings_btn c-s-icon"></div>
          </a></div>
        <div class="bc-friends-content scrollable" id="friends-list"></div>
        <div class="c-w-input c-w-input-search">
          <input type="text" placeholder="Search in friends" id="search-window">
        </div>
      </div>
    </div>
    <div class="menu-image">
      <div class="menu_arrow"></div>
      <div class="menu_img"><img src="imges/thumb (1).png" title="vivek"/></div>
    </div>
    <a onclick="showNotification('', '1')">
    <div class="menu_btn" id="notifications_btn" title="Notifications" rel="loadpage"><img src="imges/notification.png" id="notifications_img"></div>
    </a> <a onclick="showNotification('', '2')" id="messages_url">
    <div class="menu_btn" id="messages_btn" title="Messages"><img src="imges/message.png"></div>
    </a> <a onclick="showNotification('', '3')">
    <div class="menu_btn" id="friends_btn" title="Friends"><img src="imges/friends.png"></div>
    </a>
    <div id="menu-dd-container" class="menu-dd-container">
      <div class="menu-dd-content"> <a href="profile.html"  rel="loadpage">
        <div class="menu-dd-row">vivek</div>
        </a>
        <div class="menu-divider "></div>
        <a href="news_ feed.html"  rel="loadpage">
        <div class="menu-dd-row">News Feed</div>
        </a>
        <div class="menu-divider "></div>
        <a href="notification.html"  rel="loadpage">
        <div class="menu-dd-row">Notifications</div>
        </a>
        <div class="menu-divider "></div>
        <a href="setting.html"  rel="loadpage">
        <div class="menu-dd-row">Settings</div>
        </a>
        <div class="menu-divider "></div>
        <a href="#" >
        <div class="menu-dd-row">Log Out</div>
        </a> </div>
    </div>
    <div class="notification-container">
      <div class="notification-content">
        <div class="notification-inner n-i-extended"> <span id="global_page_url"><a href="#" rel="loadpage"><strong>View More Notifications</strong></a></span> <span id="chat_page_url"><a href="http://phpdolphin.com/demo/index.php?a=notifications&filter=chats" rel="loadpage"><strong>View More Messages</strong></a></span> <span id="friends_page_url"><a href="http://phpdolphin.com/demo/index.php?a=notifications&filter=friendships" rel="loadpage"><strong>View confirmed requests</strong></a></span> <a onclick="showNotification('close')" title="Close Notifications">
          <div class="delete_btn"></div>
          </a> </div>
        <div id="notifications-content" class="scrollable"></div>
        <div class="notification-row">
          <div class="notification-padding"><a href="#">Notifications Settings</a></div>
        </div>
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
    <audio id="soundNewNotification">
      <source src="imges/soundNotification.ogg" type="audio/ogg">
      <source src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundNotification.mp3" type="audio/mpeg">
      <source src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundNotification.wav" type="audio/wav">
    </audio>
    <audio id="soundNewChat">
      <source src="imges/soundChat.ogg" type="audio/ogg">
      <source src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundChat.mp3" type="audio/mpeg">
      <source src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundChat.wav" type="audio/wav">
    </audio>
  </div>
  <div class="search-container"></div>
</div>
<div id="content">
  <div class="row-body content-feed">
    <div class="nine columns" id="messages">
      <div class="message-container">
        <form id="imageForm" name="form" action="http://phpdolphin.com/demo/requests/post_message.php" method="POST" enctype="multipart/form-data">
          <input type="hidden" name="token_id" value="6ea7469e041960ad834e27727a405fef">
          <div class="message-form-content">
            <div class="message-form-header">
              <div class="message-form-user"><img src="imges/thumb (7).png" /></div>
              Update your status
              <div class="message-form-private"></div>
              <div class="message-loader" id="post-loader9999999999" style="visibility: hidden">
                <div class="preloader"></div>
              </div>
            </div>
            <div class="message-form-inner">
              <textarea id="post9999999999" class="message-form" placeholder="What's on your mind?" name="message"></textarea>
            </div>
            <div id="plugins-forms" style="display: none;"></div>
            <input type="hidden" name="privacy" id="message-privacy" value="1">
            <input type="hidden" name="group" id="message-group" value="">
            <div class="selected-files"><span id="queued-files">0</span> image(s) selected</div>
            <div class="message-form-input">
              <input type="text" name="value" id="form-value">
            </div>
            <div id="values">
              <div class="button-image">
                <input name="my_image[]" id="my_file" size="27" type="file" class="inputImage" title="Upload images" multiple>
              </div>
              <input type="radio" name="type" value="video" id="video" class="input_hidden">
              <label for="video" title="Share a movie or a link from YouTube or Vimeo"><img src="imges/video.png"></label>
              <input type="radio" name="type" value="map" id="map" class="input_hidden">
              <label for="map" title="Add a place"><img src="imges/map.png"></label>
              <input type="radio" name="type" value="visited" id="visited" class="input_hidden">
              <label for="visited" title="Add a visited location"><img src="imges/visited.png"></label>
              <input type="radio" name="type" value="music" id="music" class="input_hidden">
              <label for="music" title="Share a song or a link from SoundCloud"><img src="imges/music.png"></label>
              <input type="radio" name="type" value="game" id="game" class="input_hidden">
              <label for="game" title="Add a played game"><img src="imges/game.png"></label>
              <input type="radio" name="type" value="food" id="food" class="input_hidden">
              <label for="food" title="Add a place where you ate at"><img src="imges/food.png"></label>
            </div>
            <div type="button" name="action" class="message-btn button-active" value="Post"><a onclick="startUpload()">Post</a></div>
            <div class="message-btn button-normal" onclick="messageMenu(9999999999, 1)" title="Who should see the message" id="privacy-button"><a>
              <div id="privacy-btn" class="privacy-icons public-icon"></div>
              </a></div>
            <div id="message-menu9999999999" class="message-menu-container message-menu-privacy">
              <div class="message-menu-row" onclick="postPrivacy(1)">Public</div>
              <div class="message-menu-row" onclick="postPrivacy(2)">Friends</div>
              <div class="message-menu-row" onclick="postPrivacy(0)">Private</div>
            </div>
          </div>
          <iframe id="my_iframe" name="my_iframe" src="" style="display: none"></iframe>
        </form>
      </div>
      <div id="load-content"></div>
      <div id="profile-card"></div>
    </div>
    <div class="three columns">
      <div class="sidebar-container widget-welcome">
        <div class="sidebar-content">
          <div class="sidebar-header">Welcome</div>
          <div class="sidebar-inner">
            <div class="sidebar-avatar"><a href="#" rel="loadpage"><img src="imges/thumb (1).png"></a></div>
            <div class="sidebar-avatar-desc"> <a href="#" rel="loadpage">vivek</a>
              <div class="sidebar-avatar-edit"><a href="#" rel="loadpage">Edit Profile</a></div>
            </div>
          </div>
        </div>
      </div>
      
      <div class="sidebar-container widget-groups">
        <div class="sidebar-content">
          <div class="sidebar-header"><a href="#" rel="loadpage">Groups</a></span></div>
          <div class="sidebar-link"><a href="#" rel="loadpage"><img src="imges/create_group.png" width="24" height="24">Create Group</a></div>
        </div>
      </div>
      
      <div class="sidebar-container widget-suggestions">
        <div class="sidebar-content">
          <div class="sidebar-header">Friends Suggestions</div>
          <div class="sidebar-padding"><a href="#" rel="loadpage">
            <div class="sidebar-subscriptions">
              <div class="sidebar-title-container">
                <div class="sidebar-title-name">brs12</div>
              </div>
              <img src="imges/thumb (7).png"></div>
            </a><a href="#" rel="loadpage">
            <div class="sidebar-subscriptions">
              <div class="sidebar-title-container">
                <div class="sidebar-title-name">heliseth</div>
              </div>
              <img src="imges/thumb (7).png"></div>
            </a><a href="#" rel="loadpage">
            <div class="sidebar-subscriptions">
              <div class="sidebar-title-container">
                <div class="sidebar-title-name">jhonyramos</div>
              </div>
              <img src="imges/thumb (7).png"></div>
            </a><a href="#" rel="loadpage">
            <div class="sidebar-subscriptions">
              <div class="sidebar-title-container">
                <div class="sidebar-title-name">bro</div>
              </div>
              <img src="imges/thumb (7).png"></div>
            </a><a href="#" rel="loadpage">
            <div class="sidebar-subscriptions">
              <div class="sidebar-title-container">
                <div class="sidebar-title-name">Pastor Chriss</div>
              </div>
              <img src="imges/thumb (7).png"></div>
            </a><a href="#" rel="loadpage">
            <div class="sidebar-subscriptions">
              <div class="sidebar-title-container">
                <div class="sidebar-title-name">meloo500</div>
              </div>
              <img src="imges/thumb (7).png"></div>
            </a></div>
        </div>
      </div>
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
          <div class="gallery-footer-container"> - <a onclick="gallery('close')">
            <div class="delete_btn"></div>
            </a> </div>
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
    <div class="footer-links"> <a href="termofuse.html" rel="loadpage">Terms of Use</a> - <a href="privacypolicy.html" rel="loadpage">Privacy Policy</a> - <a href="disclaimer.html" rel="loadpage">Disclaimer</a> - <a href="developer.html" rel="loadpage">Developers</a> - <a href="contact.html" rel="loadpage">Contact</a> - <a href="about.html" rel="loadpage">About</a> - <a href="#" rel="loadpage">Admin</a> </div>
    <div class="footer-languages"> Language: <a href="#">English</a> - <a href="#">Romanian</a> </div>
    <div class="footer-languages"> Copyright &copy; 2016 phpDolphin. All rights reserved. Powered by <a href="#" target="_blank">phpDolphin</a>. </div>
</div>
</div>
</body>
</html>