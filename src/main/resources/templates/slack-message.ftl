<#assign message="<${executionData.href}|Execution #${executionData.id}> of job <${executionData.job.href}|${executionData.job.name}> has ">
<#if trigger == "start">
    <#assign state="started">
<#elseif trigger == "failure">
    <#assign state="failed">
<#else>
    <#assign state="succeeded">
</#if>
{
  "fallback": "${message}${state}",
  "pretext": "${message}${state}",
  "color": "${color}",
  "channel":"${channel}",
  "username": "${username!"RunDeck"}",
  <#if (icon_url)?has_content>"icon_url": "${icon_url}",<#else>"icon_emoji": ":rundeck:",</#if>
  "fields": [
    {
      "title": "By",
      "value": "${executionData.user}",
      "short": true
    }
<#if (executionData.job.description)?has_content>
    ,{
      "title": "Job Description",
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
<#if (executionData.failedNodeListString)?has_content>
    ,{
      "title": "Failed Nodes",
      "value": "${executionData.failedNodeListString}",
      "short": true
    }
</#if>
<#if (executionData.succeededNodeListString)?has_content>
    ,{
      "title": "Succeded Nodes",
      "value": "${executionData.succeededNodeListString}",
      "short": true
    }
</#if>
<#if (executionData.argstring)?has_content>
    ,{
      "title": "Options",
      "value": "${executionData.argstring}",
      "short": false
    }
</#if>
  ]
}