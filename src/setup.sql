CREATE TABLE organization (
    organization_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    contact_email VARCHAR(255) NOT NULL,
    logo_filename VARCHAR(255) NOT NULL
);




INSERT INTO organization (name, description, contact_email, logo_filename)
VALUES
('BrightFuture Builders', 'A nonprofit focused on improving community infrastructure through sustainable construction projects.', 'info@brightfuturebuilders.org', 'brightfuture-logo.png'),
('GreenHarvest Growers', 'An urban farming collective promoting food sustainability and education in local neighborhoods.', 'contact@greenharvest.org', 'greenharvest-logo.png'),
('UnityServe Volunteers', 'A volunteer coordination group supporting local charities and service initiatives.', 'hello@unityserve.org', 'unityserve-logo.png');




CREATE TABLE categories(
category_id SERIAL  PRIMARY KEY,
category_name VARCHAR(75) NOT NULL,
service_project_name  VARCHAR(75)  NOT NULL 
);

INSERT INTO categories (category_id,category_name,service_project_name)
VALUES
(1, 'environmental', 'park cleanup'),
(2, ' educational ', 'community tutoring'),
(3 , 'community service', 'food drive '),
(4, 'health and wellness', 'park cleanup' );



CREATE TABLE projects(
service_project_name VARCHAR(50) PRIMARY KEY,
category_id INT NOT NULL,
category_name VARCHAR(75)  NOT NULL 
);


INSERT INTO projects( service_project_name, category_id, category_name)
VALUES( 'park cleanup', 1 , 'environmental'),
('food drive ', 3, 'community service ');
('community tutoring', 2, ' educational');



