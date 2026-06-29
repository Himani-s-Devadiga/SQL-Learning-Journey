REFERENTIAL ACTIONS (FOREIGN KEY BEHAVIOR)

Used when parent table data is updated or deleted.

🔥 ON DELETE CASCADE

Child rows are deleted automatically when parent is deleted.

FOREIGN KEY (student_id)
REFERENCES students(id)
ON DELETE CASCADE;
🔥 ON UPDATE CASCADE

Child updates automatically when parent key changes.

ON UPDATE CASCADE;
🔥 SET NULL

Child value becomes NULL when parent is deleted.

ON DELETE SET NULL;
🔥 SET DEFAULT

Child gets default value when parent is deleted.

ON DELETE SET DEFAULT;
🔥 RESTRICT

Prevents deletion if child exists.

ON DELETE RESTRICT;

🏗️ 3. ALTER TABLE COMMANDS

Used to modify table structure after creation.

➕ ADD COLUMN
ALTER TABLE students
ADD age INT;

➕ ADD MULTIPLE COLUMNS
ALTER TABLE students
ADD (
    address VARCHAR(100),
    phone VARCHAR(15)
);

📍 ADD COLUMN AT SPECIFIC POSITION (MySQL)
ALTER TABLE students
ADD gender VARCHAR(10) AFTER name;
ALTER TABLE students
ADD id INT FIRST;

✏️ MODIFY COLUMN (change datatype/size)
ALTER TABLE students
MODIFY age VARCHAR(3);

❌ DELETE COLUMN
ALTER TABLE students
DROP COLUMN age;

🔁 RENAME COLUMN
ALTER TABLE students
RENAME COLUMN name TO student_name;

🔒 4. CONSTRAINT MANAGEMENT (EDIT / DELETE)
➕ ADD CONSTRAINT
ALTER TABLE students
ADD CONSTRAINT chk_age CHECK (age >= 18);

❌ DROP CONSTRAINT
ALTER TABLE students
DROP CONSTRAINT chk_age;

🔁 MODIFY CONSTRAINT (STANDARD METHOD)
SQL does NOT directly modify constraints.
👉 You must:
DROP constraint → ADD again
Example:
ALTER TABLE students
DROP CONSTRAINT chk_age;

ALTER TABLE students
ADD CONSTRAINT chk_age CHECK (age >= 21);
