package features;

import io.restassured.RestAssured;
import io.restassured.response.Response;

public class getAPIRestAssured {
    @Test
    public void test1(){
        com.intuit.karate.http.Response response = RestAssured.get("https://reqres.in/api/users/2");

        system.out.println(response.getStatus());
        system.out.println(response.getBody().asString());

    }
}
