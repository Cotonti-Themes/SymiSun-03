<!-- BEGIN: MAIN -->

			<div id="left">

				<h1>
				<!-- IF {PHP.c} == 'all' -->
				{PHP.themelang.list.all}
				<!-- ELSE -->
				{LIST_CATTITLE}
				<!-- ENDIF -->
				</h1>

				<div class="breadcrumb">{PHP.themelang.list.bread}: <a href="index.php">{PHP.L.Home}</a> {PHP.cfg.separator} {LIST_CATPATH}</div>

				<!-- BEGIN: LIST_ROWCAT -->
				<strong class="rowcat"><a href="{LIST_ROWCAT_URL}"<!-- IF {LIST_ROWCAT_DESC} --> title="{LIST_ROWCAT_DESC}"<!-- ENDIF -->><img src="images/admin/folder.gif" alt="{PHP.L.Section}" /> {LIST_ROWCAT_TITLE}</a></strong> ({LIST_ROWCAT_COUNT}) &nbsp; &nbsp; 
				<!-- END: LIST_ROWCAT -->

				<!-- IF {LIST_TOP_TOTALLINES} > 0 -->
				<p class="right"> {PHP.themelang.list.sort} &nbsp; 
				<strong>{LIST_TOP_DATE} &nbsp; {LIST_TOP_TITLE} &nbsp; {LIST_TOP_COUNT}</strong>
				</p>
				<!-- ELSE -->
				<div class="red mt15">{PHP.themelang.list.none}</div>
				<!-- ENDIF -->

				<!-- IF {PHP.usr.id} == 0 AND {LIST_TOP_TOTALLINES} == 0 -->
				<a href="users.php?m=auth">{PHP.L.Login} {PHP.themelang.forumspost.to} {PHP.L.Submitnew}</a>
				<!-- ENDIF -->
				<!-- IF {PHP.usr.id} > 0 AND {LIST_TOP_TOTALLINES} == 0 -->
				{LIST_SUBMITNEWPAGE}
				<!-- ENDIF -->

				<!-- IF {LISTCAT_PAGNAV} -->
				<div class="pagnav">{LISTCAT_PAGEPREV}{LISTCAT_PAGNAV}{LISTCAT_PAGENEXT}</div>
				<!-- ENDIF -->

				<div class="secrow">&nbsp;</div>
				<!-- IF {LIST_TOP_TOTALLINES} > 0 -->
				<table width="100%" cellspacing="0">
				<!-- ENDIF -->

				<!-- BEGIN: LIST_ROW -->
				<tr class="seccat {LIST_ROW_ODDEVEN}">
					<td class="list-date">{LIST_ROW_DATE}</td>
					<td class="list-title"><a href="{LIST_ROW_URL}">{LIST_ROW_TITLE}</a> <span>{LIST_ROW_FILEICON}</span> {LIST_ROW_DESC}</td>
					<td class="list-comments"><a href="{LIST_ROW_URL}#com">{PHP.pag.page_comcount}</a></td>
					<td class="list-ratings">{LIST_ROW_RATINGS}</td>
					<td class="list-views">{LIST_ROW_COUNT} {PHP.themelang.list.hits}</td>
				</tr>
				<!-- END: LIST_ROW -->

				<!-- IF {LIST_TOP_TOTALLINES} > 0 -->
				</table>
				<!-- ENDIF -->

				<!-- IF {LIST_TOP_PAGINATION} -->
				<div class="paging">{LIST_TOP_PAGEPREV}{LIST_TOP_PAGINATION}{LIST_TOP_PAGENEXT}</div>
				<!-- ENDIF -->

			</div>

		</div>
	</div>

	<div id="right">

		<!-- IF {PHP.usr.id} == 0 -->
		<h3><a href="users.php?m=auth">{PHP.L.Login} {PHP.themelang.forumspost.to} {PHP.L.Submitnew}</a></h3>
		<!-- ELSE -->
		<h3><a href="page.php?m=add">{PHP.L.Submitnew}</a></h3>
		<!-- ENDIF -->

		<h3><a href="{LIST_CAT_RSS}">{PHP.themelang.list.rss}</a></h3>

		<!-- IF {LIST_TAG_CLOUD} != {PHP.L.tags_Tag_cloud_none} -->
		<h3>{LIST_TOP_TAG_CLOUD}</h3>
		<div class="box padding15"> {LIST_TAG_CLOUD} </div>
		<!-- ENDIF -->

		<!-- IF {LIST_TOP_TOTALLINES} != 0 -->
		<h3>{PHP.L.Category} {PHP.L.Entries}</h3>
		<div class="box padding15"> 
			{PHP.L.Page}: <strong>{LIST_TOP_CURRENTPAGE}/{LIST_TOP_TOTALPAGES}</strong><br />
			{PHP.themelang.list.linesperpage}: <strong>{LIST_TOP_MAXPERPAGE}</strong><br />
			{PHP.themelang.list.linesinthissection}: <strong>{LIST_TOP_TOTALLINES}</strong> 
		</div>
		<!-- ENDIF -->

		&nbsp;

	</div>

	<br class="clear" />

<!-- END: MAIN -->