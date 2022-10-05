const assert = require("assert");
const valid = require("../lib/valid_email");

describe("valid", () => {
  it("should return false for an empty string", () => {
    assert.equal(valid(''), false);
  });

  it("should return false if there is no @", () => {
    assert.equal(valid('nick.karnov.com'), false);
  });

  it("should return false if the extension is too short", () => {
    assert.equal(valid('nick@karnov.o'), false);
  });

  it("should return false if there's nothing before the @", () => {
    assert.equal(valid('@karnov.com'), false);
  });

  it("should return false if there's no dot in the domain", () => {
    assert.equal(valid('nick@karnov'), false);
  });

  it("should return true with a simple valid email", () => {
    assert.equal(valid('nick@karnov.com'), true);
  });

  it("should return true with a more complex valid email", () => {
    assert.equal(valid('n.feer86bde@ofir-mail.dk'), true);
  });
});
