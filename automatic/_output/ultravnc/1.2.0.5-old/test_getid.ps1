[void]([Reflection.Assembly]::LoadWithPartialName("System.Web"))
$url = 'http://www.uvnc.com/component/jdownloads/summary/4/45.html'
$webReq = [Net.HttpWebRequest]::Create("$url")
$webReq.Method = "GET"

$webRes = $webReq.GetResponse()
$sr = New-Object IO.StreamReader($webRes.GetResponseStream(), $webRes.ContentEncoding)
$content = $sr.ReadToEnd()
$sr.Close()
$webRes.Close()

#echo $content
if($content -match '<form action="(\/component\/jdownloads\/[\/\-0-9a-z]+\.html)"')
{
     echo "$($matches[1])"
}
if($content -match '<input type="hidden" name="([0-9a-z]+)" value="1" />')
{
     echo "$($matches[1])"
}
