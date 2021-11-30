package br.infnet.edu.cadastropessoa.service;

import br.infnet.edu.cadastropessoa.domain.Endereco;
import br.infnet.edu.cadastropessoa.domain.Pessoa;
import br.infnet.edu.cadastropessoa.repository.EnderecoRepository;
import br.infnet.edu.cadastropessoa.repository.PessoaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Base64;
import java.util.List;
import java.util.Objects;

@Service
public class PessoaService {

    @Autowired
    private PessoaRepository pessoaRepository;

    @Autowired
    private AmazonClientService amazonClientService;

    @Autowired
    private EnderecoRepository enderecoRepository;

    public List<Pessoa> obterLista() {
        return (List<Pessoa>)pessoaRepository.findAll();
    }

    public void incluir(Pessoa pessoa, Endereco endereco, MultipartFile file) {
        pessoa.setArquivo(file.getOriginalFilename());
        amazonClientService.save(file);
        pessoa.setEndereco(endereco);
        enderecoRepository.save(endereco);
        pessoaRepository.save(pessoa);
    }

    public void alterar(Pessoa pessoa, Endereco endereco, MultipartFile file) {
        Pessoa pessoaSalva =  pessoaRepository.findById(pessoa.getId()).orElse(null);
        if(!Objects.isNull(file.getOriginalFilename())) {
            if(!Objects.isNull(pessoaSalva.getArquivo())){
                amazonClientService.delete(pessoaSalva.getArquivo());
            }
            pessoaSalva.setArquivo(file.getOriginalFilename());
            amazonClientService.save(file);
        }
        pessoa.setEndereco(endereco);
        enderecoRepository.save(endereco);
        pessoaRepository.save(pessoa);
    }

    public void excluir(Integer id) {
        pessoaRepository.deleteById(id);
    }

    public Pessoa buscarPorEmail(String email) {
        return pessoaRepository.buscarPorEmail(email);
    }

    public String getImagem(String nomeArquivo) throws IOException {
        File file = amazonClientService.download(nomeArquivo);
        byte[] bytes = Files.readAllBytes(file.toPath());
        return Base64.getEncoder().encodeToString(bytes);
    }
}
