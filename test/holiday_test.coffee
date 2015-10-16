
assert = require 'power-assert'
holiday = require '../src/holiday.coffee'

describe 'holiday', ->
  it 'checkNewYearsDay', ->
    assert(holiday.isPublicHoliday(new Date(2015, 0, 1)) is true)
  it 'checkComingOfAgeDay', ->
    assert(holiday.isPublicHoliday(new Date(2015, 0, 12)) is true)
