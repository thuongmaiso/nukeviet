<!-- BEGIN: main -->
<!-- BEGIN: data -->
<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr class="center">
				<td style="width:60px;">{LANG.weight}</th>
				<th>{LANG.field_id}</th>
				<th>{LANG.field_title}</th>
				<th>{LANG.field_type}</th>
				<th>{LANG.field_show_register}</th>
				<th>{LANG.field_required}</th>
				<th>{LANG.field_show_profile}</th>
				<th>&nbsp;</th>
			</tr>
		</thead>
		<tbody>
			<!-- BEGIN: loop -->
			<tr>
				<td class="center">
				<select id="id_weight_{ROW.fid}" onchange="nv_chang_field({ROW.fid});">
					<!-- BEGIN: weight -->
					<option value="{WEIGHT.key}"{WEIGHT.selected}>{WEIGHT.title}</option>
					<!-- END: weight -->
				</select></th>
				<th>{ROW.field}</th>
				<th>{ROW.field_lang}</th>
				<th>{ROW.field_type} </th>
				<td class="center"><input type="checkbox" onclick="nv_edit_field({ROW.fid});" {ROW.show_register}/></th>
				<td class="center"><input type="checkbox" onclick="nv_edit_field({ROW.fid});" {ROW.required}/></th>
				<td class="center"><input type="checkbox" onclick="nv_edit_field({ROW.fid});" {ROW.show_profile}/></th>
				<th>
					<em class="icon-edit icon-large">&nbsp;</em> <a href="javascript:void(0);" onclick="nv_edit_field({ROW.fid});">{LANG.field_edit}</a> &nbsp;
					<em class="icon-trash icon-large">&nbsp;</em> <a href="javascript:void(0);" onclick="nv_del_field({ROW.fid})">{LANG.delete}</a>
				</th>
			</tr>
			<!-- END: loop -->
		</tbody>
	</table>
	<!-- END: data -->
	<!-- BEGIN: load -->
	<div id="module_show_list"></div>
	<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.core.css" rel="stylesheet" />
	<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.theme.css" rel="stylesheet" />
	<link type="text/css" href="{NV_BASE_SITEURL}js/ui/jquery.ui.datepicker.css" rel="stylesheet" />
	<script type="text/javascript" src="{NV_BASE_SITEURL}js/jquery/jquery.validate.min.js"></script>
	<script type="text/javascript" src="{NV_BASE_SITEURL}js/language/jquery.validator-{NV_LANG_INTERFACE}.js"></script>
	<script type="text/javascript" src="{NV_BASE_SITEURL}js/ui/jquery.ui.core.min.js"></script>
	<script type="text/javascript" src="{NV_BASE_SITEURL}js/ui/jquery.ui.datepicker.min.js"></script>
	<script type="text/javascript" src="{NV_BASE_SITEURL}js/language/jquery.ui.datepicker-{NV_LANG_INTERFACE}.js"></script>
	<!-- BEGIN: error -->
	<div class="quote">
		<blockquote class="error">
			<p>
				<span>{ERROR}</span>
			</p></blockquote>
	</div>
	<!-- END: error -->
	<form action="{FORM_ACTION}" method="post" id="ffields">
		<table class="tab1">
			<caption> {CAPTIONFORM} </caption>
			<colgroup>
				<col class="w250" />
				<col />
			</colgroup>
			<tbody>
				<!-- BEGIN: field -->
				<tr>
					<th>{LANG.field_id}:</th>
					<th><input class="w100" type="text" value="{DATAFORM.field}" name="field" {DATAFORM.fielddisabled}> {LANG.field_id_note}</th>
				</tr>
				<!-- END: field -->
				<tr>
					<th>{LANG.field_title}</th>
					<th><input class="w350 required" type="text" value="{DATAFORM.title}" name="title"></th>
				</tr>
				<tr>
					<th>{LANG.field_description}:</th>
					<th><textarea cols="60" rows="3" name="description" style="width:350px; overflow: hidden;">{DATAFORM.description}</textarea></th>
				</tr>
				<tr>
					<th>{LANG.field_required}</th>
					<th><input name="required" value="1" type="checkbox" {DATAFORM.required}> {LANG.field_required_note}</th>
				</tr>
				<tr>
					<th>{LANG.field_show_register}</th>
					<th><input name="show_register" value="1" type="checkbox" {DATAFORM.show_register}></th>
				</tr>
				<tr>
					<th>{LANG.field_user_editable}</th>
					<th><input name="user_editable" value="1" type="checkbox" {DATAFORM.user_editable}/></th>
				</tr>
				<tr>
					<th>{LANG.field_user_editable_once}</th>
					<th><input class="" name="user_editable_once" value="1" type="checkbox" {DATAFORM.user_editable_once}></th>
				</tr>
				<tr>
					<th>{LANG.field_show_profile}</th>
					<th><input name="show_profile" value="1" type="checkbox" {DATAFORM.show_profile}></th>
				</tr>
				<tr>
					<th>{LANG.field_type}:</th>
					<th>
					<!-- BEGIN: field_type -->
					<ul style="list-style: none">
						<!-- BEGIN: loop -->
						<li>
							<label for="f_{FIELD_TYPE.key}"> <input type="radio" {FIELD_TYPE.checked} id="f_{FIELD_TYPE.key}" value="{FIELD_TYPE.key}" name="field_type"> {FIELD_TYPE.value}</label>
						</li>
						<!-- END: loop -->
					</ul>{LANG.field_type_note}
					<!-- END: field_type -->
					{FIELD_TYPE_TEXT} </th>
				</tr>
				<tr id="classfields" {DATAFORM.classdisabled}>
					<th>{LANG.field_class}</th>
					<th><input class="w300 validalphanumeric" type="text" value="{DATAFORM.class}" name="class" maxlength="50"></th>
				</tr>
				<tr id="editorfields" {DATAFORM.editordisabled}>
					<th>{LANG.field_size}</th>
					<th>width: <input style="width:50px" type="text" value="{DATAFORM.editor_width}" name="editor_width" maxlength="5"> height: <input style="width:50px" type="text" value="{DATAFORM.editor_height}" name="editor_height" maxlength="5"></th>
				</tr>
			</tbody>
		</table>
		<table class="tab1" id="textfields" {DATAFORM.display_textfields}>
			<caption>{LANG.field_options_text}</caption>
			<colgroup>
				<col class="w250" />
				<col />
			</colgroup>
			<tbody>
				<tr>
					<th>{LANG.field_match_type}</th>
					<th>
					<ul style="list-style: none;">
						<!-- BEGIN: match_type -->
						<li id="li_{MATCH_TYPE.key}">
							<label for="m_{MATCH_TYPE.key}"> <input type="radio" {MATCH_TYPE.checked} id="m_{MATCH_TYPE.key}" value="{MATCH_TYPE.key}" name="match_type"> {MATCH_TYPE.value}</label>
							<!-- BEGIN: match_input -->
							<input type="text" value="{MATCH_TYPE.match_value}" name="match_{MATCH_TYPE.key}" {MATCH_TYPE.match_disabled}>
							<!-- END: match_input -->
						</li>
						<!-- END: match_type -->
					</ul></th>
				</tr>
				<tr>
					<th>{LANG.field_default_value}:</th>
					<th><input class="w300" maxlength="255" type="text" value="{DATAFORM.default_value}" name="default_value"></th>
				</tr>
				<tr id="max_length">
					<th>{LANG.field_min_length}:</th>
					<th><input class="w100 number"type="text" value="{DATAFORM.min_length}" name="min_length"><span style="margin-left: 50px;">{LANG.field_max_length}:</span><input class="w100 number" type="text" value="{DATAFORM.max_length}" name="max_length"></th>
				</tr>
			</tbody>
		</table>
	
		<table class="tab1" id="numberfields" {DATAFORM.display_numberfields}>
			<caption>{LANG.field_options_number}</caption>
			<colgroup>
				<col class="w250" />
				<col />
			</colgroup>
			<tbody>
				<tr>
					<th>{LANG.field_number_type}:</th>
					<th><input type="radio" value="1" name="number_type" {DATAFORM.number_type_1}>{LANG.field_integer} <input type="radio" value="2" name="number_type" {DATAFORM.number_type_2}> {LANG.field_real} </th>
				</tr>
				<tr>
					<th>{LANG.field_default_value}:</th>
					<th><input class="w300 required number" maxlength="255" type="text" value="{DATAFORM.default_value_number}" name="default_value_number"></th>
				</tr>
				<tr>
					<th>{LANG.field_min_length}:</th>
					<th><input class="w100 required number" type="text" value="{DATAFORM.min_number}" name="min_number_length" maxlength="11"><span style="margin-left: 50px;">{LANG.field_max_length}:</span><input class="w100 required number" type="text" value="{DATAFORM.max_number}" name="max_number_length" maxlength="11"></th>
				</tr>
			</tbody>
		</table>
	
		<table class="tab1" id="datefields" {DATAFORM.display_datefields}>
			<caption>{LANG.field_options_date}</caption>
			<colgroup>
				<col class="w250" />
				<col />
			</colgroup>
			<tbody>
				<tr>
					<th>{LANG.field_default_value}:</th>
					<th><label> <input type="radio" value="1" name="current_date" {DATAFORM.current_date_1}> {LANG.field_current_date}</label><label> <input type="radio" value="0" name="current_date" {DATAFORM.current_date_0}> {LANG.field_default_date}</label>&nbsp;<input class="date" style="width:80px" type="text" value="{DATAFORM.default_date}" name="default_date"></th>
				</tr>
				<tr>
					<th>{LANG.field_min_date}:</th>
					<th><input class="datepicker required date" style="width:80px" type="text" value="{DATAFORM.min_date}" name="min_date" maxlength="10"><span style="margin-left: 50px;">{LANG.field_max_date}:</span><input class="datepicker required date" style="width:80px" type="text" value="{DATAFORM.max_date}" name="max_date" maxlength="10"></th>
				</tr>
			</tbody>
		</table>
		<table class="tab1" id="choicetypes" {DATAFORM.display_choicetypes} >
			<colgroup>
				<col class="w250" />
				<col />
			</colgroup>
			<tr>
				<th>{LANG.field_choicetypes_title}</th>
				<th>
				<!-- BEGIN: choicetypes_add -->
				<select name="choicetypes">
					<!-- BEGIN: choicetypes -->
					<option {CHOICE_TYPES.selected} value="{CHOICE_TYPES.key}"> {CHOICE_TYPES.value}</option>
					<!-- END: choicetypes -->
				</select>
				<!-- END: choicetypes_add -->
				<!-- BEGIN: choicetypes_add_hidden -->
				{FIELD_TYPE_SQL}<input type="hidden" name="choicetypes" value="{choicetypes_add_hidden}" />
				<!-- END: choicetypes_add_hidden -->
				</th>
			</tr>
		</table>
		<table class="tab1 center" id="choicesql" {DATAFORM.display_choicesql} >
			<caption>{LANG.field_options_choicesql}</caption>
			<colgroup>
				<col class="w250" />
				<col span="2"/>
			</colgroup>
			<thead>
				<tr>
					<th>{LANG.field_options_choicesql_module}</th>
					<th>{LANG.field_options_choicesql_table}</th>
					<th>{LANG.field_options_choicesql_column}</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th><span id="choicesql_module">&nbsp;</span></th>
					<th><span id="choicesql_table">&nbsp;</span></th>
					<th><span id="choicesql_column">&nbsp;</span></th>
				</tr>
			</tbody>
		</table>
		<table class="tab1" id="choiceitems" {DATAFORM.display_choiceitems} >
			<caption>{LANG.field_options_choice}</caption>
			<colgroup>
				<col class="w250" />
				<col span="3"/>
			</colgroup>
			<thead>
				<tr class="center">
					<th>{LANG.field_number}</th>
					<th>{LANG.Value}</th>
					<th>{LANG.field_text}</th>
					<th>{LANG.field_default_value}</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td colspan="4" ><input style="margin-left: 50px;" type="button" value="{LANG.field_add_choice}" onclick="nv_choice_fields_additem();" /></td>
				</tr>
			</tfoot>
			<tbody>
				<!-- BEGIN: loop_field_choice -->
				<tr class="center">
					<td>{FIELD_CHOICES.number}</td>
					<td><input class="w100 validalphanumeric" type="text" value="{FIELD_CHOICES.key}" name="field_choice[{FIELD_CHOICES.number}]" /></td>
					<td><input class="w350" type="text" value="{FIELD_CHOICES.value}" name="field_choice_text[{FIELD_CHOICES.number}]" /></td>
					<td><input type="radio" {FIELD_CHOICES.checked} value="{FIELD_CHOICES.number}" name="default_value_choice"></td>
				</tr>
				<!-- END: loop_field_choice -->
			</tbody>
	</table>
