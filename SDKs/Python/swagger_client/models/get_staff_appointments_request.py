# coding: utf-8

"""
    MINDBODY Public API

    No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)  # noqa: E501

    OpenAPI spec version: v6
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


import pprint
import re  # noqa: F401

import six


class GetStaffAppointmentsRequest(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    """

    """
    Attributes:
      swagger_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    swagger_types = {
        'appointment_ids': 'list[int]',
        'location_ids': 'list[int]',
        'start_date': 'datetime',
        'end_date': 'datetime',
        'staff_ids': 'list[int]',
        'client_ids': 'list[str]',
        'limit': 'int',
        'offset': 'int'
    }

    attribute_map = {
        'appointment_ids': 'AppointmentIds',
        'location_ids': 'LocationIds',
        'start_date': 'StartDate',
        'end_date': 'EndDate',
        'staff_ids': 'StaffIds',
        'client_ids': 'ClientIds',
        'limit': 'Limit',
        'offset': 'Offset'
    }

    def __init__(self, appointment_ids=None, location_ids=None, start_date=None, end_date=None, staff_ids=None, client_ids=None, limit=None, offset=None):  # noqa: E501
        """GetStaffAppointmentsRequest - a model defined in Swagger"""  # noqa: E501

        self._appointment_ids = None
        self._location_ids = None
        self._start_date = None
        self._end_date = None
        self._staff_ids = None
        self._client_ids = None
        self._limit = None
        self._offset = None
        self.discriminator = None

        if appointment_ids is not None:
            self.appointment_ids = appointment_ids
        if location_ids is not None:
            self.location_ids = location_ids
        if start_date is not None:
            self.start_date = start_date
        if end_date is not None:
            self.end_date = end_date
        if staff_ids is not None:
            self.staff_ids = staff_ids
        if client_ids is not None:
            self.client_ids = client_ids
        if limit is not None:
            self.limit = limit
        if offset is not None:
            self.offset = offset

    @property
    def appointment_ids(self):
        """Gets the appointment_ids of this GetStaffAppointmentsRequest.  # noqa: E501

        A list of the requested appointment IDs.  # noqa: E501

        :return: The appointment_ids of this GetStaffAppointmentsRequest.  # noqa: E501
        :rtype: list[int]
        """
        return self._appointment_ids

    @appointment_ids.setter
    def appointment_ids(self, appointment_ids):
        """Sets the appointment_ids of this GetStaffAppointmentsRequest.

        A list of the requested appointment IDs.  # noqa: E501

        :param appointment_ids: The appointment_ids of this GetStaffAppointmentsRequest.  # noqa: E501
        :type: list[int]
        """

        self._appointment_ids = appointment_ids

    @property
    def location_ids(self):
        """Gets the location_ids of this GetStaffAppointmentsRequest.  # noqa: E501

        A list of the requested location IDs.  # noqa: E501

        :return: The location_ids of this GetStaffAppointmentsRequest.  # noqa: E501
        :rtype: list[int]
        """
        return self._location_ids

    @location_ids.setter
    def location_ids(self, location_ids):
        """Sets the location_ids of this GetStaffAppointmentsRequest.

        A list of the requested location IDs.  # noqa: E501

        :param location_ids: The location_ids of this GetStaffAppointmentsRequest.  # noqa: E501
        :type: list[int]
        """

        self._location_ids = location_ids

    @property
    def start_date(self):
        """Gets the start_date of this GetStaffAppointmentsRequest.  # noqa: E501

        The start date of the requested date range. If omitted, the default is used.   <br />Default: **today’s date**  # noqa: E501

        :return: The start_date of this GetStaffAppointmentsRequest.  # noqa: E501
        :rtype: datetime
        """
        return self._start_date

    @start_date.setter
    def start_date(self, start_date):
        """Sets the start_date of this GetStaffAppointmentsRequest.

        The start date of the requested date range. If omitted, the default is used.   <br />Default: **today’s date**  # noqa: E501

        :param start_date: The start_date of this GetStaffAppointmentsRequest.  # noqa: E501
        :type: datetime
        """

        self._start_date = start_date

    @property
    def end_date(self):
        """Gets the end_date of this GetStaffAppointmentsRequest.  # noqa: E501

        The end date of the requested date range.   <br />Default: **StartDate**  # noqa: E501

        :return: The end_date of this GetStaffAppointmentsRequest.  # noqa: E501
        :rtype: datetime
        """
        return self._end_date

    @end_date.setter
    def end_date(self, end_date):
        """Sets the end_date of this GetStaffAppointmentsRequest.

        The end date of the requested date range.   <br />Default: **StartDate**  # noqa: E501

        :param end_date: The end_date of this GetStaffAppointmentsRequest.  # noqa: E501
        :type: datetime
        """

        self._end_date = end_date

    @property
    def staff_ids(self):
        """Gets the staff_ids of this GetStaffAppointmentsRequest.  # noqa: E501

        List of staff IDs to be returned. Use a value of zero to return all staff appointments.  # noqa: E501

        :return: The staff_ids of this GetStaffAppointmentsRequest.  # noqa: E501
        :rtype: list[int]
        """
        return self._staff_ids

    @staff_ids.setter
    def staff_ids(self, staff_ids):
        """Sets the staff_ids of this GetStaffAppointmentsRequest.

        List of staff IDs to be returned. Use a value of zero to return all staff appointments.  # noqa: E501

        :param staff_ids: The staff_ids of this GetStaffAppointmentsRequest.  # noqa: E501
        :type: list[int]
        """

        self._staff_ids = staff_ids

    @property
    def client_ids(self):
        """Gets the client_ids of this GetStaffAppointmentsRequest.  # noqa: E501

        List of client IDs to be returned.  # noqa: E501

        :return: The client_ids of this GetStaffAppointmentsRequest.  # noqa: E501
        :rtype: list[str]
        """
        return self._client_ids

    @client_ids.setter
    def client_ids(self, client_ids):
        """Sets the client_ids of this GetStaffAppointmentsRequest.

        List of client IDs to be returned.  # noqa: E501

        :param client_ids: The client_ids of this GetStaffAppointmentsRequest.  # noqa: E501
        :type: list[str]
        """

        self._client_ids = client_ids

    @property
    def limit(self):
        """Gets the limit of this GetStaffAppointmentsRequest.  # noqa: E501

        Number of results to include, defaults to 100  # noqa: E501

        :return: The limit of this GetStaffAppointmentsRequest.  # noqa: E501
        :rtype: int
        """
        return self._limit

    @limit.setter
    def limit(self, limit):
        """Sets the limit of this GetStaffAppointmentsRequest.

        Number of results to include, defaults to 100  # noqa: E501

        :param limit: The limit of this GetStaffAppointmentsRequest.  # noqa: E501
        :type: int
        """

        self._limit = limit

    @property
    def offset(self):
        """Gets the offset of this GetStaffAppointmentsRequest.  # noqa: E501

        Page offset, defaults to 0.  # noqa: E501

        :return: The offset of this GetStaffAppointmentsRequest.  # noqa: E501
        :rtype: int
        """
        return self._offset

    @offset.setter
    def offset(self, offset):
        """Sets the offset of this GetStaffAppointmentsRequest.

        Page offset, defaults to 0.  # noqa: E501

        :param offset: The offset of this GetStaffAppointmentsRequest.  # noqa: E501
        :type: int
        """

        self._offset = offset

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value
        if issubclass(GetStaffAppointmentsRequest, dict):
            for key, value in self.items():
                result[key] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, GetStaffAppointmentsRequest):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
