const endpoint = `${process.env.REACT_APP_SERVER_URL}/authenticate`
const method = 'post'
const headers = {
                    'Accept': '*/*',
                    'Content-Type': 'application/json'
                }


const Authenticate = async (email, password)=>{
    let data = await fetch(endpoint, {
        method: method,
        headers: headers,
        body: JSON.stringify( {
            "username": email,
            "password": password
        })
    })
    
    let jsonResponse = data.json()
    return jsonResponse
}
export default Authenticate