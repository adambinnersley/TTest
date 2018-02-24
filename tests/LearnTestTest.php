<?php
namespace TheoryTest\Tests;

use DBAL\Database;
use Smarty;
use TheoryTest\Car\User;
use TheoryTest\Car\LearnTest;
use PHPUnit\Framework\TestCase;

class LearnTestTest extends TestCase{
    
    protected static $db;
    protected static $user;
    protected static $template;
    protected static $learnTest;
    
    public static function setUpBeforeClass() {
        self::$db = new Database($GLOBALS['DB_HOST'], $GLOBALS['DB_USER'], $GLOBALS['DB_PASSWD'], $GLOBALS['DB_DBNAME']);
        if(!self::$db->isConnected()){
             $this->markTestSkipped(
                'No local database connection is available'
            );
        }
        self::$db->query(dirname(dirname(__FILE__)).'/database/database_mysql.sql');
        self::$db->query(dirname(dirname(__FILE__)).'/vendor/adamb/user/database/database_mysql.sql');
        self::$db->query(dirname(__FILE__).'/sample_data/data.sql');
        self::$template = new Smarty();
        self::$user = new User(self::$db);
        self::$learnTest = new LearnTest(self::$db, self::$template, self::$user);
    }
    
    public function tearDown() {
        unset(self::$db);
        unset(self::$template);
        unset(self::$user);
        unset(self::$learnTest);
    }
    
    public function testConnection() {
        $this->markTestIncomplete();
    }
}
