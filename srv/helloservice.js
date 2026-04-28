// IN order to implement a service we need service.js file
const cds = require('@sap/cds');

class HelloService extends cds.ApplicationService {
    sayHello(name) { return "Hello " + name; }
}

module.exports = HelloService;