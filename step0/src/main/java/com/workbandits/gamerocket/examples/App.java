package com.workbandits.gamerocket.examples;

import spark.Request;
import spark.Response;
import spark.Route;
import static spark.Spark.get;

public class App {
    
    public static void main(String[] args) {
        
        get(new Route("/") {
 
            @Override
            public Object handle(Request request, Response response) {
                response.type("text/html");
                return "<h1>Success!</h1>";
            }
        });
    }
}
