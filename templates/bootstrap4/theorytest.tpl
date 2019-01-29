{strip}
{nocache}
<div class="row">
    <div class="col-lg-10 offset-lg-1 col-12">
        <div class="row">
            <div id="theoryTest" class="w-100">
                <div id="testHeader">
                    <span id="testname">{$test_name}</span> <span id="questiondata">{if $report != 'true'}Q<span class="d-none d-sm-block">uestion </span><span id="qnum">{$question_no}</span> of <span id="totalq">{$no_questions}</span>{/if}</span> {if $report != 'true'}<span id="countdown">Time<span class="d-none d-sm-block"> remaining</span>: <span id="time">57:00</span></span>{/if}
                </div>
                <div id="question">
                    {$question_data}
                </div>
            </div>
        </div>
    </div>
</div>
{/nocache}
{if $report != 'true'}<script type="text/javascript" src="{$js_script_location}testtimer.js"></script>{/if}
{/strip}