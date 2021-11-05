const expres = require("express")
const { ethers } = require("ethers");
const app = expres()
const fs =require("fs")
app.use(expres.static("public"))
app.set("view engine","ejs")
app.use(expres.urlencoded({extended:true}))
app.use(expres.json())

const address = "0xDf742649D20D978a00C9D54aE3BDDb39335Fe89C"
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

app.get("/tenderevaluation",(req,res)=>{

    res.render("panel/tenderEvaluation",{address,abi})
})

app.get("/awardcontract",(req,res)=>{

    res.render("panel/tenderEvaluation",{address,abi})
})

app.get("/activetenders",(req,res)=>{

    res.render("panel/activeTenders",{address,abi})
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