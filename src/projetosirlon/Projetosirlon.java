package projetosirlon;

public class Projetosirlon {
    
    public static void main(String[] args) {
        PessoaDAO pDAO = new PessoaDAO();
        for(Pessoa p : pDAO.listPessoa()){
            System.out.println("NOME: " + p.getNome());
            System.out.println("E-MAIL: " + p.getEmail());
            System.out.println("-------------------------------------------------");
        }
    
//        //Pesoa 1
//        Pessoa p1 = new Pessoa();
//        p1.setEmail("pessoa2@email.com");
//        p1.setNome("Pessoa 2");
//        p1.setSenha(MD5("senha"));
//        p1.setPerfil("cliente");
//        pDAO.insertPessoa(p1);



        
    }
    
    public static String MD5(String md5) {
        try {
            java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
            byte[] array = md.digest(md5.getBytes());
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < array.length; ++i) {
                sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100).substring(1, 3));
            }
            return sb.toString();
        } catch (java.security.NoSuchAlgorithmException e) {
        }
        return null;
    }
    
}
