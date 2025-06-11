package com.patienthistory;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;
import java.net.URL;

public class App extends Application {

    @Override
    public void start(Stage primaryStage) throws IOException {
        // Load FXML from the resources folder, within the same package structure
        URL fxmlLocation = getClass().getResource("/com/patienthistory/app.fxml"); 

        if (fxmlLocation == null) {
            System.err.println("Cannot find FXML file: app.fxml. Ensure it's in src/main/resources/com/patienthistory/");
            throw new IOException("Cannot load FXML file: app.fxml. Path: " + "/com/patienthistory/app.fxml");
        }

        Parent root = FXMLLoader.load(fxmlLocation);
        Scene scene = new Scene(root, 600, 400);
        
        primaryStage.setTitle("Patient History Management");
        primaryStage.setScene(scene);
        primaryStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
