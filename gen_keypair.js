const fs = require('fs')
const crypto = require('crypto')

var jwt = require('jsonwebtoken');
const text = ''
const key = 'abcdefg'

let secret = crypto.createHmac('sha256', key)
  .update(text)
    .digest('hex')

fs.writeFileSync('jwt_secret', secret);

var token = jwt.sign({}, secret, {
    algorithm: 'HS256'
}, (err, token) => {
    if (err) {
        console.log(err)
        return
    }
    console.log(token);
})
