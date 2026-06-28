<?php

use StubsGenerator\Finder;

return Finder::create()
    ->in( array(
        'source/fluent-crm/',
    ) )
    ->notPath( 'vendor' )
    ->notPath( 'libraries' )
    ->notPath( 'assets' )
    ->sortByName( true );
