{strip}
{combine_script id='tumblr_share' load='footer' path='http://platform.tumblr.com/v1/share.js'}

{if $SOCIALBUTT.TUMBLR.mode=='photo'}
{capture assign="inline_tags"}{foreach from=$related_tags item=tag name=tag_loop}{if !$smarty.foreach.tag_loop.first},{/if}{$tag.name}{/foreach}{/capture}
<a href="http://www.tumblr.com/share/photo?source={$SOCIALBUTT.TUMBLR.source|urlencode}&caption={$SOCIALBUTT.TUMBLR.title|urlencode}{$SOCIALBUTT.TUMBLR.copyright|urlencode}&clickthru={$SOCIALBUTT.share_url|urlencode}&tags={$inline_tags|urlencode}"
{else}
<a href="http://www.tumblr.com/share/link?url={$SOCIALBUTT.share_url|urlencode}&name={$SOCIALBUTT.TUMBLR.title|urlencode}&description={$CONTENT_DESCRIPTION|urlencode}{$SOCIALBUTT.TUMBLR.copyright|urlencode}"
{/if}
style="display:inline-block;text-indent:-9999px;overflow:hidden;{$SOCIALBUTT.TUMBLR.css}background:url('http://platform.tumblr.com/v1/{$SOCIALBUTT.TUMBLR.type}.png') top left no-repeat transparent;">Tumblr</a>
{/strip}