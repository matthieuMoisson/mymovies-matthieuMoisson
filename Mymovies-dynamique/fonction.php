<?php
function nettoyer($valeur)
{
	return htmlspecialchars($valeur,ENT_QUOTES,'UTF-8',false);
}
?>