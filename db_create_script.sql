CREATE TABLE admin(
  id INT NOT NULL PRIMARY KEY,
  name TEXT NOT NULL,
  age INT NOT NULL,
  gender CHAR NOT NULL,
  role TEXT NOT NULL,
  language TEXT NOT NULL,
  created_at DATE,
  created_by TEXT,
  updated_at DATE,
  updated_by TEXT,
  deleted_at DATE,
  deleted_by TEXT
);

CREATE TABLE educator(
  id INT NOT NULL PRIMARY KEY,
  name TEXT NOT NULL,
  age INT NOT NULL,
  gender TEXT NOT NULL,
  email TEXT NOT NULL,
  specialization TEXT NOT NULL,
  education_background TEXT NOT NULL,
  language TEXT NOT NULL,
  created_at TEXT,
  created_by TEXT,
  updated_at TEXT,
  updated_by TEXT,
  deleted_at DATE,
  deleted_by TEXT,
  is_deleted BOOLEAN NOT NULL DEFAULT 0
);

CREATE TABLE user(
  id INT NOT NULL PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  age TEXT NOT NULL,
  gender CHAR NOT NULL,
  language TEXT NOT NULL,
  education_background TEXT NOT NULL,
  role TEXT NOT NULL,
  password TEXT NOT NULL,
  created_at DATE,
  created_by TEXT,
  updated_at DATE,
  updated_by TEXT,
  deleted_at DATE,
  deleted_by TEXT
);

CREATE TABLE category(
  id INT NOT NULL PRIMARY KEY,
  name TEXT NOT NULL,
  created_at DATE,
  created_by TEXT,
  updated_at DATE,
  updated_by TEXT,
  deleted_at DATE,
  deleted_by TEXT
);

CREATE TABLE course_material(
  id INT NOT NULL PRIMARY KEY,
  name TEXT NOT NULL,
  document_type TEXT NOT NULL,
  created_at DATE,
  created_by TEXT,
  updated_at DATE,
  updated_by TEXT,
  deleted_at DATE,
  deleted_by TEXT
);

CREATE TABLE course(
  id INT NOT NULL PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  total_hours INT NOT NULL,
  course_language TEXT NOT NULL,
  price INT NOT NULL,
  is_approved BOOLEAN NOT NULL DEFAULT 0,
  created_at DATE,
  created_by TEXT,
  updated_at DATE,
  updated_by TEXT,
  deleted_at DATE,
  deleted_by TEXT,
  educator_id INT NOT NULL,
  admin_id INT NOT NULL,
  category_id INT NOT NULL,
  course_material_id INT NOT NULL,
  FOREIGN KEY (educator_id) REFERENCES educator (id),
  FOREIGN KEY (admin_id) REFERENCES admin (id),
  FOREIGN KEY (category_id) REFERENCES category (id),
  FOREIGN KEY (course_material_id) REFERENCES course_material (id)
);

CREATE TABLE enrollement(
  id INT NOT NULL PRIMARY KEY,
  status TEXT NOT NULL,
  is_approved BOOLEAN NOT NULL DEFAULT 0,
  created_at DATE,
  created_by TEXT,
  updated_at DATE,
  updated_by TEXT,
  deleted_at DATE,
  deleted_by TEXT,
  user_id INT NOT NULL,
  course_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user (id),
  FOREIGN KEY (course_id) REFERENCES course (id)
);

CREATE TABLE exam(
  id INT NOT NULL PRIMARY KEY,
  review_message TEXT,
  status TEXT NOT NULL,
  is_approved BOOLEAN NOT NULL DEFAULT 0,
  created_at DATE,
  created_by TEXT,
  updated_at DATE,
  updated_by TEXT,
  deleted_at DATE,
  deleted_by TEXT,
  course_id INT NOT NULL,
  educator_id INT NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (course_id) REFERENCES course (id),
  FOREIGN KEY (educator_id) REFERENCES educator (id),
  FOREIGN KEY (user_id) REFERENCES user (id)
);

CREATE TABLE question(
  id INT NOT NULL PRIMARY KEY,
  question TEXT NOT NULL,
  answer TEXT,
  created_at DATE,
  created_by TEXT,
  updated_at DATE,
  updated_by TEXT,
  deleted_at DATE,
  deleted_by TEXT,
  user_id INT NOT NULL,
  educator_id INT NOT NULL,
  course_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user (id),
  FOREIGN KEY (educator_id) REFERENCES educator (id),
  FOREIGN KEY (course_id) REFERENCES course (id)
);

CREATE TABLE feedback(
  id INT NOT NULL,
  course_rating INT NOT NULL,
  review_message TEXT,
  created_at DATE,
  created_by TEXT,
  updated_at TEXT,
  updated_by TEXT,
  deleted_at DATE,
  deleted_by TEXT,
  user_id INT NOT NULL,
  educator_id INT NOT NULL,
  course_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user (id),
  FOREIGN KEY (educator_id) REFERENCES educator (id),
  FOREIGN KEY (course_id) REFERENCES course (id)
);

CREATE TABLE certification(
  id INT NOT NULL PRIMARY KEY,
  certification_date DATE NOT NULL,
  created_at DATE,
  created_by TEXT,
  updated_at DATE,
  updated_by TEXT,
  deleted_at DATE,
  deleted_by TEXT,
  user_id INT NOT NULL,
  educator_id INT NOT NULL,
  course_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user (id),
  FOREIGN KEY (educator_id) REFERENCES educator (id),
  FOREIGN KEY (course_id) REFERENCES course (id)
);

CREATE TABLE payment(
  id INT NOT NULL PRIMARY KEY,
  price INT NOT NULL,
  is_approved BOOLEAN NOT NULL DEFAULT 0,
  created_at DATE,
  created_by TEXT,
  updated_at DATE,
  updated_by TEXT,
  deleted_at DATE,
  deleted_by TEXT,
  user_id INT NOT NULL,
  admin_id INT NOT NULL,
  course_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user (id),
  FOREIGN KEY (admin_id) REFERENCES admin (id),
  FOREIGN KEY (course_id) REFERENCES course (id)
);