{
  "fallback": "<${executionData.href}|Execution #${executionData.id}> of job <${executionData.job.href}|${executionData.job.name}> has <#if trigger == "start">started<#elseif trigger == "failure">failed<#elseif trigger == "success">succeeded</#if>",
  "pretext": "<${executionData.href}|Execution #${executionData.id}> of job <${executionData.job.href}|${executionData.job.name}> has <#if trigger == "start">started<#elseif trigger == "failure">failed<#elseif trigger == "success">succeeded</#if>",
  "color": "${color}",
  "channel":"${channel}",
<#if (username)?has_content>
  "username": "${username}",
<#else>
   "username": "RunDeck",
</#if>
<#if (icon_url)?has_content>
  "icon_url": "${icon_url}",
<#else>
  "icon_emoji": ":rundeck:",
</#if>
  "fields": [
<#if (executionData.job.username)?has_content>
    {
      "title": "By",
      "value": "${executionData.job.username}",
      "short": true
    },
</#if>
    {
      "title": "Status",
      "value": "${trigger}",
      "short": true
    }
<#if (executionData.job.description)?has_content>
    ,{
      "title": "Description",
      "value": "${executionData.job.description}",
      "short": true
    }
</#if>
<#if (executionData.job.group)?has_content>
    ,{
      "title": "Job Group",
      "value": "${executionData.job.group}",
      "short": true
    }
</#if>
  ]
}