</div>
	<div style="margin-left: 350px;">
		<input type="hidden" value="{DATAFORM.fid}" name="fid">
		<input type="hidden" value="{DATAFORM.field}" name="fieldid">
		<input class="w150" type="submit" value="{LANG.save}" name="submit">
	</div>
</form>
<script type="text/javascript">
	var items = '{FIELD_CHOICES_NUMBER}';
	function nv_choice_fields_additem() {
		items++;
		var newitem = '<tr class="center">';
		newitem += '	<td>' + items + '</td>';
		newitem += '	<td><input class="w100 validalphanumeric" type="text" value="" name="field_choice[' + items + ']"></td>';
		newitem += '	<td><input clas="w350" type="text" value="" name="field_choice_text[' + items + ']"></td>';
		newitem += '	<td><input type="radio" value="' + items + '" name="default_value_choice"></td>';
		newitem += '	</tr>';
		$('#choiceitems').append(newitem);
	}

	function nv_show_list_field() {
		$('#module_show_list').html('<center><img alt="" src="{NV_BASE_SITEURL}images/load_bar.gif"></center>').load('{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&{NV_NAME_VARIABLE}={MODULE_NAME}&{NV_OP_VARIABLE}=fields&qlist=1&nocache=' + new Date().getTime());
		return;
	}

	function nv_chang_field(fid) {
		var nv_timer = nv_settimeout_disable('id_weight_' + fid, 5000);
		var new_vid = $('#id_weight_' + fid).val();
		$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=fields&nocache=' + new Date().getTime(), 'changeweight=1&fid=' + fid + '&new_vid=' + new_vid, function(res) {
			if (res != 'OK') {
				alert(nv_is_change_act_confirm[2]);
			}
			clearTimeout(nv_timer);
			nv_show_list_field();
		});
		return;
	}

	function nv_del_field(fid) {
		if (confirm(nv_is_del_confirm[0])) {
			$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=fields&nocache=' + new Date().getTime(), 'del=1&fid=' + fid, function(res) {
				if (res == 'OK') {
					nv_show_list_field();
				} else {
					alert(nv_is_del_confirm[2]);
				}
			});
		}
		return false;
	}

	function nv_edit_field(fid) {
		window.location.href = script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=fields&fid=' + fid;
	}

	function nv_load_current_date() {
		if ($("input[name=current_date]:checked").val() == 1) {
			$("input[name=default_date]").attr('disabled', 'disabled');
			$("input[name=default_date]").datepicker("destroy");
		} else {
			$("input[name=default_date]").datepicker({
				showOn : "both",
				dateFormat : "dd/mm/yy",
				changeMonth : true,
				changeYear : true,
				showOtherMonths : true,
				buttonImage : nv_siteroot + "images/calendar.gif",
				buttonImageOnly : true
			});
			$("input[name=default_date]").removeAttr("disabled");
			$("input[name=default_date]").focus();
		}
	}


	$(document).ready(function() {
		if ($("input[name=fid]").val() == 0) {
			nv_show_list_field();
		}
		nv_load_current_date();

		$.validator.addMethod('validalphanumeric', function(str) {
			if (str == '') {
				return true;
			}
			var fieldCheck_rule = /^([a-zA-Z0-9_])+$/;
			return (fieldCheck_rule.test(str) ) ? true : false;
		}, ' required a-z, 0-9, and _ only');

		$('#ffields').validate({
			rules : {
				field : {
					required : true,
					validalphanumeric : true
				}
			}
		});
	});

	$("input[name=field_type]").click(function() {
		var field_type = $("input[name='field_type']:checked").val();
		$("#textfields").hide();
		$("#numberfields").hide();
		$("#datefields").hide();
		$("#choicetypes").hide();
		$("#choiceitems").hide();
		$("#choicesql").hide();
		$("#editorfields").hide();
		if (field_type == 'textbox' || field_type == 'textarea' || field_type == 'editor') {
			if (field_type == 'textbox') {
				$("#li_alphanumeric").show();
				$("#li_email").show();
				$("#li_url").show();
			} else {
				$("#li_alphanumeric").hide();
				$("#li_email").hide();
				$("#li_url").hide();
				if (field_type == 'editor') {
					$("#editorfields").show();
				}
			}
			$("#textfields").show();
		} else if (field_type == 'number') {
			$("#numberfields").show();
		} else if (field_type == 'date') {
			$("#datefields").show();
		} else {
			$("#choicetypes").show();
			$("#textfields").hide();
			$("#numberfields").hide();
			$("#datefields").hide();
			nv_users_check_choicetypes("select[name=choicetypes]");
		}
	});
	$("input[name=required],input[name=show_register]").click(function() {
		if ($("input[name='required']:checked").val() == 1) {
			$("input[name=show_register]").prop("checked", true);
		}
	});
	$("input[name=match_type]").click(function() {
		$("input[name=match_regex]").attr('disabled', 'disabled');
		$("input[name=match_callback]").attr('disabled', 'disabled');
		var match_type = $("input[name='match_type']:checked").val();
		var max_length = $("input[name=max_length]").val();
		if (match_type == 'number') {
			if (max_length == 255) {
				$("input[name=max_length]").val(11);
			}
		} else if (max_length == 11) {
			$("input[name=max_length]").val(255);
		}
		if (match_type == 'regex') {
			$("input[name=match_regex]").removeAttr("disabled");
		} else if (match_type == 'callback') {
			$("input[name=match_callback]").removeAttr("disabled");
		}
	});

	$("input[name=current_date]").click(function() {
		nv_load_current_date();
	});
	$("select[name=choicetypes]").change(function() {
		nv_users_check_choicetypes(this);
	});
	$(".datepicker").datepicker({
		showOn : "both",
		dateFormat : "dd/mm/yy",
		changeMonth : true,
		changeYear : true,
		showOtherMonths : true,
		buttonImage : nv_siteroot + "images/calendar.gif",
		buttonImageOnly : true
	});
	function nv_users_check_choicetypes(elemnet) {
		var choicetypes_val = $(elemnet).val();
		if (choicetypes_val == "field_choicetypes_text") {
			$("#choiceitems").show();
			$("#choicesql").hide();
		} else {
			$("#choiceitems").hide();
			$("#choicesql").show();
			nv_load_sqlchoice('module', '');
		}
	}

	function nv_load_sqlchoice(choice_name_select, choice_seltected) {
		var getval = "";
		if (choice_name_select == "table") {
			var choicesql_module = $("select[name=choicesql_module]").val();
			var module_selected = (choicesql_module == "" || choicesql_module == undefined ) ? '{SQL_DATA_CHOICE.0}' : choicesql_module;
			getval = "&module=" + module_selected;
			$("#choicesql_column").html("");
		} else if (choice_name_select == "column") {
			var choicesql_module = $("select[name=choicesql_module]").val();
			var module_selected = (choicesql_module == "" || choicesql_module == undefined ) ? '{SQL_DATA_CHOICE.0}' : choicesql_module;
			var choicesql_table = $("select[name=choicesql_table]").val();
			var table_selected = (choicesql_table == "" || choicesql_table == undefined ) ? '{SQL_DATA_CHOICE.1}' : choicesql_table;
			getval = "&module=" + module_selected + "&table=" + table_selected;
		}
		$.post(script_name + '?' + nv_name_variable + '=' + nv_module_name + '&' + nv_fc_variable + '=fields&nocache=' + new Date().getTime(), 'choicesql=1&choice=' + choice_name_select + getval + '&choice_seltected=' + choice_seltected, function(res) {
			$('#choicesql_' + choice_name_select).html(res);

		});
	}
