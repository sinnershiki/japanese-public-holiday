
assert = require 'power-assert'
holiday = require '../src/holiday.coffee'

describe 'holiday', ->
  it 'checkNewYearsDay', ->
    assert(holiday.isPublicHoliday(new Date(2015, 0, 1)) is true)
  it 'checkComingOfAgeDay', ->
    assert(holiday.isPublicHoliday(new Date(2015, 0, 12)) is true)
    assert(holiday.isPublicHoliday(new Date(2014, 0, 12)) is false)
  it 'checkNationalFoundationDay', ->
    assert(holiday.isPublicHoliday(new Date(2015, 1, 11)) is true)
  it 'checkVernalEquinoxHoliday', ->
    assert(holiday.isPublicHoliday(new Date(2014, 2, 21)) is true)
    assert(holiday.isPublicHoliday(new Date(2015, 2, 21)) is true)
    assert(holiday.isPublicHoliday(new Date(2016, 2, 21)) is true) # substitute holiday
    assert(holiday.isPublicHoliday(new Date(2017, 2, 20)) is true)
  it 'checkShowaDay', ->
    assert(holiday.isPublicHoliday(new Date(2015, 3, 29)) is true)
  it 'checkGoldenWeek', ->
    assert(holiday.isPublicHoliday(new Date(2015, 4, 3)) is false) # substitute holiday
    assert(holiday.isPublicHoliday(new Date(2015, 4, 4)) is true)
    assert(holiday.isPublicHoliday(new Date(2015, 4, 5)) is true)
    assert(holiday.isPublicHoliday(new Date(2015, 4, 6)) is true)
    assert(holiday.isPublicHoliday(new Date(2015, 4, 7)) is false)
  it 'checkMountainDay', ->
    assert(holiday.isPublicHoliday(new Date(2015, 7, 11)) is false)
    assert(holiday.isPublicHoliday(new Date(2016, 7, 11)) is true)
  it 'checkMarineDay', ->
    assert(holiday.isPublicHoliday(new Date(2015, 6, 20)) is true)
    assert(holiday.isPublicHoliday(new Date(2016, 6, 18)) is true)
    assert(holiday.isPublicHoliday(new Date(2017, 6, 17)) is true)
    assert(holiday.isPublicHoliday(new Date(2018, 6, 16)) is true)
    assert(holiday.isPublicHoliday(new Date(2019, 6, 15)) is true)
    assert(holiday.isPublicHoliday(new Date(2020, 6, 20)) is true)
    assert(holiday.isPublicHoliday(new Date(2021, 6, 19)) is true)
  it 'checkRespectForTheAgedDay', ->
    assert(holiday.isPublicHoliday(new Date(2015, 8, 21)) is true)
    assert(holiday.isPublicHoliday(new Date(2016, 8, 19)) is true)
    assert(holiday.isPublicHoliday(new Date(2017, 8, 18)) is true)
    assert(holiday.isPublicHoliday(new Date(2018, 8, 17)) is true)
    assert(holiday.isPublicHoliday(new Date(2019, 8, 16)) is true)
    assert(holiday.isPublicHoliday(new Date(2020, 8, 21)) is true)
    assert(holiday.isPublicHoliday(new Date(2021, 8, 20)) is true)
  it 'checkAutumnEquinoxHoliday', ->
    assert(holiday.isPublicHoliday(new Date(2015, 8, 23)) is true)
    assert(holiday.isPublicHoliday(new Date(2016, 8, 22)) is true)
    assert(holiday.isPublicHoliday(new Date(2017, 8, 23)) is true)
    assert(holiday.isPublicHoliday(new Date(2018, 8, 24)) is true) # substitute holiday
    assert(holiday.isPublicHoliday(new Date(2019, 8, 23)) is true)
    assert(holiday.isPublicHoliday(new Date(2020, 8, 22)) is true)
    assert(holiday.isPublicHoliday(new Date(2021, 8, 23)) is true)
  it 'checkSportsDay', ->
    assert(holiday.isPublicHoliday(new Date(2015, 9, 12)) is true)
    assert(holiday.isPublicHoliday(new Date(2016, 9, 10)) is true)
    assert(holiday.isPublicHoliday(new Date(2017, 9, 9)) is true)
    assert(holiday.isPublicHoliday(new Date(2018, 9, 8)) is true)
    assert(holiday.isPublicHoliday(new Date(2019, 9, 14)) is true)
    assert(holiday.isPublicHoliday(new Date(2020, 9, 12)) is true)
    assert(holiday.isPublicHoliday(new Date(2021, 9, 11)) is true)
  it 'checkCultureDay', ->
    assert(holiday.isPublicHoliday(new Date(2015, 10, 3)) is true)
  it 'checkLaborThanksgivingDay', ->
    assert(holiday.isPublicHoliday(new Date(2015, 10, 23)) is true)
  it 'checkTheEmperorsBirthday', ->
    assert(holiday.isPublicHoliday(new Date(2015, 11, 23)) is true)
