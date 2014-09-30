/**
* Just some utility class.
*/
var A = (function () {
    /**
    * This is the default constructor
    */
    function A() {
    }
    /**
    * @param {number} test A test number.
    * @return {number} Returns a default number.
    */
    A.prototype.random = function (x) {
        return 3;
    };
    return A;
})();
exports.A = A;
