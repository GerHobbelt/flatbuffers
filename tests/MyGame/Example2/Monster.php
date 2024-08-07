<?php
// automatically generated by the FlatBuffers compiler, do not modify

declare(strict_types=1);

namespace MyGame\Example2;

use \Google\FlatBuffers\Constants;
use \Google\FlatBuffers\Struct;
use \Google\FlatBuffers\Table;
use \Google\FlatBuffers\ByteBuffer;
use \Google\FlatBuffers\FlatbufferBuilder;

class Monster extends Table
{
    /**
     * @param ByteBuffer $bb
     * @return Monster
     */
    public static function getRootAsMonster(ByteBuffer $bb): Monster
    {
        $obj = new Monster();
        return $obj->init($bb->followUOffset($bb->getPosition()), $bb);
    }

    public static function MonsterIdentifier()
    {
        return "MONS";
    }

    public static function MonsterBufferHasIdentifier(ByteBuffer $buf)
    {
        return self::__has_identifier($buf, self::MonsterIdentifier());
    }

    public static function MonsterExtension()
    {
        return "mon";
    }

    /**
     * @param NPosT $_i offset
     * @param ByteBuffer $_bb
     * @return Monster
     **/
    public function init(int $_i, ByteBuffer $_bb): Monster
    {
        $this->bb_pos = $_i;
        $this->bb = $_bb;
        return $this;
    }

    /**
     * @param FlatbufferBuilder $builder
     */
    public static function startMonster(FlatbufferBuilder $builder): void
    {
        $builder->StartObject(0);
    }

    /**
     * @param FlatbufferBuilder $builder
     * @return WPosT
     */
    public static function createMonster(FlatbufferBuilder $builder, ): int
    {
        $builder->startObject(0);
        $o = $builder->endObject();
        return $o;
    }

    /**
     * @param FlatbufferBuilder $builder
     * @return WPosT table offset
     */
    public static function endMonster(FlatbufferBuilder $builder): int
    {
        $o = $builder->endObject();
        return $o;
    }
}
