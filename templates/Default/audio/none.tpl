<script type="text/javascript">
var jQpage_cnt = 1;
$(document).ready(function(){
	player.jPlayerInc();
	$('.staticpl_audios').scroll(function(){
	if($('#jQaudios').height() - $('.staticpl_audios').height() <= $('.staticpl_audios').scrollTop() + ($('.staticpl_audios').height() / 2 + 100 ))
		player.page();
	});
});
</script>
<div id="Xjquery_jplayer"></div>
 <div class="staticpl_seadisb"></div>
 <div class="staticPlbgTitle">
	<div class="staticpl_ictop"></div>
	<div class="staticpl_prev" onClick="player.prev()"></div>
	<div class="staticpl_play" onClick="player.onePlay()"></div>
	<div class="staticpl_pause" onClick="player.pause()"></div>
	<div class="staticpl_next" onClick="player.next()"></div>
	<div class="staticpl_trackname_and_progress">
		<div class="staticpl_trackname"><div class="staticpl_rtitle"><div><b id="XjArtis">&nbsp;</b> – <span id="XjTitle">&nbsp;</div></span></div><small id="play_time">00:00</small></div>
		<div class="staticpl_progress_bar">
		 <div id="player_progress_load_bar_2">
			<div id="player_progress_play_bar_2"></div>
		 </div>
		</div>
		<div class="staticpl_progress_bar_voice" id="player_volume_bar_2">
		 <div id="player_volume_bar_value_2"></div>
		</div>
	</div>
	<div class="staticpl_repeat" onClick="player.refresh()" onMouseOver="myhtml.title('1', 'Повторять эту песню', 'xPlayerVolrefresh')" id="xPlayerVolrefresh1"></div>
	<div class="staticpl_rand" onClick="player.rand()" onMouseOver="myhtml.title('1', 'Случайный порядок', 'xPlayerRand')" id="xPlayerRand1"></div>
	<div class="staticpl_translate" onClick="player.translate()" onMouseOver="myhtml.title('1', 'Транслировать на мою страницу', 'xPlayerTranslate')" id="xPlayerTranslate1"></div>
	<div class="clear"></div>
 </div>

<!-- <div class="search_form_tab" style="margin-top:-9px">
 <div class="buttonsprofile albumsbuttonsprofile buttonsprofileSecond" style="height:22px">
  <div class="buttonsprofileSec"><a href="/audio{uid}" onClick="Page.Go(this.href); return false;"><div><b>Все аудиозаписи</b></div></a></div>
  [owner]<a href="/audio{uid}" onClick="audio.addBoxComp(); return false;"><div><b>Добавить аудиозапись</b></div></a>[/owner]
  <a href="/u{uid}" onClick="Page.Go(this.href); return false;"><div><b>[not-owner]К странице {name}[/not-owner][owner]К моей странице[/owner]</b></div></a>
 </div>
</div> -->

 <div class="staticpl_seachbg">
	<img src="{theme}/images/loading_mini.gif" class="fl_r no_display" id="jQpLoad" style="margin-left:525px;margin-top:13px;position:absolute" />
	<input type="text" value="Поиск" class="fave_input" 
	onBlur="if(this.value==''){this.value='Поиск';this.style.color = '#c1cad0'}" 
	onFocus="if(this.value=='Поиск'){this.value='';this.style.color = '#000'}" 
	onKeyUp="player.gSearch();"
	id="jQpSeachVal"
	maxlength="70" />
	<div id="jQpaddbutpos">
		<div class="jQpnewloadbut" onClick="audio.addBoxComp()" onMouseOver="myhtml.title('1', 'Добавить аудиозапись', 'jqploadbut', -2)" id="jqploadbut1">
			<div class="staticpl_addmylisy staticpl_addmylisy_white"></div>
		</div>
	</div>
	<div class="clear"></div>
 </div>

<div class="staticpl_audios" style="display:none;">
	 <div id="jQaudios"></div>
</div>

<div class="music_none_content">
	<div class="margin_top_10"></div>
	<!-- <div class="allbar_title">[owner]У Вас еще нет аудиозаписей[/owner][not-owner]Нет аудиозаписей[/not-owner]</div> -->
	<div class="info_center"><br /><br /><br />
		[owner]
		<center><img src="{theme}/images/snone.png" style="marign-bottom:60px;margin-top:-80px" /></center>
		Здесь Вы можете хранить Ваши аудиозаписи.<br />
		Для того, чтобы загрузить Вашу первую аудиозапись, <a href="/audio{uid}" onClick="audio.addBoxComp(); return false;">нажмите здесь</a>.[/owner]
		[not-owner]У пользователя ещё нет аудиозаписей.[/not-owner]<br /><br /><br /><br />
	</div>
</div>