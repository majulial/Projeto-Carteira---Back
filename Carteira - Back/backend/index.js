import express from "express";
import mysql from "mysql";
import cors from"cors";


const app = express();

const db = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"carteira"
})

app.use(express.json());
app.use(cors());


// Get dá página inicial, mostrando o valor atual, a soma da coluna "Entrada" e subtraindo pela coluna "Saida"
app.get("/", (req, res) => {
    const q = "SELECT SUM(entrada) - SUM(saida) AS saldo FROM valores"
    db.query(q,(err, data) => {
        if(err) return res.json(err)
        return res.json(data)
    });
});

// Get da página de Entrada, somando todo o histórico de Entrada. 
app.get("/entrada", (req, res) => {
    const q = "SELECT SUM(entrada)AS historicoDeEntradas FROM valores"
    db.query(q,(err, data) => {
        if(err) return res.json(err)
        return res.json(data)
    });
});

// Get da pagina de Saida, somando todo o histórico de remoção
app.get("/saida", (req, res) => {
    const q = "SELECT SUM(saida)AS historicoDeSaidas FROM valores"
    db.query(q,(err, data) => {
        if(err) return res.json(err)
        return res.json(data)
    });
});


// 1/2 - Comando de 'post' para adicionar dentro da tabela "valores" no meu banco de dados, adicionou um valor 
// na tabela 'entrada' pelo input do frontend.
app.post("/entrada", (req, res) => {
    const q = "INSERT INTO valores (`entrada`) VALUES (?)"
    const values = [
        req.body.valorAdd
    ]

    db.query(q,[values], (err, data) =>{
        if(err) return res.json(err)
        return res.json("Valor adicionado na carteira!")
    });
}); // 2/2


// 1/2 Adicionando conteúdo dentro da coluna SAIDA no banco.
app.post("/saida", (req, res) => {
    const q = "INSERT INTO valores (`saida`) VALUES (?)"
    const values = [
        req.body.valorRemove
    ]

    db.query(q,[values], (err, data) =>{
        if(err) return res.json(err)
        return res.json("Valor removido da carteira!")
    });
}); // 2/2



// Porta 8800 (Rota, "localhost:8800") para abrir no navegador.
app.listen(8800, () => {
    console.log("Backend ON!")
});