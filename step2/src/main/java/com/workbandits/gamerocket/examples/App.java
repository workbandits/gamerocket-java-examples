package com.workbandits.gamerocket.examples;

import com.workbandits.gamerocket.ActionRequest;
import com.workbandits.gamerocket.Environment;
import com.workbandits.gamerocket.GameRocketGateway;
import com.workbandits.gamerocket.Result;
import java.util.HashMap;
import java.util.Map;
import spark.ModelAndView;
import spark.Request;
import spark.Response;
import spark.Route;
import spark.template.freemarker.FreeMarkerRoute;
import static spark.Spark.get;
import static spark.Spark.post;
import static spark.Spark.staticFileLocation;

public class App {
    
    public static void main(String[] args) {
        
        final GameRocketGateway gateway = new GameRocketGateway(Environment.PRODUCTION, "<your_apikey>", "<your_secretkey>");
        
        staticFileLocation("/public");
        
        get(new Route("/") {
 
            @Override
            public Object handle(Request request, Response response) {
                response.redirect("/mine");
                return null;
            }
        });
        
        get(new FreeMarkerRoute("/mine") {
            
            @Override
            public ModelAndView handle(Request request, Response response) {
                ActionRequest actionRequest = new ActionRequest();
                actionRequest.player("the_player_id");
                
                Result<Map<String, Object>> result = gateway.action().run("on-load-mine-page", actionRequest);
                if (!result.isSuccess()) {
                    Map<String, Object> error = new HashMap<String, Object>();
                    error.put("message", result.getErrorDescription());
                    
                    return modelAndView(error, "error.ftl");
                }
                              
                return modelAndView(result.getTarget(), "mine.ftl");
            }
        });
        
        post(new FreeMarkerRoute("/upgrade_mine") {
            
            @Override
            public Object handle(Request request, Response response) {
                ActionRequest actionRequest = new ActionRequest();
                actionRequest.player("the_player_id");
                
                Result<Map<String, Object>> result = gateway.action().run("upgrade-mine", actionRequest);
                if (result.isSuccess()) {
                    if ("error".equals(result.getTarget().get("status"))) {
                        Map<String, Object> error = new HashMap<String, Object>();
                        error.put("message", ((Map<String, Object>) result.getTarget().get("data")).get("message"));
                                
                        return modelAndView(error, "error.ftl");
                    }
                } else {
                    Map<String, Object> error = new HashMap<String, Object>();
                    error.put("message", result.getErrorDescription());
                    
                    return modelAndView(error, "error.ftl");
                }
                
                response.redirect("/mine");
                return null;
            }
        });
        
        get(new FreeMarkerRoute("/army") {
            
            @Override
            public ModelAndView handle(Request request, Response response) {
                ActionRequest actionRequest = new ActionRequest();
                actionRequest.player("the_player_id");
                
                Result<Map<String, Object>> result = gateway.action().run("on-load-army-page", actionRequest);
                if (!result.isSuccess()) {
                    Map<String, Object> error = new HashMap<String, Object>();
                    error.put("message", result.getErrorDescription());
                    
                    return modelAndView(error, "error.ftl");
                }
                              
                return modelAndView(result.getTarget(), "army.ftl");
            }
        });
        
        post(new FreeMarkerRoute("/enroll") {
           
            @Override
            public ModelAndView handle(Request request, Response response) {
                ActionRequest actionRequest = new ActionRequest();
                actionRequest.player("the_player_id");
                actionRequest.parameters(request.queryMap().toMap());
                
                Result<Map<String, Object>> result = gateway.action().run("enroll", actionRequest);
                
                if (result.isSuccess()) {
                    if ("error".equals(result.getTarget().get("status"))) {
                        Map<String, Object> error = new HashMap<String, Object>();
                        error.put("message", ((Map<String, Object>) result.getTarget().get("data")).get("message"));
                                
                        return modelAndView(error, "error.ftl");
                    }
                } else {
                    Map<String, Object> error = new HashMap<String, Object>();
                    error.put("message", result.getErrorDescription());
                    
                    return modelAndView(error, "error.ftl");
                }
                
                response.redirect("/army");
                return null;
            }
        });
    }
}
