<?php

namespace App\Service\Chain;

use Illuminate\Support\Facades\Cache;

/**
 * Class DatabaseCacheHandle
 *
 * @package \App\Service\Chain
 */
class DatabaseCacheHandle extends Handler
{
    public function processing()
    {
        // TODO: Implement processing() method.

        echo 111111111111111111;
        Cache::add('hello111', 'world');

        return 'world';
    }


}