const notifier = require('../services/notifier');

// Handler for GET /reports/:id
// This handler does TWO things: fetches report AND sends notification
// This is the DESIGN DRIFT issue students need to identify

async function getReport(req, res) {
  const reportId = parseInt(req.params.id, 10);
  const userId = req.user.user_id;

  // Step 1: Fetch report from database
  const report = global.mockDB.reports.get(reportId);

  if (!report) {
    return res.status(404).json({
      error: {
        code: 'not_found',
        message: `Report ${reportId} not found`
      }
    });
  }

  // Step 2: Check ownership
  if (report.owner_id !== userId) {
    return res.status(403).json({
      error: {
        code: 'forbidden',
        message: 'You do not have access to this report'
      }
    });
  }

  // DESIGN DRIFT: Handler also sends a notification
  // This behavior was NEVER mentioned in the sequence diagram from LU 1.5
  // The diagram only showed: fetch report → respond
  // But here we're also calling notifier.sendAccessLog
  // This violates single-responsibility design

  try {
    await notifier.sendAccessLog({
      user_id: userId,
      report_id: reportId,
      timestamp: new Date().toISOString(),
      action: 'accessed'
    });
  } catch (err) {
    console.error('Notification failed:', err.message);
  }

  // Step 3: Return the report
  res.status(200).json({
    id: report.id,
    title: report.title,
    data: report.data,
    accessed_by: req.user.email,
    accessed_at: new Date().toISOString()
  });
}

module.exports = getReport;
