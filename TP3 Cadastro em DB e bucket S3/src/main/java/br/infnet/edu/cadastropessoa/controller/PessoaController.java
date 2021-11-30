package br.infnet.edu.cadastropessoa.controller;

import br.infnet.edu.cadastropessoa.domain.Endereco;
import br.infnet.edu.cadastropessoa.domain.Pessoa;
import br.infnet.edu.cadastropessoa.service.IEnderecoClient;
import br.infnet.edu.cadastropessoa.service.PessoaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Objects;

@Controller
@RequestMapping("pessoa")
public class PessoaController {

    @Autowired
    private IEnderecoClient enderecoClient;

    @Autowired
    private PessoaService pessoaService;

    @GetMapping("/")
    public String telaIndex() {
        return "index";
    }

    @GetMapping("/cep")
    private String telaCep(){
        return "cep";
    }
    @PostMapping("/cep")
    public String pegarCep(Model model, String cep){
        model.addAttribute("endereco", enderecoClient.obterPorCep(cep));
        return "pessoa";
    }

    @PostMapping(value = "/cadastrar")
    public String cadastrar(Pessoa pessoa, Endereco endereco, @RequestPart("imagem") MultipartFile file) {
        pessoaService.incluir(pessoa, endereco, file);
        return "index";
    }

    @PostMapping("/alterar")
    public String alterar(Pessoa pessoa, Endereco endereco, @RequestPart("imagem") MultipartFile file){
        pessoaService.alterar(pessoa, endereco, file);
        return "index";
    }

    @GetMapping("/listar")
    public String listar(Model model){
        model.addAttribute("pessoas", pessoaService.obterLista());
        return "listagem";
    }
    @GetMapping("/pesquisar")
    public String pesquisar(Model model, @RequestParam("email") String email){
        model.addAttribute("pessoa",pessoaService.buscarPorEmail(email));
        return "pesquisa";
    }
    @GetMapping("/resgatardados")
    public String resgatarDados(Model model, @RequestParam("email") String email){
        model.addAttribute("pessoa",pessoaService.buscarPorEmail(email));
        return "alteracao";
    }

    @GetMapping("/perfil")
    public String perfil(Model model, String email) throws IOException {
        Pessoa pessoa = pessoaService.buscarPorEmail(email);
        model.addAttribute("pessoa",pessoaService.buscarPorEmail(email));
        model.addAttribute("imagem", pessoaService.getImagem(pessoa.getArquivo()));
        return "perfil";
    }

}
