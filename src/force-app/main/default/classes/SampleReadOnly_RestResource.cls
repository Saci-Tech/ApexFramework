@REstResource(urlmapping='/readonly/*')
global with sharing class SampleReadOnly_RestResource {
    @ReadOnly
    @HttpGet
    global static void doGet() {}
}