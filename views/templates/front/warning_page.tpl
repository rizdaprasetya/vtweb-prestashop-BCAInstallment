<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Redirecting to Veritrans...</title>
</head>
<body>
  <div class="box cheque-box">
    <h3 class="page-subheading">Warning</h3>
    {if $smarty.get.message == 1}
      <p> Sorry, we are unable to proceed your transaction with installment.<br>
        Transaction with installment is only allowed for one product type on your cart.<br><br>
      </p>
    {/if}
    
    {if $smarty.get.message >= 2}
      <p> <strong>Sorry, we are unable to proceed your transaction with installment.</strong><br>
        Transaction with installment is only allowed for transaction with minimum amount of IDR <strong>{$smarty.get.message}</strong> <br><br>
      </p>
    {/if}

    <a class="exclusive_large" href="{$smarty.get.redirlink}">Click here to continue with credit card full payment</a>

  </div>
</body>
</html>

  