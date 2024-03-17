CREATE TABLE combatants (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    webhook_uri VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL
);

INSERT INTO combatants (name, webhook_uri) VALUES
    ('Player 1', 'https://discord.com/api/webhooks/1'),
    ('Player 2', 'https://discord.com/api/webhooks/2'),
    ('Player 3', 'https://discord.com/api/webhooks/3');