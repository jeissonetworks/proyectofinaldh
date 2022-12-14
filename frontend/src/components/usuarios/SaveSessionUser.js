const SaveSessionUser = (authenticated, user) =>{
    sessionStorage.setItem("authenticated", authenticated);
    sessionStorage.setItem("user",JSON.stringify(user));
}

export default SaveSessionUser