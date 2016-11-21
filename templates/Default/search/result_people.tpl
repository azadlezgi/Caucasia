<div class="friends_onefriend width_100 fl_l search_people_res">
 <a href="/u{user-id}" onClick="Page.Go(this.href); return false"><div class="friends_ava"><img src="{ava}" alt="" /></div></a>
 <div class="fl_l" style="width:400px">
  <a href="/u{user-id}" onClick="Page.Go(this.href); return false"><b>{name}</b></a><div class="friends_clr"></div>
  {country}{city}<div class="friends_clr"></div>
  {age}<div class="friends_clr"></div>
  <span class="online">{online}</span><div class="friends_clr"></div>

[no-friends][blacklist]<a href="/" onClick="friends.add({user-id}); return false"><img class="icon addfr_ic" src="{theme}/images/spacer.gif" alt="" /><div>Добавить в друзья</div></a>[/blacklist][/no-friends]
[yes-friends]<a href="/" onClick="friends.delet({user-id}, 1); return false"><img class="icon del_friends" src="{theme}/images/spacer.gif" alt="" /><div>Убрать из друзей</div></a>[/yes-friends]

 </div>
</div>
<!-- <div class="fl_r search_r_bg"></div> -->