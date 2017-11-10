pragma solidity ^0.4.4;

/** @title Eternal storage contract of loosely typed flat store. */
// The contract store a sha3 key and value pairs.
contract EternalStorage {

    /** @dev Constructor */
    function EternalStorage() public {}

    // UInt storage
    mapping(bytes32 => uint) UIntStorage;

    function getUIntValue(bytes32 record) public constant returns (uint) {return UIntStorage[record];}

    function setUIntValue(bytes32 record, uint value) public {UIntStorage[record] = value;}

    function deleteUIntValue(bytes32 record) public {delete UIntStorage[record];}

    // String storage
    // Note that it cannot be returned inside solidity contracts, since it is a dynamic type.
    mapping(bytes32 => string) StringStorage;

    function getStringValue(bytes32 record) public constant returns (string) {return StringStorage[record];}

    function setStringValue(bytes32 record, string value) public {StringStorage[record] = value;}

    function deleteStringValue(bytes32 record) public {delete StringStorage[record];}

    // Address storage
    mapping(bytes32 => address) AddressStorage;

    function getAddressValue(bytes32 record) public constant returns (address) {return AddressStorage[record];}

    function setAddressValue(bytes32 record, address value) public {AddressStorage[record] = value;}

    function deleteAddressValue(bytes32 record) public {delete AddressStorage[record];}

    // Bytes storage
    mapping(bytes32 => bytes) BytesStorage;

    function getBytesValue(bytes32 record) public constant returns (bytes) {return BytesStorage[record];}

    function setBytesValue(bytes32 record, bytes value) public {BytesStorage[record] = value;}

    function deleteBytesValue(bytes32 record) public {delete BytesStorage[record];}

    // Bytes32 storage
    mapping(bytes32 => bytes32) Bytes32Storage;

    function getBytes32Value(bytes32 record) public constant returns (bytes32) {return Bytes32Storage[record];}

    function setBytes32Value(bytes32 record, bytes32 value) public {Bytes32Storage[record] = value;}

    function deleteBytes32Value(bytes32 record) public {delete Bytes32Storage[record];}

    // Bool storage
    mapping(bytes32 => bool) BooleanStorage;

    function getBooleanValue(bytes32 record) public constant returns (bool) {return BooleanStorage[record];}

    function setBooleanValue(bytes32 record, bool value) public {BooleanStorage[record] = value;}

    function deleteBooleanValue(bytes32 record) public {delete BooleanStorage[record];}

    // Int storage
    mapping(bytes32 => int) IntStorage;

    function getIntValue(bytes32 record) public constant returns (int) {return IntStorage[record];}

    function setIntValue(bytes32 record, int value) public {IntStorage[record] = value;}

    function deleteIntValue(bytes32 record) public {delete IntStorage[record];}
}