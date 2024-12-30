public class ResearchServiceController {
    
    public static Integer processEquipmentsRequest() {
        String endpoint = 'https://integration-security-proxy-33i1n3.5sc6y6-4.usa-e2.cloudhub.io/equipments'; 
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setHeader('client_id', '9df23e0xxxxxxxxxxxf162b95cace546e');
        request.setHeader('client_secret', '6F6254DDxxxxxxxxxxx8875693d8e9A7a');
        
        request.setMethod('GET');
        HttpResponse response = new Http().send(request);
        
        if (response.getStatusCode() == 200) {
            String responseBody = response.getBody();
            System.debug('Available Equipments: ' + responseBody);
        } else {
            System.debug('Callout failed with status code: ' + response.getStatusCode());
        }
        return response.getStatusCode();
    }

}
