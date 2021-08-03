const { expect } = require("chai");

describe("Greeter", function () {
  it("Should return the new greeting once it's changed", async function () {
    const Greeter = await ethers.getContractFactory("Greeter");
    const greeter = await Greeter.deploy("Hello, world!", 2);
    await greeter.deployed();

    expect(await greeter.greet()).to.equal("Hello, world!");

    const setGreetingTx = await greeter.setGreeting("Hola, mundo!");

    // wait until the transaction is mined
    await setGreetingTx.wait();

    expect(await greeter.greet()).to.equal("Hola, mundo!");
  });

  it("should add a value to x", async function () {
    const Greeter = await ethers.getContractFactory("Greeter");
    const greeter = await Greeter.deploy("Hello, world!", 2);
    await greeter.deployed();

    expect(await greeter.x).to.equal(2);

    const addValueToXTx = await greeter.addValueToX(7);

    // wait until the transaction is mined
    await addValueToXTx.wait();

    expect(await greeter.x).to.equal(9);
  });

  it("should double the value of x", async function () {
    const Greeter = await ethers.getContractFactory("Greeter");
    const greeter = await Greeter.deploy("Hello, world!", 5);
    await greeter.deployed();

    expect(await greeter.x).to.equal(5);

    const setGreetingTx = await greeter.doubleX();

    // wait until the transaction is mined
    await setGreetingTx.wait();

    expect(await greeter.x).to.equal(10);
  });
});
