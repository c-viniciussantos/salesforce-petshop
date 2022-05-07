public class EmailDAO {
    
    public static OrgWideEmailAddress getIdEmailOrg(String email){
        
        return [
            SELECT 
                Id,
                DisplayName
            FROM 
                OrgWideEmailAddress 
            WHERE 
                Address = :email 
            LIMIT 1
        ];
    }

    public static EmailTemplate getIdEmailTemplate(String nomeModelo){

        return [
            SELECT 
                Id, 
                Name,
                htmlValue,
                Subject
            FROM 
                EmailTemplate
            WHERE 
                Name = :nomeModelo
            LIMIT 1
        ];
    } 
}