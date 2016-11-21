<!DOCTYPE html>
<html lang='ru'>
<head>
{header}
<link rel='shortcut icon' href='{theme}/images/favicon.ico' type='image/x-icon' />
<link rel='icon' href='{theme}/images/favicon.ico' type='image/x-icon' />
<noscript><meta http-equiv="refresh" content="0; URL=/badbrowser.php"></noscript>
<link media="screen" href="{theme}/style/style.css" type="text/css" rel="stylesheet" />
<link media="screen" href="{theme}/style/font-awesome.css" type="text/css" rel="stylesheet" />
{js}
[not-logged]<script type="text/javascript" src="{theme}/js/reg.js"></script>[/not-logged]
</head>
<body onResize="onBodyResize()" class="no_display">
<div class="scroll_fix_bg no_display" onMouseDown="myhtml.scrollTop()"><div class="scroll_fix_page_top">Наверх</div></div>
<div id="doLoad"></div>
<div class="head">
 <div class="autowr">
	[logged]
		<!-- <a href="{my-page-link}" class="udinsMy" onClick="Page.Go(this.href); return false;"></a> -->
		<a href="/news{news-link}" class="udins" onClick="Page.Go(this.href); return false;"></a>
	[/logged]
	[not-logged]<a href="/" class="udins"></a>[/not-logged]
	<div class="headmenu">
	 [logged]
	<a href="/search/type1" onClick="Page.Go(this.href); return false" id="requests_online">
		<div class="headm_posic">
	<img src="{theme}/images/spacer.gif" class="headm_ic_friend" /><br />
	 Люди
		</div>
	 </a>
	 <a href="/search/type4" onClick="Page.Go(this.href); return false;" id="new_groups_lnk">
		<div class="headm_posic">
	<div id="new_groups">{new_groups}</div>
	<img src="{theme}/images/spacer.gif" class="headm_ic_groups" /><br />
	 Сообщества
		</div>
	 </a>
	 <a href="/apps" onClick="Page.Go(this.href); return false;">
		<div class="headm_posic"><img src="/templates/Default/images/spacer.gif" class="headm_ic_games" /><br />
	 Игры
		</div>
	 </a>
	 <a href="/audio" onClick="doLoad.js(0); player.open(); return false;">
		<div class="headm_posic"><img src="/templates/Default/images/spacer.gif" class="headm_ic_music" id="fplayer_pos" /><br />
	 Музыка
		</div>
	 </a>
	 <a href="/" onClick="gSearch.open_tab(); return false;" id="se_link">
		<div class="headm_posic"><img src="{theme}/images/spacer.gif" class="headm_ic_se" /><br />
	 Поиск
		</div>
	 </a>
	 <a href="/support" onClick="Page.Go(this.href); return false;">
		<div class="headm_posic">
	<div id="new_support">{new-support}</div>
	<img src="{theme}/images/spacer.gif" class="headm_ic_support" /><br />
	 Помощь
		</div>
	 </a>
	 <a href="/?act=logout">
		<div class="headm_posic">
	<img src="{theme}/images/spacer.gif" class="headm_ic_logout" /><br />
	 Выйти
		</div>
	 </a>
	[/logged]
	</div>
	
	 <!--search-->
	 <div class="search_tab no_display" id="search_tab">
		<input type="text" value="Поиск" class="fave_input search_input" 
		onBlur="if(this.value=='') this.value='Поиск';this.style.color = '#c1cad0';" 
		onFocus="if(this.value=='Поиск')this.value='';this.style.color = '#000'" 
		onKeyPress="if(event.keyCode == 13) gSearch.go();"
		onKeyUp="FSE.Txt()"
	id="query" maxlength="65" />
	<div id="search_types">
	 <input type="hidden" value="1" id="se_type" />
	 <div class="search_type" id="search_selected_text" onClick="gSearch.open_types('#sel_types'); return false">по людям</div>
	 <div class="search_alltype_sel no_display" id="sel_types">
		<div id="1" onClick="gSearch.select_type(this.id, 'по людям'); FSE.GoSe($('#query').val()); return false" class="search_type_selected">по людям</div>
		<div id="2" onClick="gSearch.select_type(this.id, 'по видеозаписям'); FSE.GoSe($('#query').val()); return false">по видеозаписям</div>
		<div id="3" onClick="gSearch.select_type(this.id, 'по заметкам');  FSE.GoSe($('#query').val()); return false">по заметкам</div>
		<div id="4" onClick="gSearch.select_type(this.id, 'по сообществам'); FSE.GoSe($('#query').val()); return false">по сообществам</div>
		<div id="5" onClick="gSearch.select_type(this.id, 'по аудиозаписям');  FSE.GoSe($('#query').val()); return false">по аудиозаписям</div>
	 </div>
	</div>
	<div class="button_div fl_l margin_left"><button onClick="gSearch.go(); return false" id="se_but">Найти</button></div>
	 </div>
	 <div class="fast_search_bg no_display">
	 <a href="/" style="padding:12px;background:#eef3f5" onClick="gSearch.go(); return false" onMouseOver="FSE.ClrHovered(this.id)" id="all_fast_res_clr1"><text>Искать</text> <b id="fast_search_txt"></b><div class="fl_r fast_search_ic"></div></a>
	 <span id="reFastSearch"></span>
	 </div>
	 <!--/search-->
	 
 </div>
