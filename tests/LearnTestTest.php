<?php
namespace TheoryTest\Tests;

use TheoryTest\Car\LearnTest;

class LearnTestTest extends SetUp {
    
    protected static $learnTest;
    
    public static function setUpBeforeClass() {
        parent::setUpBeforeClass();
        self::$user->login($GLOBALS['LOGIN_EMAIL'], $GLOBALS['LOGIN_PASSWORD']);
        self::$learnTest = new LearnTest(self::$db, self::$template, self::$user);
    }
    
    public function testConnection() {
        $this->markTestIncomplete();
    }
}
