pragma solidity ^0.5.0;

contract Certificate {
    struct CertificateData {
        string name;
        string prn;
        string course;
        string issuedDate;
        bytes32 hashCode; 
    }

    CertificateData[] public certificates;

    function addCertificate(
        string memory _name,
        string memory _prn,
        string memory _course,
        string memory _issuedDate
    ) public {
        bytes32 newHashCode = keccak256(abi.encodePacked(_name, _prn, _course, _issuedDate));

        CertificateData memory newCertificate = CertificateData({
            name: _name,
            prn: _prn,
            course: _course,
            issuedDate: _issuedDate,
            hashCode: newHashCode 
        });

        certificates.push(newCertificate);
    }

    function getCertificate(uint256 index) public view returns (
        string memory, string memory, string memory, string memory, bytes32
    ){
        require(index < certificates.length, "Index out of bounds");

        CertificateData memory certificate = certificates[index];

        return (
            certificate.name, certificate.prn, certificate.course, certificate.issuedDate,
            certificate.hashCode
        );
    }

    function checkCertificateMatch(bytes32 _hashCode, string memory _prn) 
    public view returns (bool) {
        for (uint256 i = 0; i < certificates.length; i++) {
            CertificateData memory cert = certificates[i];
            
            if (cert.hashCode == _hashCode && keccak256(abi.encodePacked(cert.prn)) == keccak256(abi.encodePacked(_prn))) {
                return true;                
            }
        }

        return false;
    }

    function getCertificateCount() public view returns (uint256) {
        return certificates.length;
    }
}
