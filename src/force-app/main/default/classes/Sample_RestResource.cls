/**
 * 
 * @author Eduardo Barbosa
 * @since January, 22, 2024
 */
@RestResource(urlMapping='/sampleEndpoint/*')
global with sharing class Sample_RestResource {
    @HttpGet
    global static void doGet() {
        // Respond data/file requests with Class.Method here. Keep it clean and short!
    }

    @HttpPost
    global static void doPost() {
        // Insert Class.Method here. Keep it clean and short!
    }

    @HttpPatch
    global static void doPatch() {
        // Update Class.Method here. Keep it clean and short!
    }

    @HttpPut
    global static void doPut() {
        // Upsert Class.Method here. Keep it clean and short!
    }

    @HttpDelete
    global static void doDelete() {
        // Delete Class.Method here. Keep it clean and short!
    }
}