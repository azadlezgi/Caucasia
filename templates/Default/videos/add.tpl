<script type="text/javascript">$('#box_but').css('display', 'none');</script>
<div class="videos_pad">
 <div class="videos_text">Ссылка на видеоролик</div>
 <input type="text" class="videos_input" id="video_lnk" onKeyUp="videos.load()" style="margin-bottom:5px" />
 <span id="vi_info">
  <span id="no_serviece">
    Видеосервис не поддерживается либо ссылка является неправильной<br />
    <i>https://www.youtube.com/watch?v=KkdiMJwFQKY</i><br />
    <i>http://rutube.ru/video/95fdb56bc63a3610221e10cb20c4ec97/</i><br />
    <i>https://vimeo.com/28701971</i><br />
    <i>http://smotri.com/video/view/?id=v2412062dd85</i><br />
  </span>
  Поддерживаемые видеосервисы:
  <a href="https://www.youtube.com/results?search_query=%D0%9B%D0%B5%D0%B7%D0%B3%D0%B8" target="_blank" rel="nofollow"><b>YouTube</b></a>,
  <a href="http://rutube.ru/search/?query=%D0%9B%D0%B5%D0%B7%D0%B3%D0%B8" target="_blank" rel="nofollow"><b>RuTube.Ru</b></a>,
  <a href="https://vimeo.com/search?q=lezgi" target="_blank" rel="nofollow"><b>Vimeo.Com</b></a>,
  <a href="http://smotri.com/search/quick/?type_search=1&q=Lezgi" target="_blank" rel="nofollow"><b>Smotri.Com</b></a>
 </span>
 <div id="result_load" class="no_display">
  <br />
  <div class="videos_text">Изображение</div>
  <div id="photo" class="videos_res_photos"></div>
  <div class="clear"></div>
  <div class="videos_text">Название</div>
  <input type="text" class="videos_input" id="title" maxlength="65" />
  <div class="videos_text">Описание</div>
  <textarea class="videos_input" id="descr" style="height:70px"></textarea>
  <input type="hidden" id="good_video_lnk" />
  <div class="clear"></div>
  <div class="fl_l" style="padding:3px">Кто может смотреть это видео?</div>
  <div class="sett_privacy" onClick="settings.privacyOpen('privacy')" id="privacy_lnk_privacy">Все пользователи</div>
  <div class="sett_openmenu no_display" id="privacyMenu_privacy" style="margin-top:-1px;margin-left:166px">
   <div id="selected_p_privacy_lnk_privacy" class="sett_selected" onClick="settings.privacyClose('privacy')">Все пользователи</div>
   <div class="sett_hover" onClick="settings.setPrivacy('privacy', 'Все пользователи', '1', 'privacy_lnk_privacy')">Все пользователи</div>
   <div class="sett_hover" onClick="settings.setPrivacy('privacy', 'Только друзья', '2', 'privacy_lnk_privacy')">Только друзья</div>
   <div class="sett_hover" onClick="settings.setPrivacy('privacy', 'Только я', '3', 'privacy_lnk_privacy')">Только я</div>
  </div>
  <input type="hidden" id="privacy" value="1" />
 </div>
</div>
<div class="clear"></div>