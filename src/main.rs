use actix_cors::Cors;
use actix_files as fs;
use actix_web::{App, HttpServer, main};

#[main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| {
        App::new()
            .wrap(Cors::permissive())
            .service(fs::Files::new("/", "./assets").show_files_listing())
    })
    .bind(("0.0.0.0", 3000))?
    .run()
    .await
}
