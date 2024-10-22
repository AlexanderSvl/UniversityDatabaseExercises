USE packages;

-- <==== Task 1 ====> --
-- Here we can see the address of the sender;
SELECT * FROM addresses WHERE address LIKE '%900 Somerville Avenue%';
-- The problem with the address of the receiver (there was a typo in the address, that's why it was hard to find it);
SELECT * FROM addresses WHERE address LIKE '%2 Finnigan Street%';
-- Here we can see that the letter has indeed been sent to the wrong (mystyped) address. We can get the package_id from this and search for it later;
SELECT * FROM packages WHERE to_address_id = 854;
-- Here we search if the driver scanned the package when it was dropped and we can see where he dropped it.
SELECT * FROM scans WHERE package_id = 384;
-- At what type of address did the Lost Letter end up? --> At a residential address;
-- At what address did the Lost Letter end up? - At a wrong address --> 2 Finnigan Street instead of 2 Finnegan Street;

WITH sender_address AS (
    SELECT * FROM addresses WHERE address LIKE '%900 Somerville Avenue%'
),
receiver_address AS (
    SELECT * FROM addresses WHERE address LIKE '%2 Finnigan Street%'
),
package_info AS (
    SELECT * FROM packages WHERE to_address_id IN (SELECT id FROM receiver_address)
),
scan_info AS (
    SELECT * FROM scans WHERE package_id IN (SELECT id FROM package_info)
)
SELECT 
    sa.*, 
    ra.*, 
    pi.*, 
    si.*, 
    'Lost Letter ended up at a residential address: 2 Finnigan Street instead of 2 Finnegan Street' AS notes
FROM sender_address sa
JOIN receiver_address ra ON 1=1  -- Cross join since we want all combinations
JOIN package_info pi ON 1=1      -- Cross join
JOIN scan_info si ON 1=1         -- Cross join
LIMIT 1;

-- <==== Task 2 ====> --
-- With the following query I found out that the only package without a "from" address has id 5098;
SELECT * FROM packages WHERE from_address_id IS NULL;
-- We can see that the package should be at 123 Sesame Street;
SELECT * FROM addresses WHERE id = 50;
-- We can track the package and we see that is has been delivered to address with ID 348;
SELECT * FROM scans WHERE package_id = 5098;
-- Now we can see that the address the package ended up is a Police Station
SELECT * FROM addresses WHERE id = 348;
-- At what type of address did the Devious Delivery end up? --> At a Police Station
-- What were the contents of the Devious Delivery? --> A Duck Debugger

-- <==== Task 3 ====> --
SELECT * FROM addresses WHERE address = '109 Tileston Street';
-- Here we find the package and we fount the package_id, which is 9523;
SELECT * FROM packages WHERE from_address_id = 9873; 
-- Here we can track the scans of the package that we are searching for. It was dropped at a warehouse and then it was picked up again several days later;
SELECT * FROM scans WHERE package_id = 9523;
-- Here we can see that the package was dropped at a warehouse;
SELECT * FROM addresses WHERE id = 7432;
-- Here we can see that the driver who picked it up the second time was Mikel;
SELECT * FROM drivers WHERE id = 17;	
-- What are the contents of the Forgotten Gift? --> The contents are flowers;
-- Who has the Forgotten Gift? --> It is currently picked up from Mikel and being transported;
