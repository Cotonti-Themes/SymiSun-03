<!-- BEGIN: MAIN -->

			<div id="left" class="forums">

				<h1>{FORUMS_POSTS_SHORTTITLE}</h1>

				<p class="breadcrumb">{PHP.themelang.list.bread}: {FORUMS_POSTS_PAGETITLE}</p>

				<!-- BEGIN: FORUMS_POSTS_TOPICPRIVATE -->
				<p class="error">{PHP.themelang.forumspost.privatetopic}</p>
				<!-- END: FORUMS_POSTS_TOPICPRIVATE -->

				<!-- IF {FORUMS_POSTS_PAGES} -->
				<div class="paging bbeee">{FORUMS_POSTS_PAGEPREV}{FORUMS_POSTS_PAGES}{FORUMS_POSTS_PAGENEXT}</div>
				<!-- ENDIF -->

				<!-- BEGIN: POLLS_VIEW -->
				{POLLS_TITLE}{POLLS_FORM}
				<!-- END: POLLS_VIEW -->

				<!-- BEGIN: FORUMS_POSTS_ROW -->

				<a name="p{FORUMS_POSTS_ROW_ID}" id="p{FORUMS_POSTS_ROW_ID}"></a>
				<!-- IF {PHP.fp_num} == {PHP.totalposts} -->
				<a name="bottom" id="bottom"></a>
				<!-- ENDIF -->

				<!-- POST -->
				<div class="post">

					<h4 class="ug{FORUMS_POSTS_ROW_MAINGRPID}">{FORUMS_POSTS_ROW_COUNTRYFLAG} {FORUMS_POSTS_ROW_POSTERNAME} 
					<span><!-- IF {FORUMS_POSTS_ROW_USERONLINE} -->{PHP.themelang.forumspost.Onlinestatus1}<!-- ENDIF --></span></h4>
					<span class="postinfo fright"> <strong>{FORUMS_POSTS_ROW_CREATION}</strong> || <a href="forums.php?m=posts&amp;p={FORUMS_POSTS_ROW_ID}#p{FORUMS_POSTS_ROW_ID}">{PHP.themelang.forumspost.permalink}</a> </span> <br class="clear" />

					<!-- User Details -->
					<div class="posusr nou">
						<div class="avatarious"> {FORUMS_POSTS_ROW_AVATAR}
							<div class="avatar_border abs0"></div>
						</div>
						{FORUMS_POSTS_ROW_MAINGRP}<br />{PHP.L.Posts}: {FORUMS_POSTS_ROW_POSTCOUNT}
					</div>

					<!-- Actual Post (A.P.) -->
					<div class="postxt">

						<!-- A.P. 1: the text -->
						<!-- IF {FORUMS_POSTS_ROW_POSTERID} == {PHP.ft_firstposterid} -->
						<div class="postbox-owner">
						<!-- ELSE -->
						<div class="postbox {FORUMS_POSTS_ROW_ODDEVEN}">
						<!-- ENDIF -->
							<div class="padding10">
								{FORUMS_POSTS_ROW_TEXT}
								<!-- IF {FORUMS_POSTS_ROW_UPDATER} -->
								<p>{PHP.themelang.forumspost.updated} {FORUMS_POSTS_ROW_UPDATER}, {PHP.row.fp_updated_ago} {PHP.themelang.forumstopics.ago}.</p>
								<!-- ENDIF -->
							</div>
						</div>

						<!-- A.P. 2: action buttons -->
						<p> &nbsp;
						<!-- IF {FORUMS_POSTS_ROW_POSTERID} == {PHP.usr.id} OR {PHP.usr.isadmin} -->
						<a href="forums.php?m=editpost&amp;s={PHP.s}&amp;q={PHP.q}&amp;p={FORUMS_POSTS_ROW_ID}&amp;x={PHP.sys.xk}" class="more"> <span>{PHP.L.Edit}</span></a> &nbsp; <a href="forums.php?m=posts&amp;a=delete&amp;x={PHP.sys.xk}&amp;s={PHP.s}&amp;q={PHP.q}&amp;p={FORUMS_POSTS_ROW_ID}" class="more"> <span>{PHP.L.Delete}</span></a> &nbsp;
						<!-- ENDIF -->
						<!-- IF {PHP.usr.id} > 0 -->
						<a href="forums.php?m=posts&amp;s={PHP.s}&amp;q={PHP.q}&amp;quote={FORUMS_POSTS_ROW_ID}&amp;n=last#np" class="comm"> <span>{PHP.L.Quote}</span></a> &nbsp;
						<!-- ELSE -->
						<a href="users.php?m=auth" class="comm"><span>{PHP.L.Login} {PHP.themelang.forumspost.to} {PHP.L.Quote}</span></a> &nbsp;
						<!-- ENDIF -->
						</p>

						<!-- A.P. 3: signature -->
						<!-- IF {FORUMS_POSTS_ROW_USERTEXT} != '' -->
						<span class="sig">{FORUMS_POSTS_ROW_USERTEXT}</span>
						<!-- ELSE -->&nbsp;<!-- ENDIF -->

					</div>
					<div class="clear"></div>

				</div>

				<!-- END: FORUMS_POSTS_ROW -->

				<!-- IF {FORUMS_POSTS_PAGES} -->
				<div class="paging" style="margin-top:10px">{FORUMS_POSTS_PAGEPREV}{FORUMS_POSTS_PAGES}{FORUMS_POSTS_PAGENEXT}</div>
				<!-- ENDIF -->

				<!-- BEGIN: FORUMS_POSTS_TOPICLOCKED -->
				<p class="error">{FORUMS_POSTS_TOPICLOCKED_BODY}</p>
				<!-- END: FORUMS_POSTS_TOPICLOCKED -->

				<!-- BEGIN: FORUMS_POSTS_ANTIBUMP -->
				<p class="warning">{FORUMS_POSTS_ANTIBUMP_BODY}</p>
				<!-- END: FORUMS_POSTS_ANTIBUMP -->

				<!-- BEGIN: FORUMS_POSTS_NEWPOST -->
				<h2>{PHP.L.Reply}</h2>
				<!-- BEGIN: FORUMS_POSTS_NEWPOST_ERROR -->
				<p class="error"> {FORUMS_POSTS_NEWPOST_ERROR_MSG} </p>
				<!-- END: FORUMS_POSTS_NEWPOST_ERROR -->
				<form action="{FORUMS_POSTS_NEWPOST_SEND}" method="post">
					<div class="pageadd">{FORUMS_POSTS_NEWPOST_TEXTBOXER}</div>
					<input type="submit" value="{PHP.L.Submit}" class="submit" />
				</form>
				<!-- END: FORUMS_POSTS_NEWPOST -->

			</div>

		</div>
	</div>

	<div id="right">
		<!-- IF {PHP.usr.id} > 0 -->
		<h3><a href="forums.php?m=posts&q={PHP.q}&n=last#np">{PHP.themelang.forumspost.post}</a></h3>
		<!-- ELSE -->
		<h3><a href="users.php?m=auth">{PHP.L.Login} {PHP.themelang.forumspost.to} {PHP.themelang.forumspost.post}</a></h3>
		<!-- ENDIF -->
		<h3><a href="rss.php?c=topics&amp;id={PHP.q}">{PHP.themelang.list.rss}</a></h3>
		<h3>{PHP.themelang.forumspost.jump}<span class="whitee jump">{FORUMS_POSTS_JUMPBOX}</span></h3>
		<!-- IF {PHP.usr.isadmin} -->
		<h3 class="adm">{PHP.themelang.page.admin}</h3>
		<div class="boxa boxb padding15 whitee admin"> {FORUMS_POSTS_SUBTITLE} </div>
		<!-- ENDIF -->
		&nbsp;
	</div>

	<br class="clear" />

<!-- END: MAIN -->