</script>
<!-- END: load -->
<!-- BEGIN: nv_load_sqlchoice -->
<script type="text/javascript">
	nv_load_sqlchoice('module', '{SQL_DATA_CHOICE.0}');
	nv_load_sqlchoice('table', '{SQL_DATA_CHOICE.1}');
	nv_load_sqlchoice('column', '{SQL_DATA_CHOICE.2}|{SQL_DATA_CHOICE.3}');
</script>
<!-- END: nv_load_sqlchoice -->
<!-- END: main -->
<!-- BEGIN: choicesql -->
<select onchange="nv_load_sqlchoice( '{choicesql_next}', '' )" name="{choicesql_name}">
	<!-- BEGIN: loop -->
	<option {SQL.sl} value="{SQL.key}">{SQL.val}</option>
	<!-- END: loop -->
</select>
<!-- END: choicesql -->
<!-- BEGIN: column -->
{LANG.field_options_choicesql_key}:
<select name="choicesql_column_key" id="choicesql_column_key">
	<!-- BEGIN: loop1 -->
	<option {SQL.sl_key} value="{SQL.key}">{SQL.val}</option>
	<!-- END: loop1 -->
</select>
{LANG.field_options_choicesql_val}:
<select name="choicesql_column_val" id="choicesql_column_val">
	<!-- BEGIN: loop2 -->
	<option {SQL.sl_val} value="{SQL.key}">{SQL.val}</option>
	<!-- END: loop2 -->
</select>
<!-- END: column -->