pragma circom 2.0.0;

include "/home/stan/spinada/circomlib/circuits/sha256/sha256.circom";

template Hash(nbits) {
    signal input in[nbits];
    signal output out[256];

    var i;

    component sha256 = Sha256(nbits);

    for (i=0; i<nbits; i++) {
        sha256.in[i] <== in[i];
    }

    for (i=0; i<256; i++) {
        log(sha256.out[i]);
        out[i] <== sha256.out[i];
    }

}

component main = Hash(256);
