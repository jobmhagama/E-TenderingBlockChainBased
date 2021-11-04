const expres = require("express")
const { ethers } = require("ethers");
const app = expres()
const fs =require("fs")
app.use(expres.static("public"))
app.set("view engine","ejs")
app.use(expres.urlencoded({extended:true}))
app.use(expres.json())

const address = "0xc1e1672cA2D32907dE377c7d6b092Ac56eF819eE"
const abi = fs.readFileSync(__dirname+"/abi.json")

app.get("/",(req,res)=>{
    res.render("index")
})


app.get("/login",(req,res)=>{

    res.render("auth")
})


app.post("/login",(req,res)=>{

    res.render("panel/index")
})

app.get("/newtender",(req,res)=>{

    res.render("panel/newtender",{address:address,abi:abi})
})

app.get("/registration",(req,res)=>{

    res.render("registration",{address,abi})
})


app.get("/publishtender",(req,res)=>{

    res.render("panel/publishTender",{address:address,abi:abi})
})

app.listen(9000,()=>{
    console.log("The app is running and  stable 7000")
})