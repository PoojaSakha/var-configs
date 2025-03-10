package controller;


import org.springframework.web.bind.annotation.PostMapping;
        import org.springframework.web.bind.annotation.RequestBody;
        import org.springframework.web.bind.annotation.RestController;

@RestController
public class WebHookController {

    @PostMapping("/webhook")
    public String handleWebhook(@RequestBody String payload) {
        System.out.println("Received POST data: " + payload);
        return "POST request received";
    }
}
