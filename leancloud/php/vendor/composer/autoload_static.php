<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitf790ceb21699d130dbb0dd1415acf5cf
{
    public static $prefixLengthsPsr4 = array (
        'L' => 
        array (
            'LeanCloud\\' => 10,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'LeanCloud\\' => 
        array (
            0 => __DIR__ . '/..' . '/leancloud/leancloud-sdk/src/LeanCloud',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitf790ceb21699d130dbb0dd1415acf5cf::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitf790ceb21699d130dbb0dd1415acf5cf::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}