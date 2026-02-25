namespace cicdbingo;

entity Employees {
  key ID     : UUID;
      name   : String;
      role   : String;
      salary : Decimal(15,2);
}