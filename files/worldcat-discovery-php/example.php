<?php

require_once('vendor/autoload.php');

use OCLC\Auth\WSKey;
use OCLC\Auth\AccessToken;
use WorldCat\Discovery\Bib;

$key = 'key';
$secret = 'secret';
$options = array('services' => array('WorldCatDiscoveryAPI', 'refresh_token'));
$wskey = new WSKey($key, $secret, $options);
$accessToken = $wskey->getAccessTokenWithClientCredentials('1094', '1094');

$bib = Bib::Find(7977212, $accessToken);

if (is_a($bib, 'WorldCat\Discovery\Error')) {
   echo $bib->getErrorCode();
   echo $bib->getErrorMessage();
} else {
   echo $bib->getName();
   //print_r($bib->getID());
   echo $bib->getID();
   //print_r($bib->type());
   echo $bib->type();
   //print_r($bib->getAuthor());
   echo $bib->getAuthor()->getName();
   $contributors = array_map(function ($contributor) {
       return $contributor->getName();
   }, $bib->getContributors());
   //print_r($contributors);
}
