$(function() {
  function onChangeUserRole() {
    let duration = 500;
    if ($("#user_role_labo_student").is(':checked')) {
      $("#labo_selecter").show(duration);
    } else {
      $("#labo_selecter").hide(duration);
    }
  }
  // 研究室に所属しているユーザには研究室選択項目を表示
  $("input[name = 'user[role]']").change(onChangeUserRole);
  onChangeUserRole();
});
