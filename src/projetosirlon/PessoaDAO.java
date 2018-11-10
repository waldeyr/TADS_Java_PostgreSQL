package projetosirlon;

import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PessoaDAO {

    public void insertPessoa(Pessoa p) {
        PreparedStatement pstm = null;
        Connection conn = null;
        String query = "INSERT INTO public.pessoa (email, nome, senha, perfil) VALUES (?,?,?,?)";
        try {
            conn = ConnectionFactory.getConnection();
            pstm = conn.prepareStatement(query);
            pstm.setString(1, p.getEmail());
            pstm.setString(2, p.getNome());
            pstm.setString(3, p.getSenha());
            pstm.setString(4, p.getPerfil());
            pstm.execute();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public List<Pessoa> listPessoa() {
        PreparedStatement pstm = null;
        Connection conn = null;
        ResultSet rset = null;
        List<Pessoa> pessoas = new ArrayList<Pessoa>();
        String query = "SELECT * FROM pessoa";
        try {
            conn = ConnectionFactory.getConnection();
            pstm = conn.prepareStatement(query);
            rset = pstm.executeQuery();
            while (rset.next()) {
                Pessoa p = new Pessoa();
                p.setEmail(rset.getString("email"));
                p.setNome(rset.getString("nome"));
                p.setSenha(rset.getString("senha"));
                p.setPerfil(rset.getString("perfil"));
                pessoas.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return pessoas;
    }

}
