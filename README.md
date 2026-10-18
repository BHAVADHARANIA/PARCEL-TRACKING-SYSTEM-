# ParcelTrack (Java, browser UI)

Run (Windows): double-click run.bat  -> opens http://localhost:8080
Run (Mac/Linux): ./run.sh

Demo logins
  Administrator tab: admin  / Admin@123
  Customer tab:      aarav, priya, karthik or meera  / User@123

Roles
  Customer: sees only own parcels, creates shipments, requests cancellation (before Out for Delivery)
  Admin:    sees all parcels, updates tracking, approves or declines cancellation requests

Tests (needs Maven): mvn test
