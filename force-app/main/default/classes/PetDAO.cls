public  class PetDAO {
    
    public static Pet__c getPet(Id idPet){
        return [
                SELECT
                    Id, 
                    Especie__c, 
                    DataUltimaVacinacao__c, 
                    DataProximaVacinacao__c
                FROM 
                    Pet__c
                WHERE
                    Id = :idPet
        ];
    }

    public static HistoricoVacinacao__c getDataVac(Id idPet){
        return [
                SELECT
                    Id, 
                    Name, 
                    Local__c, 
                    DataVacinacao__c,
                    Pet__c
                FROM 
                    HistoricoVacinacao__c
                WHERE
                    Pet__c = :idPet
        ];
    }
}