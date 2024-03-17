#[macro_use]
extern crate rocket;


use diesel::prelude::*;
use rocket::{Build, Rocket};
use rocket::serde::json::Json;


use self::models::*;
use self::schema::combatants::dsl::*;


mod database;
mod models;
mod schema;


#[get("/")]
fn index() -> Json<Vec<Combatant>> {
    let connection = &mut database::establish_connection();
    combatants.load::<Combatant>(connection).map(Json).expect("Error loading combatants")
}


#[launch]
fn rocket() -> Rocket<Build> {
    rocket::build().mount("/", routes![index])
}