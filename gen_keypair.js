const fs = require('fs')
const crypto = require('crypto')

var jwt = require('jsonwebtoken');
const text = ''
const key = 'abcdefg'

let secret = crypto.createHmac('sha1', key)
  .update(text)
    .digest('hex')

fs.writeFileSync('jwt_secret', secret);

var token = jwt.sign({}, secret, {
    algorithm: 'HS256', //algo used to create JWT
    expiresIn: "2d" // set a 2 day expiration
}, (err, token) => {
    if (err) {
        console.log(err)
        return
    }
    console.log(token);
})
