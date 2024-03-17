// @generated automatically by Diesel CLI.

diesel::table! {
    combatants (id) {
        id -> Integer,
        #[max_length = 255]
        name -> Varchar,
        #[max_length = 255]
        webhook_uri -> Varchar,
        created_at -> Timestamp,
        updated_at -> Timestamp,
    }
}
