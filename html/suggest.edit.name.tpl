<div class='suggest-box container' suggest-id="{$suggestid}">
    <div class="well well-small"><span class='membername_mention'>{$suggested_by->data['membername']}</span> corrected name of <span class='membername_mention'>{$suggested_to->data['membername']}</span>
        <table class="table-condensed ">
            <tr>
                <th>Old Name</th>
                <th>Corrected Name</th>
            </tr>
            <tr>
                <td>
                    <div class="alert alert-error">{$suggested_to->data['membername']}</div>
                </td>
                <td>
                    <div class="alert alert-success">{$newvalue}</div>
                </td>
            </tr>
        </table>
        <p class='suggest_quest'>Is this correct?</p>
    </div>
    {if $approvedonly}
        <div class="row-fluid">
            <div class="span4">
                <span class="suggest_quest">Your Action:</span>
            </div>
            <div class="span4">
                {$userAction}
            </div>
        </div>

        <div class="row-fluid">
            <div class="span4">
                <span class="suggest_quest">Suggestion Result:</span>
            </div>
            <div class="span4">
                {$suggestionResult}
            </div>
        </div>
    {else}
        <div class="row">

            <div class="span4">
                <div class="progress progress-success">
                    <div class="bar" style="width: {$yespercent}%;"></div>
                </div>
            </div>
            <div class="span2">
                <button class="btn btn-success" onclick="suggest_action(this, 1);">Yes</button>
            </div>
        </div>
        <div class="row">
            <div class="span4">
                <div class="progress progress-danger">
                    <div class="bar" style="width: {$nopercent}%;"></div>
                </div>
            </div>
            <div class="span2">
                <button class="btn btn-danger" onclick="suggest_action(this, 0);">No</button>
            </div>
        </div>

        <div class="row">
            <div class="span4">
                <div class="progress progress-info">
                    <div class="bar" style="width: {$dontknowpercent}%;"></div>
                </div>
            </div>
            <div class="span2">
                <button class="btn" onclick="suggest_action(this, 2);">Don't Know</button>
            </div>
        </div>
    {/if}
</div>