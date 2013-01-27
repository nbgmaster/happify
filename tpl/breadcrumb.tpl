
{if $section == "da_scale"}<strong>Dysfunctional Attitude Scale</strong>{/if}  
{if $section == "bd_scale"}<strong>Burns Depression Scale</strong>{/if} 
{if $section == "distorted_thoughts"}<strong>Distorted Thoughts</strong>{/if} 
{if $section == "goals"}<strong>My Goals</strong>{/if} 

{if isset($section)}

&raquo; <a href="{$root_dir}{$module}/{if $section != '' AND $section != 'index'}{$section}/{/if}{if $section == 'index' || $subsection != ''}index.html{/if}">Overview</a>

<p>&nbsp;</p>{/if}
