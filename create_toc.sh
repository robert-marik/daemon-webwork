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


  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/themes/base/jquery-ui.min.css\">
  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.theme.min.css\">

<link rel=\"stylesheet\" type=\"text/css\" href=\"/webwork2_files/js/vendor/bootstrap/css/bootstrap.css\"/>
<link rel=\"stylesheet\" type=\"text/css\" href=\"/webwork2_files/js/vendor/bootstrap/css/bootstrap-responsive.css\"/>

  
<style>
  h1, h2 {    text-align:center; }

  body {margin:auto;}

a {
  text-decoration: none;
	 }

a:before {content :\"•\";}

</style>

  <script src=\"https://code.jquery.com/jquery-1.12.4.js\"></script>
  <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>
  <script>
  jQuery( function() {
    jQuery( \"#accordion\" ).accordion({heightStyle: 'content'});
  } );
  
  </script>


</head>
<body>

<div class='container'>
<h1>Příklady v systému WeBWorK na samostatné procvičování</h1>

Kliknutím na nadpis pro skupinu příkladů otevřete příslušnou skupinu a poté si můžete vybrat příkad. Některé příklady znáte z domácích úloh, některé vznikly pro důkladnější procvičení ve zkouškovém, některé vznikly pro zařazení nových příkladů do písemky.

<div id=\"accordion\">
"


declare -A MYMAP
MYMAP[derivace_vypocet]="Derivace - výpočet"
MYMAP[derivace_pouziti]="Derivace - využití"
MYMAP[integraly_vypocet]="Integrál - výpočet"
MYMAP[integraly_pouziti]="Integrál - využití"
MYMAP[diferencialni_rovnice]="Diferencialni rovnice"
MYMAP[vektory]="Vektory"
MYMAP[matice]="Matice"
MYMAP[difuzni_rce]="Difuzní rovnice"
MYMAP[vlastni_cisla]="Vlastní čísla a vektory"
MYMAP[precalculus]="Funkce"
MYMAP[parcialni_derivace]="Parciální derivace"
MYMAP[gradient]="Gradient"
MYMAP[krivkovy_integral]="Křivkový integrál"
MYMAP[dvojny_integral]="Dvojný integrál"

saveheader=""
for j in precalculus derivace_vypocet derivace_pouziti integraly_vypocet integraly_pouziti diferencialni_rovnice vektory matice vlastni_cisla parcialni_derivace gradient difuzni_rce dvojny_integral krivkovy_integral
do
    echo "<h3>${MYMAP[$j]}</h3><div>"
    for i in `grep '^## ' $j/*.pg | sed 's/ /_/g'`
    do
	file=`echo $i| cut -d: -f1`
	title=`echo $i | cut -d# -f3 | sed 's/_/ /g'`
	echo "<a href='http://um.mendelu.cz/webwork2/html2xml?&answersSubmitted=0&sourceFilePath=problems/$file&problemSeed=123&displayMode=MathJax&courseID=daemon&userID=demon&course_password=demonek&outputformat=simpleM&language=cs_CZ' open='ww-procvicovani'>$title</a>"
    done
    echo "</div>"
done
	 
echo "</div></div></div>
</html>
</body>"
