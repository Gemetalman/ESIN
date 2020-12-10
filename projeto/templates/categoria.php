<section id="hospitais">
  <h2>list_Hospitais</h2>
  <ul>
    <?php foreach ($hospitais as $hospital) { ?>
      <li>
        <a href="list_Hospitais.php?id=<?=$hospital['id']?>">
          <?=$hospital['nome']?>
        </a>
      </li>
    <?php } ?>
  </ul>
</section>