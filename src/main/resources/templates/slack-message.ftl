{
  "fallback": "<${executionData.href}|Execution> of job <${executionData.job.href}|${executionData.job.name}> has <#if trigger == "start">started<#elseif trigger == "failure">failed<#elseif trigger == "success">succeeded</#if>",
  "pretext": "<${executionData.href}|Execution> of job <${executionData.job.href}|${executionData.job.name}> has <#if trigger == "start">started<#elseif trigger == "failure">failed<#elseif trigger == "success">succeeded</#if>",
  "username": "RunDeck",
  "color": "${color}",
  "channel":"${channel}",
  "icon_emoji": ":rundeck:",

  // Fields are displayed in a table on the message
  "fields": [
    {
      "title": "By",
      "value": "${executionData.context.job.username}",
      "short": true
    },
    {
      "title": "Status",
      "value": "${trigger}",
      "short": true
    }
<#if executionData.job.group?has_content>
    ,{
      "title": "Job Group",
      "value": "${executionData.job.group}",
      "short": true
    }
</#if>
  ]
}