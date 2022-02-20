mod cli;

use cli::Args;

#[paw::main]
#[tokio::main]
async fn main(args: Args) -> anyhow::Result<()> {
    println!("{:#?}", args);
    Ok(())
}
