package br.infnet.edu.cadastropessoa.service;

import br.infnet.edu.cadastropessoa.domain.Endereco;
import br.infnet.edu.cadastropessoa.repository.EnderecoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EnderecoService {

    @Autowired
    private EnderecoRepository enderecoRepository;

    public void incluir(Endereco endereco) {
        enderecoRepository.save(endereco);
    }

    public void excluir(Integer id) {
        enderecoRepository.deleteById(id);
    }
}
