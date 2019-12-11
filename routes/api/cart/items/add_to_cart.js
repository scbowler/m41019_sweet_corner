const db = require('../../../../db');
const cartJwt = require('../../../../config/cart_jwt.json');
const jwt = require('jwt-simple');

module.exports = async (req, res) => {
    // Check for existing cart
    const { product_id } = req.params;
    let { cart } = req;
    let token = null;

    // Checking if product_id is valid
    const [[product = null]] = await db.execute('SELECT id, name FROM products WHERE pid=?', [product_id]);

    if (!product) {
        res.status(404).send('Product not found');
        return;
    }

    // If no cart, create a new cart
    if(!cart) {
        const [[cartStatus]] = await db.query('SELECT id FROM cartStatuses WHERE mid="active"');

        const [ result ] = await db.query('INSERT INTO cart (pid, statusId) VALUES (UUID(), ?)', [cartStatus.id]);

        cart = {
            id: result.insertId
        };

        const tokenData = {
            cartId: cart.id,
            ts: Date.now()
        };

        token = jwt.encode(tokenData, cartJwt.secret);
    }

    // Does item already exist in cart
    const [[cartItem = null]] = await db.query('SELECT id FROM cartItems WHERE cartId=? AND productId=?', [cart.id, product.id]);

    // If product already in cart, increase quantity
    if(cartItem) {
        // Increase the quantity of the existing cartItem
    } else {
        // Else create cart item for product
        const [ itemResult ] = await db.execute(`
            INSERT INTO cartItems 
            (pid, cartId, productId, quantity)
            VALUES (UUID(), ?, ?, ?)
        `, [cart.id, product.id, 1]);
    }

    const message = `1 ${product.name} added to cart`;

    res.send({
        cartToken: token,
        message: message
    });
}
