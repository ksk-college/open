pragma solidity ^0.4.19;
//
contract BlockSelectionSystem{
    
    
///////////////////////////////////////////////////////////////////////////////////////////    
    //カルテを構造体
    struct patient {
        string name;
        uint age;
        string addres;
        string sex;
        string D_Name;
        uint Number;
    }
    patient[] public Patient;//構造体の配列
///////////////////////////////////////////////////////////////////////////////////////////
    struct hospital {
        string name;
        uint age;
        string addres;
        string sex;
        string D_Name;
        uint Number;
    }
    hospital[] public Hospital;
///////////////////////////////////////////////////////////////////////////////////////////    
    struct pharmacy {
        uint age;
        string sex;
        string D_Name;
    }
    pharmacy[] public Pharmacy;
///////////////////////////////////////////////////////////////////////////////////////////
    struct insurance {
        string name;
        uint age;
        string addres;
        string D_Name;
        uint Number;
    }
    insurance[] public Insurance;
///////////////////////////////////////////////////////////////////////////////////////////    
    //カルテ情報を入力
    function input_data (string _name, uint _age, string _addres, string _sex, string _D_Name, uint _Number) 
     public returns(uint) {
         

        Patient.length++;
        Patient[Patient.length-1].name = _name;
        Patient[Patient.length-1].age = _age;
        Patient[Patient.length-1].addres = _addres;
        Patient[Patient.length-1].sex = _sex;
        Patient[Patient.length-1].D_Name = _D_Name;
        Patient[Patient.length-1].Number = _Number;
        
        
        Hospital.length++;
        Hospital[Hospital.length-1].name = _name;
        Hospital[Hospital.length-1].age = _age;
        Hospital[Hospital.length-1].addres = _addres;
        Hospital[Hospital.length-1].sex = _sex;
        Hospital[Hospital.length-1].D_Name = _D_Name;
        Hospital[Hospital.length-1].Number = _Number;
        
        
        Pharmacy.length++;
        Pharmacy[Pharmacy.length-1].age = _age;
        Pharmacy[Pharmacy.length-1].sex = _sex;
        Pharmacy[Pharmacy.length-1].D_Name = _D_Name;
        
        Insurance.length++;
        Insurance[Insurance.length-1].name = _name;
        Insurance[Insurance.length-1].age = _age;
        Insurance[Insurance.length-1].addres = _addres;
        Insurance[Insurance.length-1].D_Name = _D_Name;
        Insurance[Insurance.length-1].Number = _Number;        
        
        return Insurance.length;
        return Pharmacy.length;
        return Hospital.length;
        return Patient.length;
    }
}