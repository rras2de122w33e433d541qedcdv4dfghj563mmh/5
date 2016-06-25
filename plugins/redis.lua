function run(msg, matches)
text = io.popen(" sudo service redis-server start"):read('*all')
  return "ردیس فعال شد\nوضعیت :\n Starting redis-server: redis-server." 
end
return {
  patterns = {
    '^[#/!]redis$'
  },
  run = run,
  moderated = true
}
