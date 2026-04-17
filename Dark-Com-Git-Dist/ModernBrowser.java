import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.VBox;
import javafx.scene.web.WebView;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

public class ModernBrowser extends Application {
    @Override
    public void start(Stage stage) {
        WebView browser = new WebView(); // This engine supports JavaScript
        TextField urlBar = new TextField("https://google.com");

        urlBar.setOnAction(e -> browser.getEngine().load(urlBar.getText()));
        browser.getEngine().load("https://google.com");

        VBox root = new VBox(urlBar, browser);
        Scene scene = new Scene(root, 1200, 800);
        stage.setScene(scene);
        stage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
