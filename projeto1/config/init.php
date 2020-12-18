<?php
    // init database first: sqlite3 -init bdregional.sql bdregional.db
  $dbh = new PDO('sqlite:./sql/bdregional.db');
  $dbh->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
  $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>