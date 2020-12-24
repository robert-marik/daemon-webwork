echo "

<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">
<html xmlns=\"http://www.w3.org/1999/xhtml\">
<head>
  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />
  <meta http-equiv=\"Content-Style-Type\" content=\"text/css\" />
  <meta name=\"generator\" content=\"pandoc\" />
  <meta name=\"author\" content=\"Robert Mařík\" />
  <style type=\"text/css\">code{white-space: pre;} body {  font-family: \"Open Sans\", Sans-Serif;}</style>
  <script src=\"http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML\" type=\"text/javascript\"></script>

<style>
h1, h2 {    text-align:center; }

a {width:75%; margin:auto; display:block;
  background-color: #0a5028;
  color: white;
  padding-top: 1em ;
  padding-bottom: 1em;
  text-decoration: none;
  text-transform: uppercase;
  text-align: center;
  box-sizing: border-box;
  border-bottom-style:solid;
  border-bottom-color:lightgray;
	 }


</style>

</head>
<body>

<h1>Příkady v systému WeBWorK na samostatné procvičování</h1>


"


IFS=$'\n'       # make newlines the only separator

saveheader=""
for i in `grep '^## ' */*pg`
do
    file=`echo $i| cut -d: -f1`
    header=`echo $i| cut -d/ -f1`
    title=`echo $i | cut -d# -f3`
    if [[ "$header" != "$saveheader" ]];
    then
       echo "<h2> $header </h1>"
       saveheader="$header"
    fi
       
    echo "<a href='http://um.mendelu.cz/webwork2/html2xml?&answersSubmitted=0&sourceFilePath=problems/$file&problemSeed=123&displayMode=MathJax&courseID=daemon&userID=demon&course_password=demonek&outputformat=simpleM&language=cs_CZ' open='ww-procvicovani'>$title</a>"

done

echo "
</html>
</body>"
