<div id="video_show_{vid}" class="video_view" onClick="videos.setEvent(event, {owner-id}, '{close-link}', '{go_to_link}')"[get_video_page] style="display:block"[/get_video_page]>
<div class="photo_close" onClick="videos.close({owner-id}, '{close-link}', '{go_to_link}'); return false"></div>
 <div class="video_show_bg">
  <div class="video_show_object">
   <div class="video_show_title">
    <h1>{title}</h1>
    <div><a href="/" onClick="videos.close({owner-id}, '{close-link}', '{go_to_link}'); return false">Закрыть</a></div>
   </div>
    <div id="video_object">
      <iframe width="770" height="420" src="{video}" frameborder="0" allowfullscreen></iframe>
    </div>
   [logged][not-owner]<div id="addok"><a href="/" onClick="videos.addmylist('{vid}'); return false">Добавить в Мои Видеозаписи</a></div>[/not-owner][/logged]
  </div>
  <div class="video_show_panel" id="video_del_info">
   <div class="photo_leftcol video_show_left_col">
    <div class="video_show_descr" id="video_full_descr_{vid}">{descr}</div>
    <div class="video_show_date">Добавлена {date}</div><br />
	[all-comm]<a href="/" onClick="videos.allcomment({vid}, {comm-num}, {owner-id}); return false" id="all_href_lnk_comm"><div class="photo_all_comm_bg" id="all_lnk_comm">Показать {prev-text-comm}</div></a><span id="all_comments"></span>[/all-comm]
	[admin-comments]<span id="comments">{comments}</span>
  [logged]
    <div class="photo_com_title">Ваш комментарий</div>
    <textarea id="comment" class="inpst" style="width:520px;height:70px;margin-bottom:10px;"></textarea>
    <div class="button_div fl_l"><button onClick="videos.addcomment({vid}); return false" id="add_comm">Отправить</button></div>
  [/logged]
  [not-logged]<div class="not_logged_plashka" style="margin-top:5px">
  Пожалуйста, <a href="/" class="login_link">войдите</a> на сайт или <a href="/" class="reg_link">зарегистрируйтесь</a>, чтобы оставить комментарии.</div>[/not-logged]

[/admin-comments]
   </div>
   <div class="photo_rightcol">
    {views}
    Отправитель:<br /><a href="/u{uid}" onClick="Page.Go(this.href); return false">{author}</a><br /><br />
	[logged][public]<div class="menuleft" style="width:220px;">
     [owner]<a href="/" onClick="videos.editbox({vid}); return false"><img class="icon editphoto_ic" src="{theme}/images/spacer.gif" alt="" /><div>Редактировать видеозапись</div></a> 
	 <a href="/" onClick="videos.delet({vid}, 1); return false"><img class="icon del_photo_ic" src="{theme}/images/spacer.gif" alt="" /><div>Удалить видеозапись</div></a>[/owner]
	 [not-owner]<a onClick="Report.Box('video', '{vid}')"><img class="icon compla_ic" src="{theme}/images/spacer.gif" alt="" /><div>Пожаловаться на видеозапись</div></a>[/not-owner]
    </div>[/public][/logged]
   </div>
  <div class="clear"></div>
  </div>
 </div>
</div>