import React from "react";
const InputComponent = ({
  estado,
  cambiarEstado,
  label,
  placeholder,
  id,
  name,
  type,
  handleChange,
  expresionRegular,
  messageError,

}) => {
  handleChange = (e) => cambiarEstado({ ...estado, campo: e.target.value });

  const validacion = () => {
    if (expresionRegular) {
      if (expresionRegular.test(estado.campo)) {
        cambiarEstado({ ...estado, valido: "true" });
      } else {
        cambiarEstado({ ...estado, valido: "false" });
      }
    }

  };

  return (
    <div>
      <div><label>{label}</label></div>
      <div>
        <input
          id={id}
          name={name}
          data-testid = {id}
          placeholder={placeholder}
          type={type}
          onChange={handleChange}
          onKeyUp={validacion}
          onBlur={validacion}
          valido={estado.valido}
          className={ (estado.valido === "true" || estado.valido===null) ? "" : "error"}
        />
        <p className={(estado.valido === "true" || estado.valido===null) ? "" : "message-error" }>
          {messageError}
        </p>
      </div>
    </div>
  )
};

export default InputComponent;