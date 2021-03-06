<?php
/**
 * SessionType
 *
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */

/**
 * MINDBODY Public API
 *
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: v6
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 * Swagger Codegen version: 2.4.6
 */

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

namespace Swagger\Client\Model;

use \ArrayAccess;
use \Swagger\Client\ObjectSerializer;

/**
 * SessionType Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class SessionType implements ModelInterface, ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $swaggerModelName = 'SessionType';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $swaggerTypes = [
        'type' => 'string',
        'default_time_length' => 'int',
        'id' => 'int',
        'name' => 'string',
        'num_deducted' => 'int',
        'program_id' => 'int',
        'category' => 'string',
        'category_id' => 'int',
        'subcategory' => 'string',
        'subcategory_id' => 'int'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $swaggerFormats = [
        'type' => null,
        'default_time_length' => 'int32',
        'id' => 'int32',
        'name' => null,
        'num_deducted' => 'int32',
        'program_id' => 'int32',
        'category' => null,
        'category_id' => 'int32',
        'subcategory' => null,
        'subcategory_id' => 'int32'
    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function swaggerTypes()
    {
        return self::$swaggerTypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function swaggerFormats()
    {
        return self::$swaggerFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'type' => 'Type',
        'default_time_length' => 'DefaultTimeLength',
        'id' => 'Id',
        'name' => 'Name',
        'num_deducted' => 'NumDeducted',
        'program_id' => 'ProgramId',
        'category' => 'Category',
        'category_id' => 'CategoryId',
        'subcategory' => 'Subcategory',
        'subcategory_id' => 'SubcategoryId'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'type' => 'setType',
        'default_time_length' => 'setDefaultTimeLength',
        'id' => 'setId',
        'name' => 'setName',
        'num_deducted' => 'setNumDeducted',
        'program_id' => 'setProgramId',
        'category' => 'setCategory',
        'category_id' => 'setCategoryId',
        'subcategory' => 'setSubcategory',
        'subcategory_id' => 'setSubcategoryId'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'type' => 'getType',
        'default_time_length' => 'getDefaultTimeLength',
        'id' => 'getId',
        'name' => 'getName',
        'num_deducted' => 'getNumDeducted',
        'program_id' => 'getProgramId',
        'category' => 'getCategory',
        'category_id' => 'getCategoryId',
        'subcategory' => 'getSubcategory',
        'subcategory_id' => 'getSubcategoryId'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$swaggerModelName;
    }

    const TYPE_ALL = 'All';
    const TYPE__CLASS = 'Class';
    const TYPE_ENROLLMENT = 'Enrollment';
    const TYPE_APPOINTMENT = 'Appointment';
    const TYPE_RESOURCE = 'Resource';
    const TYPE_MEDIA = 'Media';
    const TYPE_ARRIVAL = 'Arrival';
    

    
    /**
     * Gets allowable values of the enum
     *
     * @return string[]
     */
    public function getTypeAllowableValues()
    {
        return [
            self::TYPE_ALL,
            self::TYPE__CLASS,
            self::TYPE_ENROLLMENT,
            self::TYPE_APPOINTMENT,
            self::TYPE_RESOURCE,
            self::TYPE_MEDIA,
            self::TYPE_ARRIVAL,
        ];
    }
    

    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['type'] = isset($data['type']) ? $data['type'] : null;
        $this->container['default_time_length'] = isset($data['default_time_length']) ? $data['default_time_length'] : null;
        $this->container['id'] = isset($data['id']) ? $data['id'] : null;
        $this->container['name'] = isset($data['name']) ? $data['name'] : null;
        $this->container['num_deducted'] = isset($data['num_deducted']) ? $data['num_deducted'] : null;
        $this->container['program_id'] = isset($data['program_id']) ? $data['program_id'] : null;
        $this->container['category'] = isset($data['category']) ? $data['category'] : null;
        $this->container['category_id'] = isset($data['category_id']) ? $data['category_id'] : null;
        $this->container['subcategory'] = isset($data['subcategory']) ? $data['subcategory'] : null;
        $this->container['subcategory_id'] = isset($data['subcategory_id']) ? $data['subcategory_id'] : null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        $allowedValues = $this->getTypeAllowableValues();
        if (!is_null($this->container['type']) && !in_array($this->container['type'], $allowedValues, true)) {
            $invalidProperties[] = sprintf(
                "invalid value for 'type', must be one of '%s'",
                implode("', '", $allowedValues)
            );
        }

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets type
     *
     * @return string
     */
    public function getType()
    {
        return $this->container['type'];
    }

    /**
     * Sets type
     *
     * @param string $type Contains the class description session type.
     *
     * @return $this
     */
    public function setType($type)
    {
        $allowedValues = $this->getTypeAllowableValues();
        if (!is_null($type) && !in_array($type, $allowedValues, true)) {
            throw new \InvalidArgumentException(
                sprintf(
                    "Invalid value for 'type', must be one of '%s'",
                    implode("', '", $allowedValues)
                )
            );
        }
        $this->container['type'] = $type;

        return $this;
    }

    /**
     * Gets default_time_length
     *
     * @return int
     */
    public function getDefaultTimeLength()
    {
        return $this->container['default_time_length'];
    }

    /**
     * Sets default_time_length
     *
     * @param int $default_time_length The default amount of time that a session of this type typically lasts.
     *
     * @return $this
     */
    public function setDefaultTimeLength($default_time_length)
    {
        $this->container['default_time_length'] = $default_time_length;

        return $this;
    }

    /**
     * Gets id
     *
     * @return int
     */
    public function getId()
    {
        return $this->container['id'];
    }

    /**
     * Sets id
     *
     * @param int $id This session type’s unique ID.
     *
     * @return $this
     */
    public function setId($id)
    {
        $this->container['id'] = $id;

        return $this;
    }

    /**
     * Gets name
     *
     * @return string
     */
    public function getName()
    {
        return $this->container['name'];
    }

    /**
     * Sets name
     *
     * @param string $name The name of this session type.
     *
     * @return $this
     */
    public function setName($name)
    {
        $this->container['name'] = $name;

        return $this;
    }

    /**
     * Gets num_deducted
     *
     * @return int
     */
    public function getNumDeducted()
    {
        return $this->container['num_deducted'];
    }

    /**
     * Sets num_deducted
     *
     * @param int $num_deducted The number of sessions that this session type deducts from the pricing option used to pay for this type of session.
     *
     * @return $this
     */
    public function setNumDeducted($num_deducted)
    {
        $this->container['num_deducted'] = $num_deducted;

        return $this;
    }

    /**
     * Gets program_id
     *
     * @return int
     */
    public function getProgramId()
    {
        return $this->container['program_id'];
    }

    /**
     * Sets program_id
     *
     * @param int $program_id This session type’s service category ID.
     *
     * @return $this
     */
    public function setProgramId($program_id)
    {
        $this->container['program_id'] = $program_id;

        return $this;
    }

    /**
     * Gets category
     *
     * @return string
     */
    public function getCategory()
    {
        return $this->container['category'];
    }

    /**
     * Sets category
     *
     * @param string $category This session type’s category.
     *
     * @return $this
     */
    public function setCategory($category)
    {
        $this->container['category'] = $category;

        return $this;
    }

    /**
     * Gets category_id
     *
     * @return int
     */
    public function getCategoryId()
    {
        return $this->container['category_id'];
    }

    /**
     * Sets category_id
     *
     * @param int $category_id This session type’s category ID.
     *
     * @return $this
     */
    public function setCategoryId($category_id)
    {
        $this->container['category_id'] = $category_id;

        return $this;
    }

    /**
     * Gets subcategory
     *
     * @return string
     */
    public function getSubcategory()
    {
        return $this->container['subcategory'];
    }

    /**
     * Sets subcategory
     *
     * @param string $subcategory This session type’s subcategory.
     *
     * @return $this
     */
    public function setSubcategory($subcategory)
    {
        $this->container['subcategory'] = $subcategory;

        return $this;
    }

    /**
     * Gets subcategory_id
     *
     * @return int
     */
    public function getSubcategoryId()
    {
        return $this->container['subcategory_id'];
    }

    /**
     * Sets subcategory_id
     *
     * @param int $subcategory_id This session type’s subcategory ID.
     *
     * @return $this
     */
    public function setSubcategoryId($subcategory_id)
    {
        $this->container['subcategory_id'] = $subcategory_id;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed
     */
    public function offsetGet($offset)
    {
        return isset($this->container[$offset]) ? $this->container[$offset] : null;
    }

    /**
     * Sets value based on offset.
     *
     * @param integer $offset Offset
     * @param mixed   $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->container[$offset]);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        if (defined('JSON_PRETTY_PRINT')) { // use JSON pretty print
            return json_encode(
                ObjectSerializer::sanitizeForSerialization($this),
                JSON_PRETTY_PRINT
            );
        }

        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


