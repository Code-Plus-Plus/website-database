return sentence sql
select MID(textArea,(LOCATE('character encoding systems often used six bits', textArea)-5),200) from crawlerdb where textArea like '%character encoding systems often used six bits%';
