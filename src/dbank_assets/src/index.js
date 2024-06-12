import { dbank } from "../../declarations/dbank"

window.addEventListener("load",async function(){
  console.log("Loaded")
  const current =await dbank.checkBalance()
  console.log(current)
  this.document.getElementById('value').innerHTML = current
})