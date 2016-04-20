{if $product == 'installment_off'}

{else if $product == 'multiple_product'}
<div class="row">
  <div class="col-xs-12 col-md-6">
      <p class="payment_module">
        <a class="bankwire">
          <img src="{$this_path}veritrans.png" alt="{l s='BCA Installment' mod='veritransbcainstallment'}" /><br/><span>*Please note: {$displayname} payment is only allowed for one product type on your cart (and only if the prduct allow payment by installment)</span>
        </a>
      </p>
  </div>
</div>

{else if $product == 'not_installment'}
<div class="row">
  <div class="col-xs-12 col-md-6">
      <p class="payment_module">
        <a class="bankwire">
          <img src="{$this_path}Veritrans.png" alt="{l s='Pay via Veritrans' mod='veritransbcainstallment'}" height="30px"/><br/><span>*Product doesn't support {$displayname} payment.</span>
        </a>
      </p>
  </div>
</div>

{else if $product == 'below_threshold'}
<div class="row">
  <div class="col-xs-12 col-md-6">
      <p class="payment_module">
        <a class="bankwire">
          <img src="{$this_path}Veritrans.png" alt="{l s='Pay via Veritrans' mod='veritransbcainstallment'}" height="30px"/><br/><span>*Product doesn't support {$displayname} payment, total price is below minimum amount of IDR {$amount_threshold}.</span>
        </a>
      </p>
  </div>
</div>

{else}
<div class="row">
  <div class="col-xs-12 col-md-6">
    <p class="payment_module">
      {if version_compare(Configuration::get('PS_INSTALL_VERSION'), '1.5') == -1}
        <a class="bankwire" href="{$base_dir|cat:'modules/veritransbcainstallment/payment.php'}" title="BCA Installment">
      {else}
        <a class="bankwire" href="{$link->getModuleLink('veritransbcainstallment', 'payment')}" title="BCA Installment">
      {/if}
        <img src="{$this_path}Veritrans.png" alt="{l s='Pay via Veritrans' mod='veritransbcainstallment'}" height="30px"/>
        {$displayname}
      </a>
    </p>  
  </div>
</div>
{/if}