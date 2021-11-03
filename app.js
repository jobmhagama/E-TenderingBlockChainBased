const expres = require("express")
const { ethers } = require("ethers");
const app = expres()
app.use(expres.static("public"))
app.set("view engine","ejs")
app.use(expres.urlencoded({extended:true}))
app.use(expres.json())

app.get("/",(req,res)=>{
    res.render("index")
})


app.get("/login",(req,res)=>{

    res.render("auth")
})


app.post("/login",(req,res)=>{

    res.render("panel/index")
})


app.get("/registration",(req,res)=>{
    res.render("registration",{ether:ethers})
})
app.listen(7000,()=>{
    console.log("The app is running and  stable 7000")
})