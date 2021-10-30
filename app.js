const expres = require("express")
const app = expres()
app.use(expres.static("public"))
app.set("view engine","ejs")
app.use(expres.urlencoded({extended:true}))
app.use(expres.json())

app.get("/",(req,res)=>{
    res.render("index")
})

app.listen(7000,()=>{
    console.log("The app is running and  stable")
})