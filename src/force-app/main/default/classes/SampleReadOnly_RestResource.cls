@REstResource(urlmapping='/readonly/*')
global with sharing class SampleReadOnly_RestResource {
    @ReadOnly
    @HttpGet
    global static void doGet() {
        // Mass Get endpoint. Implement with a handler Class.Method. This must be in another urlmapping, 
        // due to conflicts between doGet() methods, if it does not have any parameter being passed to it.
    }
}