theories/Reconstr.vo theories/Reconstr.glob theories/Reconstr.v.beautified: theories/Reconstr.v
theories/Reconstr.vio: theories/Reconstr.v
theories/Hammer.vo theories/Hammer.glob theories/Hammer.v.beautified: theories/Hammer.v theories/Reconstr.vo src/hammer_plugin$(DYNLIB)
theories/Hammer.vio: theories/Hammer.v theories/Reconstr.vio src/hammer_plugin$(DYNLIB)
