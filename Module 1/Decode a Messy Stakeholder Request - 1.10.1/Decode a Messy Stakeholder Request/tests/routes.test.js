const request = require('supertest');
const app = require('../index');

// TODO: Fill in the test bodies below.
//
// Each test should call the route and assert on the HTTP status code.
// Example:
//   const res = await request(app).get('/some-route');
//   expect(res.status).toBe(200);
//
// After you delete the scope-creep routes from index.js, Express will
// return 404 for any unknown path — so your 404 assertions will pass
// once the routes are gone.

describe('MVP routes — must return 200', () => {
  test('GET /fleet/trucks returns 200', async () => {
    // TODO: write assertion
  });

  test('GET /drivers/1 returns 200', async () => {
    // TODO: write assertion
  });

  test('POST /drivers/1/approve returns 200', async () => {
    // TODO: write assertion (hint: send an empty JSON body)
  });

  test('GET /alerts returns 200', async () => {
    // TODO: write assertion
  });

  test('POST /alerts/webhook returns 200', async () => {
    // TODO: write assertion (hint: send { truck_id: 'T-001', breach_type: 'geofence' })
  });
});

describe('Scope-creep routes — must return 404 after deletion', () => {
  test('GET /chat returns 404', async () => {
    // TODO: write assertion
  });

  test('GET /fuel/costs returns 404', async () => {
    // TODO: write assertion
  });

  test('GET /offline/sync returns 404', async () => {
    // TODO: write assertion
  });

  test('GET /theme returns 404', async () => {
    // TODO: write assertion
  });
});
