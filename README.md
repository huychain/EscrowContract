# Escrow Contract

We'll be building a simple two-party escrow system. We'll think about this in terms of a simple e-commerce store.

The simple flow is when everything goes as expected:

- A buyer initializes and deposits funds into this contract, specifying a seller.
- The seller ships the item to the buyer. The seller fulfills the contract.
- The buyer confirms receiving the item. Funds are released to the seller.

But this contract exists so we can deal with the bad cases. Let's go over them.

**Buyer rejects**

- Seller fulfills contract.
- Buyer rejects contract.

In the simple case, we'll side with the buyer, and the contract will be destroyed, and funds released back to the buyer.

**Seller rejects**

- Seller rejects contract.

Clearly in this case the funds go back to the buyer.

We'll be adding more features to this contract to make it more useful for both parties.

------------------------------

## truffle



#### compile

```
truffle compile
```

#### deploy in develop env

enter truffle develop env, interactive mode

```
truffle develop
```

then

```
migrate
```
or, to migrate again

```
migrate --reset
```

view log

```
truffle develop --log
```

keep deployed instance

```
Escrow.deployed().then(function(res){contractInstance = Escrow.at(res.address)});
```
