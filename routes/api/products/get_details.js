const db = require('../../../db');
const { buildUrl } = require('../../../helpers');

// Move /api/products/:product_id Controller function to here
// use get_all.js as a reference

module.exports = async (req, res) => {
    const { product_id } = req.params;

    // Query the database, get all the data you need
    const [results] = await db.execute(`
        SELECT p.pid AS id, caption, cost, description, p.name, i.pid AS imId, altText, file, type
        FROM products AS p
        JOIN images AS i
        ON p.id=i.productId
        WHERE p.pid=?
    `, [product_id]);

    // Format the data as needed
    let product = {};
    let images = {};

    results.forEach(result => {
        const { imId, altText, file, type, ...p } = result;
        let keyName = 'image';

        if (type === 'thumbnail') {
            keyName = type;
        }

        product = p;

        images[keyName] = {
            id: imId,
            altText: altText,
            file: file,
            type: type,
            url: buildUrl(req, type, file)
        }
    });

    // Send data to client
    res.send({
        ...product,
        ...images
    });
}