</div>
<div class="clear"></div>
<div style="margin-top:70px;"></div>
<div class="autowr">
<div class="leftpanel">
 [not-logged]
	<form method="POST" action="">
	 <div class="flLg">Электронный адрес</div><input type="text" name="email" id="log_email" class="inplog" maxlength="50" />
	 <div class="flLg">Пароль</div><input type="password" name="password" id="log_password" class="inplog" maxlength="50" />
	 <div class="logpos">
		<div class="button_div"><button name="log_in" id="login_but" value="1" style="width:138px">Войти</button></div>
	<div style="margin-top:5px"><a href="/restore" onClick="Page.Go(this.href); return false">Не можете войти?</a></div>
	 </div>
	</form>[/not-logged]


	[logged]
	<div class="leftmenu">
		<a href="/editmypage" onClick="Page.Go(this.href); return false;" id="my_edit" title="Редактировать страницу"><i class="fa  fa-pencil-square-o"></i></a>
		<ul>
			<li>
				<a href="{my-page-link}" onClick="Page.Go(this.href); return false;" id="requests_my">
					<span class="leftmenu_text">
						<i class="fa fa-home"></i> Моя Страница
					</span>
				</a>
			</li>
			<li>
				<a href="/friends{requests-link}" onClick="Page.Go(this.href); return false;" id="requests_link">
					<span class="leftmenu_text">
						<i class="fa fa-users"></i> Мои Друзья
					</span>
					<span id="new_requests">{demands}</span>
				</a>
			</li>
			<li>
				<a href="/albums/{my-id}" onClick="Page.Go(this.href); return false;" id="requests_link_new_photos">
					<span class="leftmenu_text">
						<i class="fa fa-file-image-o"></i> Мои Фотографии
					</span>
					<span id="new_photos">{new_photos}</span>
				</a>
			</li>
			<li>
				<a href="/videos/{my-id}" onClick="Page.Go(this.href); return false;">
					<span class="leftmenu_text">
						<i class="fa fa-file-video-o"></i> Мои Видеозаписи
					</span>
				</a>
			</li>
			<li>
				<a href="/audio" onClick="player.change_list(0); return false;">
					<span class="leftmenu_text">
						<i class="fa fa-file-audio-o"></i> Мои Аудиозаписи
					</span>
				</a>
			</li>
			<li>
				<a href="/messages" onClick="Page.Go(this.href); return false;">
					<span class="leftmenu_text">
						<i class="fa fa-envelope"></i> Мои Сообщения
					</span>
					<span id="new_msg">{msg}</span>
				</a>
			</li>
			<li>
				<a href="{groups-link}" onClick="Page.Go(this.href); return false;" id="new_groups_lnk">
					<span class="leftmenu_text">
						<i class="fa fa-calendar-o"></i> Мои Группы
					</span>
					<span id="new_groups">{new_groups}</span>
				</a>
			</li>
			<li>
				<a href="/fave" onClick="Page.Go(this.href); return false;">
					<span class="leftmenu_text">
						<i class="fa fa-star"></i> Мои Закладки
					</span>
				</a>
			</li>
			<li>
				<a href="/news{news-link}" onClick="Page.Go(this.href); return false;" id="news_link">
					<span class="leftmenu_text">
						<i class="fa fa-th-list"></i> Мои Новости
					</span>
					<span id="new_news">{new-news}</span>
				</a>
			</li>
			<li>
				<a href="/notes" onClick="Page.Go(this.href); return false;">
					<span class="leftmenu_text">
						<i class="fa fa-heart"></i> Мои Заметки
					</span>
				</a>
			</li>
			<li>
				<a href="/settings" onClick="Page.Go(this.href); return false;">
					<span class="leftmenu_text">
						<i class="fa fa-cogs"></i> Настройки
					</span>
				</a>
			</li>
			<li>
				<a href="/apps" onClick="Page.Go(this.href); return false;">
					<span class="leftmenu_text">
						<i class="fa fa-smile-o"></i> Приложения
					</span>
				</a>
			</li>
			<li>
				<a href="/docs" onClick="Page.Go(this.href); return false;">
					<span class="leftmenu_text">
						<i class="fa fa-file-text"></i> Документы
					</span>
				</a>
			</li>
			<li>
				<a href="/index.php?go=guests" onClick="Page.Go(this.href); return false;">
					<span class="leftmenu_text">
						<i class="fa fa-male"></i> Гости
					</span>
				</a>
			</li>
			<!-- <li>
				<a href="{ubm-link}" onClick="Page.Go(this.href); return false;" id="ubm_link">
					<span class="leftmenu_text">
						<img src="{theme}/images/spacer.gif" class="headm_ic_ubm" />Баланс
					</span>
					<span id="new_ubm">{new-ubm}</span>
				</a>
			</li> -->
		</ul>
	</div>
	[/logged]



 </div>
 <div class="content">
	<div class="shadow">
	<div class="speedbar no_display" id="">{speedbar}</div>
	<div class="padcont">
	 <div id="audioPlayer"></div>
	 <div id="page">{info}{content}</div>
	 <div class="clear"></div>
	</div>
	</div>
 </div>

	<div class="clear"></div>
	<div class="footer">
		<div class="copy">
			Caucasia.Online &copy; 2016 
			<!-- <a class="cursor_pointer" onClick="trsn.box()" onMouseOver="myhtml.title('1', 'Выбор используемого языка на сайте', 'langTitle', 1)" id="langTitle1">{lang}</a> -->
		</div>
		<div class="fl_r">
			<a href="/?act=change_mobile">мобильная версия</a>
			<!-- <a href="/?go=search&online=1" onClick="Page.Go(this.href); return false">люди</a> -->
			<a href="/search/type1" onClick="Page.Go(this.href); return false">люди</a>
			<a href="/search/type4" onClick="Page.Go(this.href); return false">группы</a>
			<a href="/search/type5" onClick="Page.Go(this.href); return false">музыка</a>
			<a href="/search/type2" onClick="Page.Go(this.href); return false">видео</a>
			<a href="/search/type3" onClick="Page.Go(this.href); return false">заметки</a>
			<a href="/support" onClick="Page.Go(this.href); return false">помощь</a>
			<a href="/reviews" onClick="Page.Go(this.href); return false">отзывы</a>
		</div>
		<div class="clear"></div>
	</div>

</div>
[logged]<script type="text/javascript" src="{theme}/js/push.js"></script>
<div class="no_display"><audio id="beep-three" controls preload="auto"><source src="{theme}/images/soundact.ogg"></source></audio></div>
<div id="updates"></div>[/logged]
<div class="clear"></div>


<!-- Yandex.Metrika counter -->
<script type="text/javascript">
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function() {
            try {
                w.yaCounter38789930 = new Ya.Metrika({
                    id:38789930,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true,
                    webvisor:true
                });
            } catch(e) { }
        });

        var n = d.getElementsByTagName("script")[0],
            s = d.createElement("script"),
            f = function () { n.parentNode.insertBefore(s, n); };
        s.type = "text/javascript";
        s.async = true;
        s.src = "https://mc.yandex.ru/metrika/watch.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else { f(); }
    })(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/38789930" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->


<!-- GoogleAnalyticsObject -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-54777620-9', 'auto');
  ga('send', 'pageview');

</script>
<!-- /GoogleAnalyticsObject -->


</body>
</html>