use std::path::PathBuf;
use structopt::StructOpt;

#[derive(Debug, StructOpt)]
pub enum Args {
    Attach {
        #[structopt(default_value = "/tmp/mc.sock")]
        socket: PathBuf,
    },
    Fetch {
        #[structopt(default_value = "latest")]
        release: String,
    },
    // Run? Start?
    Launch {
        args: Vec<String>,
    },
    // Cmd?
    Run {
        command: String,
    },
}
