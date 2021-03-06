<?php
/**
 * Appointment
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
 * Appointment Class Doc Comment
 *
 * @category Class
 * @description Contains information about an appointment.
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class Appointment implements ModelInterface, ArrayAccess
{
    const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $swaggerModelName = 'Appointment';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $swaggerTypes = [
        'gender_preference' => 'string',
        'duration' => 'int',
        'provider_id' => 'string',
        'id' => 'int',
        'status' => 'string',
        'start_date_time' => '\DateTime',
        'end_date_time' => '\DateTime',
        'notes' => 'string',
        'staff_requested' => 'bool',
        'program_id' => 'int',
        'session_type_id' => 'int',
        'location_id' => 'int',
        'staff_id' => 'int',
        'client_id' => 'string',
        'first_appointment' => 'bool',
        'client_service_id' => 'int',
        'resources' => '\Swagger\Client\Model\Resource[]'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $swaggerFormats = [
        'gender_preference' => null,
        'duration' => 'int32',
        'provider_id' => null,
        'id' => 'int64',
        'status' => null,
        'start_date_time' => 'date-time',
        'end_date_time' => 'date-time',
        'notes' => null,
        'staff_requested' => null,
        'program_id' => 'int32',
        'session_type_id' => 'int32',
        'location_id' => 'int32',
        'staff_id' => 'int64',
        'client_id' => null,
        'first_appointment' => null,
        'client_service_id' => 'int64',
        'resources' => null
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
        'gender_preference' => 'GenderPreference',
        'duration' => 'Duration',
        'provider_id' => 'ProviderId',
        'id' => 'Id',
        'status' => 'Status',
        'start_date_time' => 'StartDateTime',
        'end_date_time' => 'EndDateTime',
        'notes' => 'Notes',
        'staff_requested' => 'StaffRequested',
        'program_id' => 'ProgramId',
        'session_type_id' => 'SessionTypeId',
        'location_id' => 'LocationId',
        'staff_id' => 'StaffId',
        'client_id' => 'ClientId',
        'first_appointment' => 'FirstAppointment',
        'client_service_id' => 'ClientServiceId',
        'resources' => 'Resources'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'gender_preference' => 'setGenderPreference',
        'duration' => 'setDuration',
        'provider_id' => 'setProviderId',
        'id' => 'setId',
        'status' => 'setStatus',
        'start_date_time' => 'setStartDateTime',
        'end_date_time' => 'setEndDateTime',
        'notes' => 'setNotes',
        'staff_requested' => 'setStaffRequested',
        'program_id' => 'setProgramId',
        'session_type_id' => 'setSessionTypeId',
        'location_id' => 'setLocationId',
        'staff_id' => 'setStaffId',
        'client_id' => 'setClientId',
        'first_appointment' => 'setFirstAppointment',
        'client_service_id' => 'setClientServiceId',
        'resources' => 'setResources'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'gender_preference' => 'getGenderPreference',
        'duration' => 'getDuration',
        'provider_id' => 'getProviderId',
        'id' => 'getId',
        'status' => 'getStatus',
        'start_date_time' => 'getStartDateTime',
        'end_date_time' => 'getEndDateTime',
        'notes' => 'getNotes',
        'staff_requested' => 'getStaffRequested',
        'program_id' => 'getProgramId',
        'session_type_id' => 'getSessionTypeId',
        'location_id' => 'getLocationId',
        'staff_id' => 'getStaffId',
        'client_id' => 'getClientId',
        'first_appointment' => 'getFirstAppointment',
        'client_service_id' => 'getClientServiceId',
        'resources' => 'getResources'
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

    const GENDER_PREFERENCE_NONE = 'None';
    const GENDER_PREFERENCE_FEMALE = 'Female';
    const GENDER_PREFERENCE_MALE = 'Male';
    const STATUS_NONE = 'None';
    const STATUS_REQUESTED = 'Requested';
    const STATUS_BOOKED = 'Booked';
    const STATUS_COMPLETED = 'Completed';
    const STATUS_CONFIRMED = 'Confirmed';
    const STATUS_ARRIVED = 'Arrived';
    const STATUS_NO_SHOW = 'NoShow';
    const STATUS_CANCELLED = 'Cancelled';
    const STATUS_LATE_CANCELLED = 'LateCancelled';
    

    
    /**
     * Gets allowable values of the enum
     *
     * @return string[]
     */
    public function getGenderPreferenceAllowableValues()
    {
        return [
            self::GENDER_PREFERENCE_NONE,
            self::GENDER_PREFERENCE_FEMALE,
            self::GENDER_PREFERENCE_MALE,
        ];
    }
    
    /**
     * Gets allowable values of the enum
     *
     * @return string[]
     */
    public function getStatusAllowableValues()
    {
        return [
            self::STATUS_NONE,
            self::STATUS_REQUESTED,
            self::STATUS_BOOKED,
            self::STATUS_COMPLETED,
            self::STATUS_CONFIRMED,
            self::STATUS_ARRIVED,
            self::STATUS_NO_SHOW,
            self::STATUS_CANCELLED,
            self::STATUS_LATE_CANCELLED,
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
        $this->container['gender_preference'] = isset($data['gender_preference']) ? $data['gender_preference'] : null;
        $this->container['duration'] = isset($data['duration']) ? $data['duration'] : null;
        $this->container['provider_id'] = isset($data['provider_id']) ? $data['provider_id'] : null;
        $this->container['id'] = isset($data['id']) ? $data['id'] : null;
        $this->container['status'] = isset($data['status']) ? $data['status'] : null;
        $this->container['start_date_time'] = isset($data['start_date_time']) ? $data['start_date_time'] : null;
        $this->container['end_date_time'] = isset($data['end_date_time']) ? $data['end_date_time'] : null;
        $this->container['notes'] = isset($data['notes']) ? $data['notes'] : null;
        $this->container['staff_requested'] = isset($data['staff_requested']) ? $data['staff_requested'] : null;
        $this->container['program_id'] = isset($data['program_id']) ? $data['program_id'] : null;
        $this->container['session_type_id'] = isset($data['session_type_id']) ? $data['session_type_id'] : null;
        $this->container['location_id'] = isset($data['location_id']) ? $data['location_id'] : null;
        $this->container['staff_id'] = isset($data['staff_id']) ? $data['staff_id'] : null;
        $this->container['client_id'] = isset($data['client_id']) ? $data['client_id'] : null;
        $this->container['first_appointment'] = isset($data['first_appointment']) ? $data['first_appointment'] : null;
        $this->container['client_service_id'] = isset($data['client_service_id']) ? $data['client_service_id'] : null;
        $this->container['resources'] = isset($data['resources']) ? $data['resources'] : null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        $allowedValues = $this->getGenderPreferenceAllowableValues();
        if (!is_null($this->container['gender_preference']) && !in_array($this->container['gender_preference'], $allowedValues, true)) {
            $invalidProperties[] = sprintf(
                "invalid value for 'gender_preference', must be one of '%s'",
                implode("', '", $allowedValues)
            );
        }

        $allowedValues = $this->getStatusAllowableValues();
        if (!is_null($this->container['status']) && !in_array($this->container['status'], $allowedValues, true)) {
            $invalidProperties[] = sprintf(
                "invalid value for 'status', must be one of '%s'",
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
     * Gets gender_preference
     *
     * @return string
     */
    public function getGenderPreference()
    {
        return $this->container['gender_preference'];
    }

    /**
     * Sets gender_preference
     *
     * @param string $gender_preference The preferred gender of the appointment provider.
     *
     * @return $this
     */
    public function setGenderPreference($gender_preference)
    {
        $allowedValues = $this->getGenderPreferenceAllowableValues();
        if (!is_null($gender_preference) && !in_array($gender_preference, $allowedValues, true)) {
            throw new \InvalidArgumentException(
                sprintf(
                    "Invalid value for 'gender_preference', must be one of '%s'",
                    implode("', '", $allowedValues)
                )
            );
        }
        $this->container['gender_preference'] = $gender_preference;

        return $this;
    }

    /**
     * Gets duration
     *
     * @return int
     */
    public function getDuration()
    {
        return $this->container['duration'];
    }

    /**
     * Sets duration
     *
     * @param int $duration The duration of the appointment.
     *
     * @return $this
     */
    public function setDuration($duration)
    {
        $this->container['duration'] = $duration;

        return $this;
    }

    /**
     * Gets provider_id
     *
     * @return string
     */
    public function getProviderId()
    {
        return $this->container['provider_id'];
    }

    /**
     * Sets provider_id
     *
     * @param string $provider_id If a user has Complementary and Alternative Medicine features enabled, this property indicates the provider assigned to the appointment.
     *
     * @return $this
     */
    public function setProviderId($provider_id)
    {
        $this->container['provider_id'] = $provider_id;

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
     * @param int $id The unique ID of the appointment.
     *
     * @return $this
     */
    public function setId($id)
    {
        $this->container['id'] = $id;

        return $this;
    }

    /**
     * Gets status
     *
     * @return string
     */
    public function getStatus()
    {
        return $this->container['status'];
    }

    /**
     * Sets status
     *
     * @param string $status The status of this appointment.
     *
     * @return $this
     */
    public function setStatus($status)
    {
        $allowedValues = $this->getStatusAllowableValues();
        if (!is_null($status) && !in_array($status, $allowedValues, true)) {
            throw new \InvalidArgumentException(
                sprintf(
                    "Invalid value for 'status', must be one of '%s'",
                    implode("', '", $allowedValues)
                )
            );
        }
        $this->container['status'] = $status;

        return $this;
    }

    /**
     * Gets start_date_time
     *
     * @return \DateTime
     */
    public function getStartDateTime()
    {
        return $this->container['start_date_time'];
    }

    /**
     * Sets start_date_time
     *
     * @param \DateTime $start_date_time The date and time the appointment is to start.
     *
     * @return $this
     */
    public function setStartDateTime($start_date_time)
    {
        $this->container['start_date_time'] = $start_date_time;

        return $this;
    }

    /**
     * Gets end_date_time
     *
     * @return \DateTime
     */
    public function getEndDateTime()
    {
        return $this->container['end_date_time'];
    }

    /**
     * Sets end_date_time
     *
     * @param \DateTime $end_date_time The date and time the appointment is to end.
     *
     * @return $this
     */
    public function setEndDateTime($end_date_time)
    {
        $this->container['end_date_time'] = $end_date_time;

        return $this;
    }

    /**
     * Gets notes
     *
     * @return string
     */
    public function getNotes()
    {
        return $this->container['notes'];
    }

    /**
     * Sets notes
     *
     * @param string $notes Any notes associated with the appointment.
     *
     * @return $this
     */
    public function setNotes($notes)
    {
        $this->container['notes'] = $notes;

        return $this;
    }

    /**
     * Gets staff_requested
     *
     * @return bool
     */
    public function getStaffRequested()
    {
        return $this->container['staff_requested'];
    }

    /**
     * Sets staff_requested
     *
     * @param bool $staff_requested When `true`, indicates that the staff member was requested specifically by the client.
     *
     * @return $this
     */
    public function setStaffRequested($staff_requested)
    {
        $this->container['staff_requested'] = $staff_requested;

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
     * @param int $program_id The ID of the program to which this appointment belongs.
     *
     * @return $this
     */
    public function setProgramId($program_id)
    {
        $this->container['program_id'] = $program_id;

        return $this;
    }

    /**
     * Gets session_type_id
     *
     * @return int
     */
    public function getSessionTypeId()
    {
        return $this->container['session_type_id'];
    }

    /**
     * Sets session_type_id
     *
     * @param int $session_type_id The ID of the session type of this appointment.
     *
     * @return $this
     */
    public function setSessionTypeId($session_type_id)
    {
        $this->container['session_type_id'] = $session_type_id;

        return $this;
    }

    /**
     * Gets location_id
     *
     * @return int
     */
    public function getLocationId()
    {
        return $this->container['location_id'];
    }

    /**
     * Sets location_id
     *
     * @param int $location_id The ID of the location where this appointment is to take place.
     *
     * @return $this
     */
    public function setLocationId($location_id)
    {
        $this->container['location_id'] = $location_id;

        return $this;
    }

    /**
     * Gets staff_id
     *
     * @return int
     */
    public function getStaffId()
    {
        return $this->container['staff_id'];
    }

    /**
     * Sets staff_id
     *
     * @param int $staff_id The ID of the staff member providing the service for this appointment.
     *
     * @return $this
     */
    public function setStaffId($staff_id)
    {
        $this->container['staff_id'] = $staff_id;

        return $this;
    }

    /**
     * Gets client_id
     *
     * @return string
     */
    public function getClientId()
    {
        return $this->container['client_id'];
    }

    /**
     * Sets client_id
     *
     * @param string $client_id The RSSID of the client who is booked for this appointment.
     *
     * @return $this
     */
    public function setClientId($client_id)
    {
        $this->container['client_id'] = $client_id;

        return $this;
    }

    /**
     * Gets first_appointment
     *
     * @return bool
     */
    public function getFirstAppointment()
    {
        return $this->container['first_appointment'];
    }

    /**
     * Sets first_appointment
     *
     * @param bool $first_appointment When `true`, indicates that this is the client’s first appointment at this site.
     *
     * @return $this
     */
    public function setFirstAppointment($first_appointment)
    {
        $this->container['first_appointment'] = $first_appointment;

        return $this;
    }

    /**
     * Gets client_service_id
     *
     * @return int
     */
    public function getClientServiceId()
    {
        return $this->container['client_service_id'];
    }

    /**
     * Sets client_service_id
     *
     * @param int $client_service_id The ID of the pass on the client’s account that is to pay for this appointment.
     *
     * @return $this
     */
    public function setClientServiceId($client_service_id)
    {
        $this->container['client_service_id'] = $client_service_id;

        return $this;
    }

    /**
     * Gets resources
     *
     * @return \Swagger\Client\Model\Resource[]
     */
    public function getResources()
    {
        return $this->container['resources'];
    }

    /**
     * Sets resources
     *
     * @param \Swagger\Client\Model\Resource[] $resources The resources this appointment is to use.
     *
     * @return $this
     */
    public function setResources($resources)
    {
        $this->container['resources'] = $resources;

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


