package com.dh.proyectointegrador.DigitalBooking.exceptions;


import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MissingRequestHeaderException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.io.IOException;
import java.net.SocketTimeoutException;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

@ControllerAdvice
public class ExceptionsHandler {

    @ExceptionHandler({IllegalArgumentException.class, MissingRequestHeaderException.class})
    public ResponseEntity<Map<String, Object>> batRequestException(Exception e) {
        Map<String, Object> response = new HashMap<>();
        response.put("respuesta", "Error, the request is dangerous ".concat(e.getMessage()));
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(response);
    }

    @ExceptionHandler({Exception.class, RuntimeException.class,
            IOException.class, ParseException.class, SocketTimeoutException.class})
    public final ResponseEntity<Map<String, Object>> exceptionsGeneral(Exception e) {
        Map<String, Object> response = new HashMap<>();
        response.put("respuesta", "Error, Internal server error ".concat(e.getMessage()));
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(response);
    }
}
