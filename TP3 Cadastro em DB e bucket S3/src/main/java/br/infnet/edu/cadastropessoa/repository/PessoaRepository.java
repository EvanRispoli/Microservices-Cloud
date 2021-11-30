package br.infnet.edu.cadastropessoa.repository;

import br.infnet.edu.cadastropessoa.domain.Pessoa;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PessoaRepository extends CrudRepository<Pessoa, Integer> {
    @Query("from Pessoa p where p.email =:email")
    public Pessoa buscarPorEmail(String email);
}
