package steps;

import io.restassured.specification.RequestSpecification;
import org.junit.runner.Request;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import static io.restassured.RestAssured.given;

public class commonStep {
    Properties properties=new Properties();
    public static RequestSpecification request;
    FileInputStream file;
    {
        try {
            file=new FileInputStream("src/test/resources/config.properties");
        }catch (FileNotFoundException e){
            e.printStackTrace();
        }
    }

    //metodo para asignarle el archivo de la ruta, con esto de inicia el armado de la petición hacia la API
        public RequestSpecification Request() throws IOException {
        properties.load(file);
        request = given().log().all().baseUri(properties.getProperty("baseUrl")); // el log.all es para imprimir info
        return request;
    }
}
