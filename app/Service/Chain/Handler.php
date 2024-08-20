<?php

namespace App\Service\Chain;

/**
 * Class Handler
 *
 * @package \App\Service\Chain
 */
abstract class Handler
{
    private $successor;
    public function __construct(Handler $successor = null)
    {
        $this->successor = $successor;
    }

    final public function handle()
    {
        $result = $this->processing();

        if ($result == null) {
            if ($this->successor != null) {
                $result = $this->successor->handle();
            }
        }

        return $result;
    }

    abstract function processing();
}