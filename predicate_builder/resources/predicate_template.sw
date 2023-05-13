predicate;

const SECRET = ${SECRET};

fn main(secret: b256) -> bool {
    secret == SECRET
}
