# set :output, "config/cron_log.log"

# background job to process the transactions status
every 5.minutes do
  runner 'AuthorizeTransaction.process_transaction'
  runner 'CaptureTransaction.process_capture_transaction'
  runner 'RefundTransaction.process_refund_transaction'
end
