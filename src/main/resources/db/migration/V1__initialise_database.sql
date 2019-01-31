DROP TABLE IF EXISTS mcve.test;
DROP TABLE IF EXISTS mcve.t_1;
DROP TABLE IF EXISTS mcve.t_2;

CREATE TABLE mcve.test (
  id    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  value INT
);

CREATE TABLE mcve.t_1 (
  ref INT,
  value INT,
  CONSTRAINT idx_value UNIQUE (value, ref),
  CONSTRAINT idx_ref FOREIGN KEY (ref) REFERENCES test (id)
);

CREATE TABLE mcve.t_2 (
  value INT,
  CONSTRAINT idx_value FOREIGN KEY (value) REFERENCES test (id)
);
