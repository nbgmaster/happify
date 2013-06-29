<?php

     $rules        = new SelectEntrys();
     $rules->cols      = "ID, rule, description";
     $rules->table     = $tbl_rules;
     $rules->order     = 'ID DESC';
     $rules->multiSelect     = 1;
     $ay_rules = $rules->row();