<?php

namespace App\Service\Chain;

/**
 * Class Test
 *
 * @package \App\Service\Chain
 */
class Test
{
    public function test()
    {
        $database = new DatabaseCacheHandle();
        $redis = new RedisCacheHandle($database);

        $r = $redis->handle();
        dd($r);


    }
}