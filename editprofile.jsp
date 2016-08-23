<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Settings - phpDolphin</title>
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
<link rel="shortcut icon" href="http://phpdolphin.com/demo/favicon.ico">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	baseUrl = 'http://phpdolphin.com/demo';
	token_id = 'e3a0c5e07392880c5542d773312d9b98';
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
		<a href="http://phpdolphin.com/demo/index.php?a=profile&u=maulik"  rel="loadpage"><div class="menu-dd-row">maulik</div></a><div class="menu-divider "></div><a href="http://phpdolphin.com/demo/index.php?a=feed"  rel="loadpage"><div class="menu-dd-row">News Feed</div></a><div class="menu-divider "></div><a href="http://phpdolphin.com/demo/index.php?a=notifications"  rel="loadpage"><div class="menu-dd-row">Notifications</div></a><div class="menu-divider "></div><a href="http://phpdolphin.com/demo/index.php?a=settings"  rel="loadpage"><div class="menu-dd-row">Settings</div></a><div class="menu-divider "></div><a href="http://phpdolphin.com/demo/index.php?a=feed&logout=1&token_id=e3a0c5e07392880c5542d773312d9b98" ><div class="menu-dd-row">Log Out</div></a>
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
	<div class="row-page content-settings">
	<div class="three columns">
		<div class="sidebar-container">
			<div class="sidebar-content">
				<div class="sidebar-header">Settings</div>
				<div class="sidebar-link">
	<a href="http://phpdolphin.com/demo/index.php?a=settings" rel="loadpage"><strong>General</strong></a> 
	<a href="editprofile_profileimage.jsp">Profile Images</a>
	<a href="http://phpdolphin.com/demo/index.php?a=settings&b=notifications" rel="loadpage">Notifications</a>
	<a href="http://phpdolphin.com/demo/index.php?a=settings&b=privacy" rel="loadpage">Privacy</a>
	<a href="http://phpdolphin.com/demo/index.php?a=settings&b=security" rel="loadpage">Password</a></div>
			</div>
		</div>
	</div>
	<div class="nine columns">
		<div class="page-container">
			<div class="page-content">
				<div class="page-header"><strong>General Settings</strong></div>
				
