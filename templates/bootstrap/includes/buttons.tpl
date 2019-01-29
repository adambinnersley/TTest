{strip}
<div class="col-md-12" id="buttons">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="row-eq-height">
                    <div class="col-xs-3">
                        {if $previous_question}
                        <div class="btn btn-theory prevquestion {$previous_question.class}" id="{$previous_question.id}">
                            <span class="fa fa-{$previous_question.icon} fa-fw btn-icon"></span>
                            <span class="hidden-xs btn-text"> {$previous_question.text}</span>
                        </div>
                        {else}
                        <div class="noprev"></div>
                        {/if}
                    </div>
                    <div class="col-xs-3">
                        <div class="btn btn-theory {$flag_question.class}">
                            <span class="fa fa-{$flag_question.icon} fa-fw btn-icon"></span>
                            <span class="hidden-xs btn-text"> {$flag_question.text}</span>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="btn btn-theory {$review.class}">
                            <span class="fa fa-{$review.icon} fa-fw btn-icon"></span>
                            <span class="hidden-xs btn-text"> {$review.text}</span>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        {if $previous_question}
                        <div class="btn btn-theory nextquestion {$next_question.class}" id="{$next_question.id}">
                            <span class="fa fa-{$next_question.icon} fa-fw btn-icon"></span>
                            <span class="hidden-xs btn-text"> {$next_question.text}</span>
                        </div>
                        {/if}
                    </div>
                    {include file="includes/extra.tpl"}
                </div>
            </div>
        </div>
    </div>
</div>
{/strip}