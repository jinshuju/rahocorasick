use aho_corasick::AhoCorasick;
use magnus::{define_class, method, function, prelude::*, Error};

#[magnus::wrap(class = "RAhoC")]
pub struct RAhoC {
    words: Vec<String>,
    ac: AhoCorasick,
}

impl RAhoC {
    fn new(words: Vec<String>) -> Self {
        let ac = AhoCorasick::new(&words);
        Self { words, ac }
    }

    fn lookup(&self, haystack: String) -> Vec<String> {
        let mut matches = vec![];
        for mat in self.ac.find_iter(&haystack) {
            matches.push(self.words[mat.pattern()].clone());
        }
        matches
    }
}

#[magnus::init]
fn main() -> Result<(), Error> {
    let class = define_class("RAhoC", Default::default())?;
    class.define_singleton_method("new", function!(RAhoC::new, 1))?;
    class.define_method("lookup", method!(RAhoC::lookup, 1))?;
    Ok(())
}