<form action="http://phpdolphin.com/demo/index.php?a=settings" method="post">
<div class="page-inner">
	<input type="hidden" name="token_id" value="e3a0c5e07392880c5542d773312d9b98">
	<div class="page-input-container">
		<div class="page-input-title">First Name</div>
		<div class="page-input-content">
			<input type="text" name="first_name" value="">
			<div class="page-input-sub">Enter your first name</div>
		</div>
	</div>
	
	<div class="page-input-container">
		<div class="page-input-title">Last Name</div>
		<div class="page-input-content">
			<input type="text" name="last_name" value="">
			<div class="page-input-sub">Enter your last name</div>
		</div>
	</div>

	<div class="page-input-container">
		<div class="page-input-title">Email</div>
		<div class="page-input-content">
			<input type="text" name="email" value="maulik@gmail.com">
			<div class="page-input-sub">Email will not be displayed</div>
		</div>
	</div>
	
	<div class="page-input-container">
	<div class="page-input-title">Birth Date</div>
		<div class="page-input-content">
		<select name="day">
			<option value="">Day</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
		</select>
		<select name="month">
			<option value="">Month</option><option value="1">January</option><option value="2">February</option><option value="3">March</option><option value="4">April</option><option value="5">May</option><option value="6">June</option><option value="7">July</option><option value="8">August</option><option value="9">September</option><option value="10">October</option><option value="11">November</option><option value="12">December</option>
		</select>
		<select name="year">
			<option value="">Year</option><option value="2016">2016</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option>
		</select>
		<div class="page-input-sub">Select the date you were born</div>
		</div>
	</div>
	
	<div class="page-input-container">
		<div class="page-input-title">Gender</div>
		<div class="page-input-content">
		<select name="gender">
			<option value="0" selected="selected">No Gender</option>
			<option value="1" >Male</option>
			<option value="2" >Female</option>
		</select>
		<div class="page-input-sub">Select your gender</div>
		</div>
	</div>
	
	<div class="page-input-container">
		<div class="page-input-title">Interests</div>
		<div class="page-input-content">
		<select name="interests">
			<option value="0" selected="selected">None</option>
			<option value="1" >Men</option>
			<option value="2" >Women</option>
		</select>
		<div class="page-input-sub">Persons you're interested in</div>
		</div>
	</div>
	
	<div class="page-input-container">
	<div class="page-input-title">Country</div>
		<div class="page-input-content">
		<select name="country">
			<option value="" selected="selected"></option><option value="Afghanistan">Afghanistan</option><option value="Albania">Albania</option><option value="Algeria">Algeria</option><option value="American Samoa">American Samoa</option><option value="Andorra">Andorra</option><option value="Angola">Angola</option><option value="Anguilla">Anguilla</option><option value="Antarctica">Antarctica</option><option value="Antigua and Barbuda">Antigua and Barbuda</option><option value="Argentina">Argentina</option><option value="Armenia">Armenia</option><option value="Aruba">Aruba</option><option value="Australia">Australia</option><option value="Austria">Austria</option><option value="Azerbaijan">Azerbaijan</option><option value="Åland Islands">Åland Islands</option><option value="Bahamas">Bahamas</option><option value="Bahrain">Bahrain</option><option value="Bangladesh">Bangladesh</option><option value="Barbados">Barbados</option><option value="Belarus">Belarus</option><option value="Belgium">Belgium</option><option value="Belize">Belize</option><option value="Benin">Benin</option><option value="Bermuda">Bermuda</option><option value="Bhutan">Bhutan</option><option value="Bolivia">Bolivia</option><option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option><option value="Botswana">Botswana</option><option value="Bouvet Island">Bouvet Island</option><option value="Brazil">Brazil</option><option value="British Antarctic Territory">British Antarctic Territory</option><option value="British Indian Ocean Territory">British Indian Ocean Territory</option><option value="British Virgin Islands">British Virgin Islands</option><option value="Brunei">Brunei</option><option value="Bulgaria">Bulgaria</option><option value="Burkina Faso">Burkina Faso</option><option value="Burundi">Burundi</option><option value="Cambodia">Cambodia</option><option value="Cameroon">Cameroon</option><option value="Canada">Canada</option><option value="Canton and Enderbury Islands">Canton and Enderbury Islands</option><option value="Cape Verde">Cape Verde</option><option value="Cayman Islands">Cayman Islands</option><option value="Central African Republic">Central African Republic</option><option value="Chad">Chad</option><option value="Chile">Chile</option><option value="China">China</option><option value="Christmas Island">Christmas Island</option><option value="Cocos [Keeling] Islands">Cocos [Keeling] Islands</option><option value="Colombia">Colombia</option><option value="Comoros">Comoros</option><option value="Congo - Brazzaville">Congo - Brazzaville</option><option value="Congo - Kinshasa">Congo - Kinshasa</option><option value="Cook Islands">Cook Islands</option><option value="Costa Rica">Costa Rica</option><option value="Croatia">Croatia</option><option value="Cuba">Cuba</option><option value="Cyprus">Cyprus</option><option value="Czech Republic">Czech Republic</option><option value="Côte d’Ivoire">Côte d’Ivoire</option><option value="Denmark">Denmark</option><option value="Djibouti">Djibouti</option><option value="Dominica">Dominica</option><option value="Dominican Republic">Dominican Republic</option><option value="Dronning Maud Land">Dronning Maud Land</option><option value="East Germany">East Germany</option><option value="Ecuador">Ecuador</option><option value="Egypt">Egypt</option><option value="El Salvador">El Salvador</option><option value="Equatorial Guinea">Equatorial Guinea</option><option value="Eritrea">Eritrea</option><option value="Estonia">Estonia</option><option value="Ethiopia">Ethiopia</option><option value="Falkland Islands">Falkland Islands</option><option value="Faroe Islands">Faroe Islands</option><option value="Fiji">Fiji</option><option value="Finland">Finland</option><option value="France">France</option><option value="French Guiana">French Guiana</option><option value="French Polynesia">French Polynesia</option><option value="French Southern Territories">French Southern Territories</option><option value="French Southern and Antarctic Territories">French Southern and Antarctic Territories</option><option value="Gabon">Gabon</option><option value="Gambia">Gambia</option><option value="Georgia">Georgia</option><option value="Germany">Germany</option><option value="Ghana">Ghana</option><option value="Gibraltar">Gibraltar</option><option value="Greece">Greece</option><option value="Greenland">Greenland</option><option value="Grenada">Grenada</option><option value="Guadeloupe">Guadeloupe</option><option value="Guam">Guam</option><option value="Guatemala">Guatemala</option><option value="Guernsey">Guernsey</option><option value="Guinea">Guinea</option><option value="Guinea-Bissau">Guinea-Bissau</option><option value="Guyana">Guyana</option><option value="Haiti">Haiti</option><option value="Heard Island and McDonald Islands">Heard Island and McDonald Islands</option><option value="Honduras">Honduras</option><option value="Hong Kong SAR China">Hong Kong SAR China</option><option value="Hungary">Hungary</option><option value="Iceland">Iceland</option><option value="India">India</option><option value="Indonesia">Indonesia</option><option value="Iran">Iran</option><option value="Iraq">Iraq</option><option value="Ireland">Ireland</option><option value="Isle of Man">Isle of Man</option><option value="Israel">Israel</option><option value="Italy">Italy</option><option value="Jamaica">Jamaica</option><option value="Japan">Japan</option><option value="Jersey">Jersey</option><option value="Johnston Island">Johnston Island</option><option value="Jordan">Jordan</option><option value="Kazakhstan">Kazakhstan</option><option value="Kenya">Kenya</option><option value="Kiribati">Kiribati</option><option value="Kuwait">Kuwait</option><option value="Kyrgyzstan">Kyrgyzstan</option><option value="Laos">Laos</option><option value="Latvia">Latvia</option><option value="Lebanon">Lebanon</option><option value="Lesotho">Lesotho</option><option value="Liberia">Liberia</option><option value="Libya">Libya</option><option value="Liechtenstein">Liechtenstein</option><option value="Lithuania">Lithuania</option><option value="Luxembourg">Luxembourg</option><option value="Macau SAR China">Macau SAR China</option><option value="Macedonia">Macedonia</option><option value="Madagascar">Madagascar</option><option value="Malawi">Malawi</option><option value="Malaysia">Malaysia</option><option value="Maldives">Maldives</option><option value="Mali">Mali</option><option value="Malta">Malta</option><option value="Marshall Islands">Marshall Islands</option><option value="Martinique">Martinique</option><option value="Mauritania">Mauritania</option><option value="Mauritius">Mauritius</option><option value="Mayotte">Mayotte</option><option value="Metropolitan France">Metropolitan France</option><option value="Mexico">Mexico</option><option value="Micronesia">Micronesia</option><option value="Midway Islands">Midway Islands</option><option value="Moldova">Moldova</option><option value="Monaco">Monaco</option><option value="Mongolia">Mongolia</option><option value="Montenegro">Montenegro</option><option value="Montserrat">Montserrat</option><option value="Morocco">Morocco</option><option value="Mozambique">Mozambique</option><option value="Myanmar [Burma]">Myanmar [Burma]</option><option value="Namibia">Namibia</option><option value="Nauru">Nauru</option><option value="Nepal">Nepal</option><option value="Netherlands">Netherlands</option><option value="Netherlands Antilles">Netherlands Antilles</option><option value="Neutral Zone">Neutral Zone</option><option value="New Caledonia">New Caledonia</option><option value="New Zealand">New Zealand</option><option value="Nicaragua">Nicaragua</option><option value="Niger">Niger</option><option value="Nigeria">Nigeria</option><option value="Niue">Niue</option><option value="Norfolk Island">Norfolk Island</option><option value="North Korea">North Korea</option><option value="North Vietnam">North Vietnam</option><option value="Northern Mariana Islands">Northern Mariana Islands</option><option value="Norway">Norway</option><option value="Oman">Oman</option><option value="Pacific Islands Trust Territory">Pacific Islands Trust Territory</option><option value="Pakistan">Pakistan</option><option value="Palau">Palau</option><option value="Palestinian Territories">Palestinian Territories</option><option value="Panama">Panama</option><option value="Panama Canal Zone">Panama Canal Zone</option><option value="Papua New Guinea">Papua New Guinea</option><option value="Paraguay">Paraguay</option><option value="People's Democratic Republic of Yemen">People's Democratic Republic of Yemen</option><option value="Peru">Peru</option><option value="Philippines">Philippines</option><option value="Pitcairn Islands">Pitcairn Islands</option><option value="Poland">Poland</option><option value="Portugal">Portugal</option><option value="Puerto Rico">Puerto Rico</option><option value="Qatar">Qatar</option><option value="Romania">Romania</option><option value="Russia">Russia</option><option value="Rwanda">Rwanda</option><option value="Réunion">Réunion</option><option value="Saint Barthélemy">Saint Barthélemy</option><option value="Saint Helena">Saint Helena</option><option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option><option value="Saint Lucia">Saint Lucia</option><option value="Saint Martin">Saint Martin</option><option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option><option value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option><option value="Samoa">Samoa</option><option value="San Marino">San Marino</option><option value="Saudi Arabia">Saudi Arabia</option><option value="Senegal">Senegal</option><option value="Serbia">Serbia</option><option value="Serbia and Montenegro">Serbia and Montenegro</option><option value="Seychelles">Seychelles</option><option value="Sierra Leone">Sierra Leone</option><option value="Singapore">Singapore</option><option value="Slovakia">Slovakia</option><option value="Slovenia">Slovenia</option><option value="Solomon Islands">Solomon Islands</option><option value="Somalia">Somalia</option><option value="South Africa">South Africa</option><option value="South Georgia and the South Sandwich Islands">South Georgia and the South Sandwich Islands</option><option value="South Korea">South Korea</option><option value="Spain">Spain</option><option value="Sri Lanka">Sri Lanka</option><option value="Sudan">Sudan</option><option value="Suriname">Suriname</option><option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option><option value="Swaziland">Swaziland</option><option value="Sweden">Sweden</option><option value="Switzerland">Switzerland</option><option value="Syria">Syria</option><option value="São Tomé and Príncipe">São Tomé and Príncipe</option><option value="Taiwan">Taiwan</option><option value="Tajikistan">Tajikistan</option><option value="Tanzania">Tanzania</option><option value="Thailand">Thailand</option><option value="Timor-Leste">Timor-Leste</option><option value="Togo">Togo</option><option value="Tokelau">Tokelau</option><option value="Tonga">Tonga</option><option value="Trinidad and Tobago">Trinidad and Tobago</option><option value="Tunisia">Tunisia</option><option value="Turkey">Turkey</option><option value="Turkmenistan">Turkmenistan</option><option value="Turks and Caicos Islands">Turks and Caicos Islands</option><option value="Tuvalu">Tuvalu</option><option value="U.S. Minor Outlying Islands">U.S. Minor Outlying Islands</option><option value="U.S. Miscellaneous Pacific Islands">U.S. Miscellaneous Pacific Islands</option><option value="U.S. Virgin Islands">U.S. Virgin Islands</option><option value="Uganda">Uganda</option><option value="Ukraine">Ukraine</option><option value="Union of Soviet Socialist Republics">Union of Soviet Socialist Republics</option><option value="United Arab Emirates">United Arab Emirates</option><option value="United Kingdom">United Kingdom</option><option value="United States">United States</option><option value="Unknown or Invalid Region">Unknown or Invalid Region</option><option value="Uruguay">Uruguay</option><option value="Uzbekistan">Uzbekistan</option><option value="Vanuatu">Vanuatu</option><option value="Vatican City">Vatican City</option><option value="Venezuela">Venezuela</option><option value="Vietnam">Vietnam</option><option value="Wake Island">Wake Island</option><option value="Wallis and Futuna">Wallis and Futuna</option><option value="Western Sahara">Western Sahara</option><option value="Yemen">Yemen</option><option value="Zambia">Zambia</option><option value="Zimbabwe">Zimbabwe</option>
		</select>
		<div class="page-input-sub">The country you live in</div>
		</div>
	</div>

	<div class="page-input-container">
		<div class="page-input-title">City</div>
		<div class="page-input-content">
			<input type="text" name="location" value="">
			<div class="page-input-sub">The city you live in</div>
		</div>
	</div>
	
	<div class="page-input-container">
		<div class="page-input-title">Address</div>
		<div class="page-input-content">
			<input type="text" name="address" value="">
			<div class="page-input-sub">The address you live at</div>
		</div>
	</div>
	
	<div class="page-input-container">
		<div class="page-input-title">Workplace</div>
		<div class="page-input-content">
			<input type="text" name="work" value="">
			<div class="page-input-sub">Enter the company name where you're working</div>
		</div>
	</div>
	
	<div class="page-input-container">
		<div class="page-input-title">School</div>
		<div class="page-input-content">
			<input type="text" name="school" value="">
			<div class="page-input-sub">Enter the school name you attended</div>
		</div>
	</div>

	<div class="page-input-container">
		<div class="page-input-title">Website</div>
		<div class="page-input-content">
			<input type="text" name="website" value="">
			<div class="page-input-sub">Your website, blog or personal page</div>
		</div>
	</div>
</div>
<div class="message-divider"></div>
<div class="page-inner">
	<div class="page-input-container">
		<div class="page-input-title">Facebook</div>
		<div class="page-input-content">
			<input type="text" name="facebook" value="">
			<div class="page-input-sub">Your facebook profile ID.</div>
		</div>
	</div>

	<div class="page-input-container">
		<div class="page-input-title">Twitter</div>
		<div class="page-input-content"><input type="text" name="twitter" value="">
		<div class="page-input-sub">Your twitter profile ID.</div>
		</div>
	</div>

	<div class="page-input-container">
		<div class="page-input-title">Google+</div>
		<div class="page-input-content"><input type="text" name="gplus" value="">
		<div class="page-input-sub">Your google+ profile ID.</div>
		</div>
	</div>
</div>
<div class="message-divider"></div>
<div class="page-inner">
	<div class="page-input-container">
		<div class="page-input-title">Bio</div>
		<div class="page-input-content">
			<textarea class="ads" name="bio"></textarea>
			<div class="page-input-sub">About you (160 characters or less)</div>
		</div>
	</div>
</div>
<div class="message-divider"></div>
<div class="page-inner">
	<div class="page-input-title"></div><input type="submit" value="Save Changes">
</div>
</form>
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