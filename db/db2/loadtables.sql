delete from hardware;
delete from lobby;
delete from employe;
delete from security;

import FROM ../../data/security.del of del modified by coldel| messages msg1.txt  insert  INTO security;
import FROM ../../data/employee.del of del modified by coldel| messages msg2.txt INSERT INTO employe;
import FROM ../../data/lobby.del of del modified by coldel| messages msg3.txt INSERT INTO lobby;
import FROM ../../data/hardware.del of del modified by coldel| messages msg4.txt INSERT INTO hardware;

select * from security fetch first 3 rows only;
select * from employe fetch first 3 rows only;
select * from lobby fetch first 3 rows only;
select * from hardware fetch first 3 rows only;
