<?php

namespace App\Service\Chain;

use Illuminate\Support\Facades\Cache;

/**
 * Class RedisCacheHandle
 *
 * @package \App\Service\Chain
 */
class RedisCacheHandle extends Handler
{

    public function __construct(Handler $successor)
    {
        parent::__construct($successor);
    }

    function processing()
    {
        // TODO: Implement processing() method.
        $result = Cache::get('hello111');


        if ($result == null) {
            return null;
        }


        return $result;
    }


}