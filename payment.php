<?php 

$useSSL = true;

$root_dir = str_replace('modules/veritransbcainstallment', '', dirname($_SERVER['SCRIPT_FILENAME']));

include_once($root_dir.'/config/config.inc.php');
include_once($root_dir.'/header.php');
include_once($root_dir.'/modules/veritransbcainstallment/veritransbcainstallment.php');

if (!$cookie->isLogged(true))
  Tools::redirect('authentication.php?back=order.php');
elseif (!Customer::getAddressesTotalById((int)($cookie->id_customer)))
  Tools::redirect('address.php?back=order.php?step=1');

$veritransBcaInstallment = new VeritransBcaInstallment();
echo $veritransBcaInstallment->execPayment($cart);

include_once($root_dir.'/footer.php');