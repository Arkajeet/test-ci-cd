using { cicdbingo as db } from '../db/schema';

service EmployeeService {

  @restrict: [
    { grant: 'READ', to: 'Viewer' },
    { grant: ['READ','CREATE','UPDATE','DELETE'], to: 'Admin' }
  ]
  @odata.draft.enabled : true
  entity Employees as projection on db.Employees;
}