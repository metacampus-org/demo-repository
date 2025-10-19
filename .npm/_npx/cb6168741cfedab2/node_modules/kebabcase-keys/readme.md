# kebabcase-keys [![Build Status](https://travis-ci.org/mattii/kebabcase-keys.svg?branch=master)](https://travis-ci.org/mattii/kebabcase-keys)

> Convert object keys to kebab-case using [`lodash.kebabcase`](https://www.npmjs.com/package/lodash.kebabcase), forked from [camelcase-keys](https://github.com/sindresorhus/camelcase-keys) by Sindre Sorhus.


## Install

```
$ npm install kebabcase-keys
```


## Usage

```js
const kebabcaseKeys = require('kebabcase-keys');

// Convert an object
kebabcaseKeys({foo_bar: true});
//=> {'foo-bar': true}

// Convert an array of objects
kebabcaseKeys([{fooBar: true}, {bar_foo: false}]);
//=> [{'foo-bar': true}, {'bar-foo': false}]

kebabcaseKeys({foo_bar: true, nested: {unicorn_rainbow: true}}, {deep: true});
//=> {'foo-bar': true, nested: {'unicorn-rainbow': true}}
```

## API

### kebabcaseKeys(input, [options])

#### input

Type: `Object` `Object[]`

Object or array of objects to kebab-case.

#### options

Type: `Object`

##### exclude

Type: `Array<string|RegExp>`<br>
Default: `[]`

Exclude keys from being kebab-cased.

##### deep

Type: `boolean`<br>
Default: `false`

Recurse nested objects and objects in arrays.


## Related

- [camelcase-keys](https://github.com/sindresorhus/camelcase-keys)
- [snakecase-keys](https://github.com/bendrucker/snakecase-keys)


## Credits

This is a fork from [camelcase-keys](https://github.com/sindresorhus/camelcase-keys) by Sindre Sorhus. I just integrated a different case-converter.

## License

MIT © [Sindre Sorhus](https://sindresorhus.com)
MIT © [Matthias Lohscheidt](https://github.com/mattii)
