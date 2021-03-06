<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>News Feed - phpDolphin</title>
<meta name="viewport"
	content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
<link rel="shortcut icon" href="">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	baseUrl = 'http://phpdolphin.com/demo';
	token_id = 'd7ef2cdb00168532db4c51ae8ddf55c2';
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
		<div class="header">
			<a href="http://phpdolphin.com/demo/index.php?a=feed" rel="loadpage"><div
					class="menu_btn logo-container">
					<div class="logo"></div>
				</div></a>
			<div class="search-input">
				<input type="text" id="search"
					placeholder="search people, #hashtags, !groups" autocomplete="off"
					value="">
			</div>
			<div class="bc-container">
				<div class="smiles-container scrollable" id="smiles-container"
					data-active-window="">
					<a onclick="addSmile(':)')" title=":)"><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/smile.png"
						height="14" width="14"></a><a onclick="addSmile(':(')"
						title=":("><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/sad.png"
						height="14" width="14"></a><a onclick="addSmile(';)')"
						title=";)"><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/wink.png"
						height="14" width="14"></a><a onclick="addSmile('xD')"
						title="xD"><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/devil.png"
						height="14" width="14"></a><a onclick="addSmile('x(')"
						title="x("><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/angry.png"
						height="14" width="14"></a><a onclick="addSmile('=(')"
						title="=("><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/cry.png"
						height="14" width="14"></a><a onclick="addSmile(':*')"
						title=":*"><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/kiss.png"
						height="14" width="14"></a><a onclick="addSmile(':D')"
						title=":D"><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/laugh.png"
						height="14" width="14"></a><a onclick="addSmile(':x')"
						title=":x"><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/love.png"
						height="14" width="14"></a><a onclick="addSmile('(:|')"
						title="(:|"><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/sleepy.png"
						height="14" width="14"></a><a onclick="addSmile('B)')"
						title="B)"><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/cool.png"
						height="14" width="14"></a><a onclick="addSmile(':P')"
						title=":P"><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/cheeky.png"
						height="14" width="14"></a><a onclick="addSmile(':\\')"
						title=":\"><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/confused.png"
						height="14" width="14"></a><a onclick="addSmile(':o')"
						title=":o"><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/surprised.png"
						height="14" width="14"></a><a onclick="addSmile('&lt;3')"
						title="&lt;3"><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/heart.png"
						height="14" width="14"></a><a onclick="addSmile('(y)')"
						title="(y)"><img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/emoticons/like.png"
						height="14" width="14"></a>
				</div>
				<div class="bc-friends-container desktop"
					id="chat-window-friends-list">
					<div class="bc-friends-header"
						onclick="minimizeChatWindow('friends-list')"
						data-state="maximized">
						<div class="bc-friends-username">
							Online Friends (<span id="friends-count">0</span>)
						</div>
						<div class="minimize_btn"></div>
						<a
							href="http://phpdolphin.com/demo/index.php?a=settings&b=privacy"
							rel="loadpage" onclick="minimizeChatWindow('friends-list')"><div
								class="settings_btn c-s-icon"></div></a>
					</div>
					<div class="bc-friends-content scrollable" id="friends-list"></div>
					<div class="c-w-input c-w-input-search">
						<input type="text" placeholder="Search in friends"
							id="search-window">
					</div>
				</div>
			</div>
			<div class="menu-image">
				<div class="menu_arrow"></div>
				<div class="menu_img">
					<img
						src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=50&h=50"
						title="maulik" />
				</div>
			</div>
			<a onclick="showNotification('', '1')"><div class="menu_btn"
					id="notifications_btn" title="Notifications" rel="loadpage">
					<img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/notification.png"
						id="notifications_img">
				</div></a> <a onclick="showNotification('', '2')" id="messages_url"><div
					class="menu_btn" id="messages_btn" title="Messages">
					<img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/message.png">
				</div></a> <a onclick="showNotification('', '3')"><div class="menu_btn"
					id="friends_btn" title="Friends">
					<img
						src="http://phpdolphin.com/demo/themes/dolphin/images/icons/friends.png">
				</div></a>

			<div id="menu-dd-container" class="menu-dd-container">
				<div class="menu-dd-content">
					<a href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik"
						rel="loadpage"><div class="menu-dd-row">maulik</div></a>
					<div class="menu-divider "></div>
					<a href="http://phpdolphin.com/demo/index.php?a=feed"
						rel="loadpage"><div class="menu-dd-row">News Feed</div></a>
					<div class="menu-divider "></div>
					<a href="http://phpdolphin.com/demo/index.php?a=notifications"
						rel="loadpage"><div class="menu-dd-row">Notifications</div></a>
					<div class="menu-divider "></div>
					<a href="http://phpdolphin.com/demo/index.php?a=settings"
						rel="loadpage"><div class="menu-dd-row">Settings</div></a>
					<div class="menu-divider "></div>
					<a
						href="${pageContext.request.contextPath}/AuthenticationFilter?flag=logout"><div
							class="menu-dd-row">Log Out</div></a>
				</div>
			</div>
			<div class="notification-container">
				<div class="notification-content">
					<div class="notification-inner n-i-extended">
						<span id="global_page_url"><a
							href="notifications.jsp?a=notifications"><strong>View
									More Notifications</strong></a></span> <span id="chat_page_url"><a
							href="messages.jsp?a=notifications&filter=chats"><strong>View
									More Messages</strong></a></span> <span id="friends_page_url"><a
							href="http://phpdolphin.com/demo/index.php?a=notifications&filter=friendships"
							rel="loadpage"><strong>View confirmed requests</strong></a></span> <a
							onclick="showNotification('close')" title="Close Notifications"><div
								class="delete_btn"></div></a>
					</div>
					<div id="notifications-content" class="scrollable"></div>
					<div class="notification-row">
						<div class="notification-padding">
							<a
								href="http://phpdolphin.com/demo/index.php?a=settings&b=notifications"
								rel="loadpage">Notifications Settings</a>
						</div>
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
					if (!xx) {
						xx = 0;
					}
					if (!xy) {
						xy = 0;
					}
					if (!xz) {
						xz = 0;
					}
					$
							.ajax({
								type : "POST",
								url : "http://phpdolphin.com/demo/requests/check_notifications.php",
								data : "for=1&token_id=" + token_id,
								success : function(html) {
									// If the response does not include "No notifications" and is not empty show the notification
									if (html.indexOf("No notifications") == -1
											&& html !== "" && html !== "0") {
										var result = jQuery.parseJSON(html);
										if (result.response.global > 0) {
											$("#notifications_btn")
													.html(
															getNotificationImage()
																	+ '<span class="notificatons-number-container"><span class="notifications-number">'
																	+ result.response.global
																	+ '</span></span>');
										} else {
											$("#notifications_btn").html(
													getNotificationImage());
										}
										if (result.response.friends > 0) {
											$("#friends_btn")
													.html(
															getFriendsImage()
																	+ '<span class="notificatons-number-container"><span class="notifications-number">'
																	+ result.response.friends
																	+ '</span></span>');
										} else {
											$("#friends_btn").html(
													getFriendsImage());
										}
										if (result.response.messages > 0) {
											$("#messages_btn")
													.html(
															getMessagesImageUrl()
																	+ '<span class="notificatons-number-container"><span class="notifications-number">'
																	+ result.response.messages
																	+ '</span></span>');
										} else {
											$("#messages_btn").html(
													getMessagesImageUrl());
										}

										totalNotifications = result.response.friends
												+ result.response.global
												+ result.response.messages;

										// If the new value is higher than the current one, and the current one is not equal to 0
										if (result.response.friends > xx
												&& xx != 0
												|| result.response.friends == 1
												&& xx == 0) {
											checkAlert();
										} else if (result.response.global > xy
												&& xy != 0
												|| result.response.global == 1
												&& xy == 0) {
											checkAlert();
										} else if (result.response.messages > xz
												&& xz != 0
												|| result.response.messages == 1
												&& xz == 0) {
											checkAlert();
										}
									}
									stopNotifications = setTimeout(
											checkNewNotifications, 10000);
								}
							});
					notificationState = true;
				}
				checkNewNotifications();
				checkNewMessages();

				function getFriendsImage() {
					return '<img src="images/friends.png">';
				}
				function getNotificationImage() {
					return '<img src="images/notification.png">';
				}
				function getMessagesImageUrl() {
					return '<img src="images/message.png">';
				}
			</script>
			<audio id="soundNewNotification">
			<source
				src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundNotification.ogg"
				type="audio/ogg">
			<source
				src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundNotification.mp3"
				type="audio/mpeg">
			<source
				src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundNotification.wav"
				type="audio/wav"></audio>
			<audio id="soundNewChat">
			<source
				src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundChat.ogg"
				type="audio/ogg">
			<source
				src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundChat.mp3"
				type="audio/mpeg">
			<source
				src="http://phpdolphin.com/demo/themes/dolphin/sounds/soundChat.wav"
				type="audio/wav"></audio>
		</div>
		<div class="search-container"></div>
	</div>
	<div id="content">


		<div class="row-body content-feed">

			<div class="nine columns" id="messages">
				<div class="message-container">
					<form id="imageForm" name="form"
						action="http://phpdolphin.com/demo/requests/post_message.php"
						method="POST" enctype="multipart/form-data">
						<input type="hidden" name="token_id"
							value="d7ef2cdb00168532db4c51ae8ddf55c2">
						<div class="message-form-content">
							<div class="message-form-header">
								<div class="message-form-user">
									<img
										src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a" />
								</div>
								Update your status
								<div class="message-form-private"></div>
								<div class="message-loader" id="post-loader9999999999"
									style="visibility: hidden">
									<div class="preloader"></div>
								</div>
							</div>

							<div class="message-form-inner">
								<textarea id="post9999999999" class="message-form"
									placeholder="What's on your mind?" name="message"></textarea>
							</div>
							<div id="plugins-forms" style="display: none;"></div>

							<input type="hidden" name="privacy" id="message-privacy"
								value="1"> <input type="hidden" name="group"
								id="message-group" value="">

							<div class="selected-files">
								<span id="queued-files">0</span> image(s) selected
							</div>
							<div class="message-form-input">
								<input type="text" name="value" id="form-value">
							</div>
							<div id="values">
								<div class="button-image">
									<input name="my_image[]" id="my_file" size="27" type="file"
										class="inputImage" title="Upload images" multiple="multiple">
								</div>
								<input type="radio" name="type" value="video" id="video"
									class="input_hidden"><label for="video"
									title="Share a movie or a link from YouTube or Vimeo"><img
									src="images/video.png"></label> <input type="radio" name="type"
									value="map" id="map" class="input_hidden"><label
									for="map" title="Add a place"><img src="images/map.png"></label>
								<input type="radio" name="type" value="visited" id="visited"
									class="input_hidden"><label for="visited"
									title="Add a visited location"><img
									src="images/visited.png"></label> <input type="radio" name="type"
									value="music" id="music" class="input_hidden"><label
									for="music" title="Share a song or a link from SoundCloud"><img
									src="images/music.png"></label> <input type="radio" name="type"
									value="game" id="game" class="input_hidden"><label
									for="game" title="Add a played game"><img
									src="images/game.png"></label> <input type="radio" name="type"
									value="food" id="food" class="input_hidden"><label
									for="food" title="Add a place where you ate at"><img
									src="images/food.png"></label>

							</div>

							<div type="button" name="action"
								class="message-btn button-active" value="Post">
								<a onclick="startUpload()">Post</a>
							</div>
							<div class="message-btn button-normal"
								onclick="messageMenu(9999999999, 1)"
								title="Who should see the message" id="privacy-button">
								<a><div id="privacy-btn" class="privacy-icons public-icon"></div></a>
							</div>
							<div id="message-menu9999999999"
								class="message-menu-container message-menu-privacy">
								<div class="message-menu-row" onclick="postPrivacy(1)">Public</div>
								<div class="message-menu-row" onclick="postPrivacy(2)">Friends</div>
								<div class="message-menu-row" onclick="postPrivacy(0)">Private</div>
							</div>
						</div>
						<iframe id="my_iframe" name="my_iframe" src=""
							style="display: none"></iframe>
					</form>
				</div>
				<div id="load-content"></div>

				<div class="message-container last-message" id="message4399"
					data-filter="" data-last="4399" data-username="" data-type="0"
					data-userid="3133">
					<div class="message-content">
						<div class="message-inner">
							<div class="message-avatar" id="avatar4399">
								<a
									href="http://phpdolphin.com/demo/index.php?a=profile&u=deepushah4295"
									rel="loadpage"> <img
									onmouseover="profileCard(3133, 4399, 0, 0);"
									onmouseout="profileCard(0, 0, 0, 1);"
									onclick="profileCard(0, 0, 1, 1);"
									src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=50&h=50">
								</a>
							</div>
							<div class="message-top">

								<div class="message-menu" onclick="messageMenu(4399, 1)"></div>
								<div id="message-menu4399" class="message-menu-container">
									<div class="message-menu-row" onclick="report_the(4399, 1)">Report</div>

								</div>
								<div class="message-author" id="author4399">
									<a
										href="http://phpdolphin.com/demo/index.php?a=profile&u=deepushah4295"
										rel="loadpage">deepushah4295</a>
								</div>
								<div class="message-time">
									<span id="time4399"><a
										href="http://phpdolphin.com/demo/index.php?a=post&m=4399"
										rel="loadpage">
											<div class="timeago" title="2016-01-26T06:21:11-05:00">
												2016-01-26T06:21:11-05:00</div>
									</a></span><span id="privacy4399"><div
											class="privacy-icons public-icon" title="Public"></div></span>
									<div id="message_loader4399"></div>
								</div>
							</div>
							<div class="message-message" id="message_text4399">hiii</div>

						</div>
						<div class="message-divider"></div>

						<div class="message-replies">
							<div class="message-actions">
								<div class="message-actions-content" id="message-action4399">
									<a onclick="doLike(4399, 0)" id="doLike4399">Like</a> - <a
										onclick="focus_form(4399)">Comment</a> - <a
										onclick="share(4399)">Share</a>
									<div class="like_btn" id="like_btn4399">
										<span class="likes-container"><a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=vivekppatel24"
											rel="loadpage"><img
												src="http://phpdolphin.com/demo/thumb.php?src=1969592830_1551237559_1697813554.jpg&w=25&h=25&t=a"
												title="vivekppatel24 liked this"></a> </span><a
											title="View all likes" onclick="likesModal(4399, 0)">1</a>
									</div>
								</div>
							</div>
							<div class="message-replies-content" id="comments-list4399">

								<div class="message-reply-container" id="comment1388">
									<a onclick="report_the(1388, 0)" title="Report this comment"><div
											class="report_btn"></div></a>
									<div class="message-reply-avatar">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=vivekppatel24"
											rel="loadpage"><img
											onmouseover="profileCard(3523, 1388, 1, 0)"
											onmouseout="profileCard(0, 0, 1, 1);"
											onclick="profileCard(0, 0, 1, 1);"
											src="http://phpdolphin.com/demo/thumb.php?src=1969592830_1551237559_1697813554.jpg&t=a"></a>
									</div>
									<div class="message-reply-message">
										<span class="message-reply-author"><a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=vivekppatel24"
											rel="loadpage">vivekppatel24</a></span>: hii
									</div>
									<div class="message-reply-footer">
										<div class="message-time">
											<span class="like-comment"><a
												onclick="doLike(1388, 1)" id="doLikeC1388">Like</a> -&nbsp;</span>
											<div class="timeago" title="2016-02-11T01:42:13-05:00">
												2016-02-11T01:42:13-05:00</div>
											<div class="like_btn" id="like_c_btn1388">
												<a onclick="likesModal(1388, 1)" title="View all likes">0</a>
											</div>
										</div>
									</div>
									<div class="delete_preloader" id="del_comment_1388"></div>

								</div>
								<div class="message-reply-container" id="comment1389">
									<a onclick="report_the(1389, 0)" title="Report this comment"><div
											class="report_btn"></div></a>
									<div class="message-reply-avatar">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=vivekppatel24"
											rel="loadpage"><img
											onmouseover="profileCard(3523, 1389, 1, 0)"
											onmouseout="profileCard(0, 0, 1, 1);"
											onclick="profileCard(0, 0, 1, 1);"
											src="http://phpdolphin.com/demo/thumb.php?src=1969592830_1551237559_1697813554.jpg&t=a"></a>
									</div>
									<div class="message-reply-message">
										<span class="message-reply-author"><a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=vivekppatel24"
											rel="loadpage">vivekppatel24</a></span>: hii
									</div>
									<div class="message-reply-footer">
										<div class="message-time">
											<span class="like-comment"><a
												onclick="doLike(1389, 1)" id="doLikeC1389">Like</a> -&nbsp;</span>
											<div class="timeago" title="2016-02-11T01:42:13-05:00">
												2016-02-11T01:42:13-05:00</div>
											<div class="like_btn" id="like_c_btn1389">
												<a onclick="likesModal(1389, 1)" title="View all likes">0</a>
											</div>
										</div>
									</div>
									<div class="delete_preloader" id="del_comment_1389"></div>

								</div>
							</div>
						</div>
						<div class="message-comment-box-container" id="comment_box_4399">
							<div class="message-reply-avatar">
								<img
									src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=50&h=50">
							</div>
							<div class="message-comment-box-form">
								<textarea id="comment-form4399" onclick="showButton(4399)"
									placeholder="Leave a comment..." class="comment-reply-textarea"></textarea>
							</div>
							<div class="comment-btn button-active" id="comment_btn_4399">
								<a onclick="postComment(4399)">Post</a>
							</div>
							<div class="delete_preloader" id="post_comment_4399"></div>
						</div>
					</div>
				</div>
				<div class="message-container last-message" id="message4398"
					data-filter="" data-last="4398" data-username="" data-type="0"
					data-userid="3099">
					<div class="message-content">
						<div class="message-inner">
							<div class="message-avatar" id="avatar4398">
								<a
									href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik"
									rel="loadpage"> <img
									onmouseover="profileCard(3099, 4398, 0, 0);"
									onmouseout="profileCard(0, 0, 0, 1);"
									onclick="profileCard(0, 0, 1, 1);"
									src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=50&h=50">
								</a>
							</div>
							<div class="message-top">

								<div class="message-menu" onclick="messageMenu(4398, 1)"></div>
								<div id="message-menu4398" class="message-menu-container">

									<div class="message-menu-row" onclick="edit_message(4398)"
										id="edit_text4398">Edit</div>
									<div class="message-menu-row" onclick="deleteModal(4398, 1)">Delete</div>
									<div class="message-menu-divider"></div>
									<div class="message-menu-row" onclick="privacy(4398, 1)">Public</div>
									<div class="message-menu-row" onclick="privacy(4398, 2)">Friends</div>
									<div class="message-menu-row" onclick="privacy(4398, 0)">Private</div>

								</div>
								<div class="message-author" id="author4398">
									<a href="wall.jsp?a=profile&u=maulik">maulik</a>
								</div>
								<div class="message-time">
									<span id="time4398"><a
										href="http://phpdolphin.com/demo/index.php?a=post&m=4398"
										rel="loadpage">
											<div class="timeago" title="2016-01-26T04:35:41-05:00">
												2016-01-26T04:35:41-05:00</div>
									</a></span><span id="privacy4398"><div
											class="privacy-icons public-icon" title="Public"></div></span>
									<div id="message_loader4398"></div>
								</div>
							</div>
							<div class="message-message" id="message_text4398">yo</div>

						</div>
						<div class="message-divider"></div>

						<div class="message-replies">
							<div class="message-actions">
								<div class="message-actions-content" id="message-action4398">
									<a onclick="doLike(4398, 0)" id="doLike4398">Unlike</a> - <a
										onclick="focus_form(4398)">Comment</a> - <a
										onclick="share(4398)">Share</a>
									<div class="like_btn" id="like_btn4398">
										<span class="likes-container"><a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik"
											rel="loadpage"><img
												src="http://phpdolphin.com/demo/thumb.php?src=default.png&w=25&h=25&t=a"
												title="maulik liked this"></a> </span><a title="View all likes"
											onclick="likesModal(4398, 0)">1</a>
									</div>
								</div>
							</div>
							<div class="message-replies-content" id="comments-list4398">

							</div>
						</div>
						<div class="message-comment-box-container" id="comment_box_4398">
							<div class="message-reply-avatar">
								<img
									src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=50&h=50">
							</div>
							<div class="message-comment-box-form">
								<textarea id="comment-form4398" onclick="showButton(4398)"
									placeholder="Leave a comment..." class="comment-reply-textarea"></textarea>
							</div>
							<div class="comment-btn button-active" id="comment_btn_4398">
								<a onclick="postComment(4398)">Post</a>
							</div>
							<div class="delete_preloader" id="post_comment_4398"></div>
						</div>
					</div>
				</div>
				<div class="message-container last-message" id="message4359"
					data-filter="" data-last="4359" data-username="" data-type="0"
					data-userid="3099">
					<div class="message-content">
						<div class="message-inner">
							<div class="message-avatar" id="avatar4359">
								<a
									href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik"
									rel="loadpage"> <img
									onmouseover="profileCard(3099, 4359, 0, 0);"
									onmouseout="profileCard(0, 0, 0, 1);"
									onclick="profileCard(0, 0, 1, 1);"
									src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=50&h=50">
								</a>
							</div>
							<div class="message-top">

								<div class="message-menu" onclick="messageMenu(4359, 1)"></div>
								<div id="message-menu4359" class="message-menu-container">

									<div class="message-menu-row" onclick="edit_message(4359)"
										id="edit_text4359">Edit</div>
									<div class="message-menu-row" onclick="deleteModal(4359, 1)">Delete</div>
									<div class="message-menu-divider"></div>
									<div class="message-menu-row" onclick="privacy(4359, 1)">Public</div>
									<div class="message-menu-row" onclick="privacy(4359, 2)">Friends</div>
									<div class="message-menu-row" onclick="privacy(4359, 0)">Private</div>

								</div>
								<div class="message-author" id="author4359">
									<a
										href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik"
										rel="loadpage">maulik</a>
								</div>
								<div class="message-time">
									<span id="time4359"><a
										href="http://phpdolphin.com/demo/index.php?a=post&m=4359"
										rel="loadpage">
											<div class="timeago" title="2016-01-25T00:39:59-05:00">
												2016-01-25T00:39:59-05:00</div>
									</a></span><span id="privacy4359"><div
											class="privacy-icons public-icon" title="Public"></div></span>
									<div id="message_loader4359"></div>
								</div>
							</div>
							<div class="message-message" id="message_text4359">maulik
								is mad</div>

						</div>
						<div class="message-divider"></div>

						<div class="message-replies">
							<div class="message-actions">
								<div class="message-actions-content" id="message-action4359">
									<a onclick="doLike(4359, 0)" id="doLike4359">Unlike</a> - <a
										onclick="focus_form(4359)">Comment</a> - <a
										onclick="share(4359)">Share</a>
									<div class="like_btn" id="like_btn4359">
										<span class="likes-container"><a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik"
											rel="loadpage"><img
												src="http://phpdolphin.com/demo/thumb.php?src=default.png&w=25&h=25&t=a"
												title="maulik liked this"></a> </span><a title="View all likes"
											onclick="likesModal(4359, 0)">1</a>
									</div>
								</div>
							</div>
							<div class="message-replies-content" id="comments-list4359">

								<div class="message-reply-container" id="comment1268">
									<a onclick="deleteModal(1268, 0)" title="Delete"><div
											class="delete_btn"></div></a>
									<div class="message-reply-avatar">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik"
											rel="loadpage"><img
											onmouseover="profileCard(3099, 1268, 1, 0)"
											onmouseout="profileCard(0, 0, 1, 1);"
											onclick="profileCard(0, 0, 1, 1);"
											src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a"></a>
									</div>
									<div class="message-reply-message">
										<span class="message-reply-author"><a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik"
											rel="loadpage">maulik</a></span>: yo
									</div>
									<div class="message-reply-footer">
										<div class="message-time">
											<span class="like-comment"><a
												onclick="doLike(1268, 1)" id="doLikeC1268">Like</a> -&nbsp;</span>
											<div class="timeago" title="2016-01-25T00:40:11-05:00">
												2016-01-25T00:40:11-05:00</div>
											<div class="like_btn" id="like_c_btn1268">
												<a onclick="likesModal(1268, 1)" title="View all likes">0</a>
											</div>
										</div>
									</div>
									<div class="delete_preloader" id="del_comment_1268"></div>

								</div>
								<div class="message-reply-container" id="comment1269">
									<a onclick="report_the(1269, 0)" title="Report this comment"><div
											class="report_btn"></div></a>
									<div class="message-reply-avatar">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=shalin"
											rel="loadpage"><img
											onmouseover="profileCard(3098, 1269, 1, 0)"
											onmouseout="profileCard(0, 0, 1, 1);"
											onclick="profileCard(0, 0, 1, 1);"
											src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a"></a>
									</div>
									<div class="message-reply-message">
										<span class="message-reply-author"><a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=shalin"
											rel="loadpage">shalin</a></span>: dofa
									</div>
									<div class="message-reply-footer">
										<div class="message-time">
											<span class="like-comment"><a
												onclick="doLike(1269, 1)" id="doLikeC1269">Like</a> -&nbsp;</span>
											<div class="timeago" title="2016-01-25T00:42:09-05:00">
												2016-01-25T00:42:09-05:00</div>
											<div class="like_btn" id="like_c_btn1269">
												<a onclick="likesModal(1269, 1)" title="View all likes">0</a>
											</div>
										</div>
									</div>
									<div class="delete_preloader" id="del_comment_1269"></div>

								</div>
							</div>
						</div>
						<div class="message-comment-box-container" id="comment_box_4359">
							<div class="message-reply-avatar">
								<img
									src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=50&h=50">
							</div>
							<div class="message-comment-box-form">
								<textarea id="comment-form4359" onclick="showButton(4359)"
									placeholder="Leave a comment..." class="comment-reply-textarea"></textarea>
							</div>
							<div class="comment-btn button-active" id="comment_btn_4359">
								<a onclick="postComment(4359)">Post</a>
							</div>
							<div class="delete_preloader" id="post_comment_4359"></div>
						</div>
					</div>
				</div>
				<div id="profile-card"></div>
			</div>
			<div class="three columns">
				<div class="sidebar-container widget-welcome">
					<div class="sidebar-content">
						<div class="sidebar-header">Welcome</div>
						<div class="sidebar-inner">
							<div class="sidebar-avatar">
								<a
									href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik"
									rel="loadpage"><img
									src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=50&h=50"></a>
							</div>
							<div class="sidebar-avatar-desc">
								<a
									href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik"
									rel="loadpage">maulik</a>
								<div class="sidebar-avatar-edit">
									<a href="editprofile.jsp">Edit Profile</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="sidebar-container widget-groups">
					<div class="sidebar-content">
						<div class="sidebar-header">
							<a href="http://phpdolphin.com/demo/index.php?a=group"
								rel="loadpage">Groups</a></span>
						</div>
						<div class="sidebar-link">
							<a href="http://phpdolphin.com/demo/index.php?a=group"
								rel="loadpage"><img
								src="http://phpdolphin.com/demo/themes/dolphin/images/icons/create_group.png"
								width="24" height="24">Create Group</a>
						</div>
					</div>
				</div>


				<div class="sidebar-container widget-archive">
					<div class="sidebar-content">
						<div class="sidebar-header">Archives</div>
						<div class="sidebar-link sidebar-link-active">
							<a href="http://phpdolphin.com/demo/index.php?a=feed"
								rel="loadpage">All time</a>
						</div>
						<div class="sidebar-link sidebar-dates">
							<a
								href="http://phpdolphin.com/demo/index.php?a=feed&filter=201601"
								rel="loadpage">January - 2016</a>
						</div>
					</div>
				</div>
				<div class="sidebar-container widget-friends-activity">
					<div class="sidebar-content">
						<div class="sidebar-header">Friends Activity</div>
						<div class="sidebar-fa-content scrollable">
							<div class="notification-row">
								<div class="notification-padding">
									<div class="sidebar-fa-image">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=vivekppatel24"
											rel="loadpage"><img class="notifications"
											src=http://phpdolphin.com/demo/thumb.php?src=1969592830_1551237559_1697813554.jpg&t=a&w=50&h=50"></a>
									</div>
									<div class="sidebar-fa-text">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=vivekppatel24"
											rel="loadpage">vivekppatel24</a> liked a <a
											href="http://phpdolphin.com/demo/index.php?a=post&m=4399"
											rel="loadpage">message</a>. <span class="timeago"
											title="2016-02-11T02:08:34-05:00">2016-02-11T02:08:34-05:00</span>
									</div>
								</div>
							</div>
							<div class="notification-row">
								<div class="notification-padding">
									<div class="sidebar-fa-image">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=vivekppatel24"
											rel="loadpage"><img class="notifications"
											src=http://phpdolphin.com/demo/thumb.php?src=1969592830_1551237559_1697813554.jpg&t=a&w=50&h=50"></a>
									</div>
									<div class="sidebar-fa-text">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=vivekppatel24"
											rel="loadpage">vivekppatel24</a> commented on a <a
											href="http://phpdolphin.com/demo/index.php?a=post&m=4399"
											rel="loadpage">message</a>. <span class="timeago"
											title="2016-02-11T01:42:13-05:00">2016-02-11T01:42:13-05:00</span>
									</div>
								</div>
							</div>
							<div class="notification-row">
								<div class="notification-padding">
									<div class="sidebar-fa-image">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=vivekppatel24"
											rel="loadpage"><img class="notifications"
											src=http://phpdolphin.com/demo/thumb.php?src=1969592830_1551237559_1697813554.jpg&t=a&w=50&h=50"></a>
									</div>
									<div class="sidebar-fa-text">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=vivekppatel24"
											rel="loadpage">vivekppatel24</a> commented on a <a
											href="http://phpdolphin.com/demo/index.php?a=post&m=4399"
											rel="loadpage">message</a>. <span class="timeago"
											title="2016-02-11T01:42:13-05:00">2016-02-11T01:42:13-05:00</span>
									</div>
								</div>
							</div>
							<div class="notification-row">
								<div class="notification-padding">
									<div class="sidebar-fa-image">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=deepushah4295"
											rel="loadpage"><img class="notifications"
											src=http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=50&h=50"></a>
									</div>
									<div class="sidebar-fa-text">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=deepushah4295"
											rel="loadpage">deepushah4295</a> posted a new <a
											href="http://phpdolphin.com/demo/index.php?a=post&m=4399"
											rel="loadpage">message</a>. <span class="timeago"
											title="2016-01-26T06:21:11-05:00">2016-01-26T06:21:11-05:00</span>
									</div>
								</div>
							</div>
							<div class="notification-row">
								<div class="notification-padding">
									<div class="sidebar-fa-image">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=shalin"
											rel="loadpage"><img class="notifications"
											src=http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=50&h=50"></a>
									</div>
									<div class="sidebar-fa-text">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=shalin"
											rel="loadpage">shalin</a> commented on a <a
											href="http://phpdolphin.com/demo/index.php?a=post&m=4359"
											rel="loadpage">message</a>. <span class="timeago"
											title="2016-01-25T00:42:09-05:00">2016-01-25T00:42:09-05:00</span>
									</div>
								</div>
							</div>
							<div class="notification-row">
								<div class="notification-padding">
									<div class="sidebar-fa-image">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=shalin"
											rel="loadpage"><img class="notifications"
											src=http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=50&h=50"></a>
									</div>
									<div class="sidebar-fa-text">
										<a
											href="http://phpdolphin.com/demo/index.php?a=profile&u=shalin"
											rel="loadpage">shalin</a> commented on a <a
											href="http://phpdolphin.com/demo/index.php?a=post&m=1858"
											rel="loadpage">message</a>. <span class="timeago"
											title="2016-01-25T00:38:19-05:00">2016-01-25T00:38:19-05:00</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="sidebar-container widget-friends">
					<div class="sidebar-content">
						<div class="sidebar-header">
							<a
								href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik&r=friends"
								rel="loadpage">Friends <span class="sidebar-header-light">(4)</span></a>
						</div>
						<div class="sidebar-padding">
							<a
								href="http://phpdolphin.com/demo/index.php?a=profile&u=vivekppatel24"
								rel="loadpage"><div class="sidebar-subscriptions">
									<div class="sidebar-title-container">
										<div class="sidebar-title-name">vivekppatel24</div>
									</div>
									<img
										src="http://phpdolphin.com/demo/thumb.php?src=1969592830_1551237559_1697813554.jpg&t=a&w=112&h=112">
								</div></a><a
								href="http://phpdolphin.com/demo/index.php?a=profile&u=deepushah4295"
								rel="loadpage"><div class="sidebar-subscriptions">
									<div class="sidebar-title-container">
										<div class="sidebar-title-name">deepushah4295</div>
									</div>
									<img
										src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=112&h=112">
								</div></a><a
								href="http://phpdolphin.com/demo/index.php?a=profile&u=heliseth"
								rel="loadpage"><div class="sidebar-subscriptions">
									<div class="sidebar-title-container">
										<div class="sidebar-title-name">heliseth</div>
									</div>
									<img
										src="http://phpdolphin.com/demo/thumb.php?src=1605501128_583316597_1369710842.jpg&t=a&w=112&h=112">
								</div></a><a
								href="http://phpdolphin.com/demo/index.php?a=profile&u=shalin"
								rel="loadpage"><div class="sidebar-subscriptions">
									<div class="sidebar-title-container">
										<div class="sidebar-title-name">shalin</div>
									</div>
									<img
										src="http://phpdolphin.com/demo/thumb.php?src=default.png&t=a&w=112&h=112">
								</div></a>
						</div>
					</div>
				</div>
				<div class="sidebar-container widget-suggestions">
					<div class="sidebar-content">
						<div class="sidebar-header">Friends Suggestions</div>
						<div class="sidebar-padding">
							<a
								href="http://phpdolphin.com/demo/index.php?a=profile&u=jhonyramos"
								rel="loadpage"><div class="sidebar-subscriptions">
									<div class="sidebar-title-container">
										<div class="sidebar-title-name">jhonyramos</div>
									</div>
									<img
										src="http://phpdolphin.com/demo/thumb.php?src=625347062_1536265265_944386408.jpg&t=a&w=112&h=112">
								</div></a><a href="http://phpdolphin.com/demo/index.php?a=profile&u=bro"
								rel="loadpage"><div class="sidebar-subscriptions">
									<div class="sidebar-title-container">
										<div class="sidebar-title-name">bro</div>
									</div>
									<img
										src="http://phpdolphin.com/demo/thumb.php?src=392162923_1539494378_478431154.jpg&t=a&w=112&h=112">
								</div></a><a
								href="http://phpdolphin.com/demo/index.php?a=profile&u=pastor"
								rel="loadpage"><div class="sidebar-subscriptions">
									<div class="sidebar-title-container">
										<div class="sidebar-title-name">Pastor Chriss</div>
									</div>
									<img
										src="http://phpdolphin.com/demo/thumb.php?src=1373913132_496971371_1861216349.jpg&t=a&w=112&h=112">
								</div></a><a
								href="http://phpdolphin.com/demo/index.php?a=profile&u=meloo500"
								rel="loadpage"><div class="sidebar-subscriptions">
									<div class="sidebar-title-container">
										<div class="sidebar-title-name">meloo500</div>
									</div>
									<img
										src="http://phpdolphin.com/demo/thumb.php?src=1721940873_2000599071_648985817.jpg&t=a&w=112&h=112">
								</div></a><a
								href="http://phpdolphin.com/demo/index.php?a=profile&u=keshavsays"
								rel="loadpage"><div class="sidebar-subscriptions">
									<div class="sidebar-title-container">
										<div class="sidebar-title-name">keshavsays</div>
									</div>
									<img
										src="http://phpdolphin.com/demo/thumb.php?src=1836632122_550646348_966721584.jpg&t=a&w=112&h=112">
								</div></a><a
								href="http://phpdolphin.com/demo/index.php?a=profile&u=semih91"
								rel="loadpage"><div class="sidebar-subscriptions">
									<div class="sidebar-title-container">
										<div class="sidebar-title-name">semih91</div>
									</div>
									<img
										src="http://phpdolphin.com/demo/thumb.php?src=2136876036_82061147_273821357.jpg&t=a&w=112&h=112">
								</div></a>
						</div>
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
					<div class="modal-cancel button-normal" id="delete-cancel">
						<a onclick="likesModal(0, 0, 1)">Close</a>
					</div>
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
				<div class="modal-desc" id="share-desc">Are you sure do you
					want to share this message on your timeline?</div>
				<div class="modal-result" id="share-result"></div>
			</div>
			<div class="message-divider"></div>
			<div class="modal-menu">
				<div class="modal-cancel button-normal" id="share-cancel">
					<a onclick="doShare(0, 0)">Cancel</a>
				</div>
				<div class="modal-btn button-active" id="share-btn">
					<a>Share</a>
				</div>
				<div class="modal-close button-normal" id="share-close">
					<a onclick="doShare(0, 0)">Close</a>
				</div>
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
				<div class="modal-desc" id="delete0">Are you sure you want to
					delete this comment?</div>
				<div class="modal-desc" id="delete1">Are you sure you want to
					delete this message?</div>
				<div class="modal-desc" id="delete2">Are you sure you want to
					delete this chat message?</div>
				<div class="modal-result"></div>
			</div>
			<div class="message-divider"></div>
			<div class="modal-menu">
				<div class="modal-cancel button-normal" id="delete-cancel">
					<a onclick="deleteModal(0, 999)">Cancel</a>
				</div>
				<div class="modal-btn button-active" id="delete-btn">
					<a>Delete</a>
				</div>
			</div>
		</div>
	</div>
	<div class="modal-background"></div>
	<div class="footer">
		<div class="footer-container">
			<div class="footer-links">
				<a href="http://phpdolphin.com/demo/index.php?a=page&b=tos"
					rel="loadpage">Terms of Use</a> - <a
					href="http://phpdolphin.com/demo/index.php?a=page&b=privacy"
					rel="loadpage">Privacy Policy</a> - <a
					href="http://phpdolphin.com/demo/index.php?a=page&b=disclaimer"
					rel="loadpage">Disclaimer</a> - <a
					href="http://phpdolphin.com/demo/index.php?a=page&b=api"
					rel="loadpage">Developers</a> - <a
					href="http://phpdolphin.com/demo/index.php?a=page&b=contact"
					rel="loadpage">Contact</a> - <a
					href="http://phpdolphin.com/demo/index.php?a=page&b=about"
					rel="loadpage">About</a> - <a
					href="http://phpdolphin.com/demo/index.php?a=admin" rel="loadpage">Admin</a>
			</div>
			<div class="footer-languages">
				Language: <a
					href="http://phpdolphin.com/demo/index.php?lang=english">English</a>
				- <a href="http://phpdolphin.com/demo/index.php?lang=romanian">Romanian</a>
			</div>
			<div class="footer-languages">
				Copyright &copy; 2016 phpDolphin. All rights reserved. Powered by <a
					href="http://phpdolphin.com" target="_blank">phpDolphin</a>.
			</div>
		</div>
	</div>
</body>
</html>